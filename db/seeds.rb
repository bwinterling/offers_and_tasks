# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'csv'
Offer.delete_all
CSV.foreach(Rails.root.join('db','offers.seed.csv').to_s, headers: true) do |row|
  Offer.create!(row.to_hash, without_protection: true)
end

Task.delete_all
CSV.foreach(Rails.root.join('db','tasks.seed.csv').to_s, headers: true) do |row|
  Task.create!(row.to_hash, without_protection: true)
end
