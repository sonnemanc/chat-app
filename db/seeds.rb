# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Doctor.delete_all
Assistant.delete_all
Patient.delete_all

doctor = Doctor.create(first_name: 'bob', last_name: 'smith', email: 'best_doc', password: 'password')
doctor2 = Doctor.create(first_name: 'todd', last_name: 'ingrahm', email: 'bester_doc', password: 'password')
assistant = Assistant.create(first_name: 'ted', last_name: 'anderson', email: 'best_MA', password: 'password')
assistant2 = Assistant.create(first_name: 'roger', last_name: 'holland', email: 'bester_MA', password: 'password')
patient = Patient.create(first_name: 'mary', last_name: 'sue', email: 'best_patient', password: 'password')
patient2 = Patient.create(first_name: 'helen', last_name: 'gunders', email: 'bester_patient', password: 'password')

subscriber_1 = Subscriber.create(:subscribable => doctor)
subscriber_2 = Subscriber.create(:subscribable => assistant)
subscriber_3 = Subscriber.create(:subscribable => patient)
subscriber_4 = Subscriber.create(:subscribable => patient2)
subscriber_5 = Subscriber.create(:subscribable => doctor2)
subscriber_6 = Subscriber.create(:subscribable => assistant2)

