require_relative("../db/sql_runner")
require_relative("house_assignment")

class House
  attr_reader :name, :id

  def initialize(options)
    @id = options['id'].to_i()
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO houses(
    name
    )
    VALUES(
      $1
      ) RETURNING *"
      values = [@name]
      house_data = SqlRunner.run(sql, values)
      @id = house_data.first()['id'].to_i
  end

  def house_assignment()
  sql = "SELECT * FROM students WHERE house_id = $1"
  values = [@id]
  results = SqlRunner.run(sql, values)
  students = results.map{ |student_hash| Student.new(student_hash)}
  return students
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|house|House.new(house)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql,values)
    result = House.new(house.first)
    return result
  end



end
