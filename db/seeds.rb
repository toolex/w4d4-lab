require_relative("../models/house_assignment")

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "age" => 14,
  "house" => "Gryffindor"
  }).save()


  student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "age" => 14,
    "house" => "Slytherin"
    }).save()
