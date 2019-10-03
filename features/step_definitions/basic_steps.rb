Given("the following products exist") do |table|
  table.hashes.each do |table|
    Category.find_or_create_by(name: table[:category])
    binding.pry
    
    FactoryBot.create(:product, table)
  end
end

When("I'm on the landing page") do
  visit root_path
end