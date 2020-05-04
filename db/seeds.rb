# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Configuration.create(key:"enable_tax",value: "0")
Configuration.create(key:"tax",value: "0")
Configuration.create(key:"enable_discount", value:"0")
Configuration.create(key:"discount", value:"0")
Configuration.create(key: "enable_other_charges",value: "0")
Configuration.create(key: "other_charges",value: "0")