# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mod = Mod.create(name: 'Vanilla')
Role.create(name: 'Shapeshifter', mod_id: mod.id, team_name: 'Imposter', team_type: 'negative')
Role.create(name: 'Engineer', mod_id: mod.id, team_name: 'Crewmate', team_type: 'positive')
Role.create(name: 'Guardian Angel', mod_id: mod.id, team_name: 'Crewmate', team_type: 'positive')
Role.create(name: 'Scientist', mod_id: mod.id, team_name: 'Crewmate', team_type: 'positive')

