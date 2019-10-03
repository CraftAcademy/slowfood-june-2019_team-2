Given("the following product exist") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:product, table)
  end
end

Given("following user exist") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:user, table)
  end
end

Given("I am on the {string} page") do |string|
  visit new_user_session_path
end

Given("I click {string} button") do |string|
 click_on string
end

When("I'm on the landing page") do
  visit root_path
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in string, with: string2  
end

Then("I should be on the {string} page") do |string|
  visit new_user_registration_path
end