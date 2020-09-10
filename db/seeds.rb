require_relative '../config/environment'
require_relative '../app/models/company.rb'
require_relative '../app/models/client.rb'
require_relative '../app/models/project.rb'

Project.destroy_all
Company.destroy_all
Client.destroy_all

co1 = Company.create(name: "JJ Construction", price_range: "$$$", rating: 5)
co2 = Company.create(name: "Bay Area Construction", price_range: "$$", rating: 3)

c1 = Client.create(name: "Will Gonzalez", job_description: "Paint Kitchen Cabinets", budget: 5000)
c2 = Client.create(name: "Patrick White", job_description: "Kitchen and Bathroom Remodel", budget: 70000)
c3 = Client.create(name: "Steve Brown", job_description: "Bathroom Remodel", budget: 15000)
c4 = Client.create(name: "Sue Witier", job_description: "New Deck", budget: 12000)
c5 = Client.create(name: "Julia Williams", job_description: "New Water Heater", budget: 1800)

p1 = Project.create(company_id: co1.id, client_id: c1.id)
p2 = Project.create(company_id: co1.id, client_id: c2.id)
p3 = Project.create(company_id: co2.id, client_id: c3.id)
p4 = Project.create(company_id: co2.id, client_id: c4.id)
p5 = Project.create(company_id: co1.id, client_id: c5.id)
p6 = Project.create(company_id: co1.id, client_id: c1.id)
#binding.pry
puts "DONE"

