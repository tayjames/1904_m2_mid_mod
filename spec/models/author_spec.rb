require "rails_helper"

RSpec.describe Author do
  describe "Relationships" do
    it { should have_many :author_books }
    it { should have_many(:books).through(:author_books)}
  end

  # describe "Validations" do
  #   it {should validate_presence_of :name}
  # end
end
