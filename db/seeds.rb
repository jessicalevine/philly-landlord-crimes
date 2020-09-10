# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

deliquency_path = File.expand_path("./data/real_estate_tax_delinquencies.sample.csv")

CSV.foreach(deliquency_path, headers: true) do |row|
   RealEstateTaxDelinquencies.create(row.to_hash.except("return_mail"))
end
