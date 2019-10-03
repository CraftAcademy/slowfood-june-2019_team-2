Given("the following products exist") do |table|
  table.hashes.each do |table|
    category = Category.find_or_create_by(name: table[:category])
    table.except!("category")
    
    FactoryBot.create(:product, table.merge(category: category))
  end
end

When("I'm on the landing page") do
  visit root_path
end