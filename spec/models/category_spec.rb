require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Database table' do
    it {is_expected.to have_db_column :name}
  end

  describe 'Validates attributes' do
    it {is_expected.to validate_presence_of :name}
  end

  describe 'Associations' do
    it {is_expected.to have_many :products}
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:category)).to be_valid
    end
  end
end
