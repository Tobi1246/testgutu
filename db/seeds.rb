# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Answer.destroy_all
Question.destroy_all
TestUser.destroy_all
Test.destroy_all
Category.destroy_all
User.destroy_all

users = User.create!([{ firstname: 'Lion', lastname: 'Di', age: 18 },
                      { firstname: 'Tod', lastname: 'Darck', age: 48 },
                      { firstname: 'Joi', lastname: 'Brain', age: 27 }])
categorys = Category.create!([{ title: 'Ruby' },
                              { title: 'HTML' },
                              { title: 'SQL' }])
tests = Test.create!([{ title: 'Ruby', level: 1, author: users[0], category: categorys[0] },
                      { title: 'HTML', level: 2, author: users[1], category: categorys[1] },
                      { title: 'SQL', level: 2, author: users[2], category: categorys[2] }])
questions = Question.create!([{ title: 'What is object in Ruby', test: tests[0] },
                              { title: 'What is teg <li>', test: tests[1] },
                              { title: 'How to multi merge tables', test: tests[2] }])
Answer.create!(question: questions[0],
               body: "Object is the default root of all Ruby objects.
              Object inherits from BasicObject which allows creating alternate object hierarchies.
              Methods on Object are available to all classes unless explicitly overridden.")
Answer.create!(correct: false, question: questions[0], body: 'Class')
Answer.create!(correct: false, question: questions[0], body: 'All except Class')
Answer.create!(question: questions[1], body: 'List item')
Answer.create!(correct: false, question: questions[1], body: 'link')
Answer.create!(correct: false, question: questions[1], body: 'Create sort list')
Answer.create!(question: questions[2], body: 'Usege JOIN  after constructions JOIN ON')
Answer.create!(correct: false, question: questions[2], body: 'One usege JOIN and listing tables')
Answer.create!(correct: false, question: questions[2], body: 'INNER JOIN')
TestUser.create!([{ test: tests[0], user: users[0] },
                  { test: tests[1], user: users[1] },
                  { test: tests[2], user: users[1] },
                  { test: tests[2], user: users[2] }])
