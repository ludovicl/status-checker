# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.find_or_create_by!(url: 'https://developers.facebook.com/status/',
                           text_on_page: 'La plate-forme Facebook est opérationnelle',
                           number_of_occurrences: 1,
                           load_waiting_sec: 0 )

Service.find_or_create_by!(url: 'https://status.algolia.com',
                           text_on_page: 'All services are online',
                           number_of_occurrences: 1,
                           load_waiting_sec: 7 )

Service.find_or_create_by!(url: 'https://status.lithium.com',
                           text_on_page: 'Operational',
                           number_of_occurrences: 4,
                           load_waiting_sec: 1 )

Service.find_or_create_by!(url: 'https://status.rubygems.org',
                           text_on_page: 'All Systems Operational',
                           number_of_occurrences: 1,
                           load_waiting_sec: 0 )