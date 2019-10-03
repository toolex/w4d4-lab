require_relative("../models/house_assignment")
require_relative("../models/house")
require("pry")

gryffindor = House.new({
  "name" => "Gryffindor"
  })
  gryffindor.save()

  slytherin = House.new({
    "name" => "Slytherin"
    })
    slytherin.save()

  ravenclaw = House.new({
    "name" => "Ravenclaw"
    })
    ravenclaw.save()

  hufflepuff = House.new({
    "name" => "Hufflepuff"
    })
    hufflepuff.save()
  student1 = Student.new({
    "first_name" => "Harry",
    "last_name" => "Potter",
    "age" => 14,
    "house_id" => gryffindor.id
    })
    student1.save()

  student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "age" => 14,
    "house_id" => slytherin.id
    })
    student2.save()
