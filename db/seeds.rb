# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ToDo.delete_all

ToDo.create(description: 'Do X', completed: false, project_card_id: 1, date: '3-27', starttime: '15:00', endtime: '17:00')
ToDo.create(description: 'Do Y', completed: false, project_card_id: 1, date: '3-28', starttime: '12:00', endtime: '13:30')