require "rails_helper"

RSpec.describe Book do
  describe "Relationships" do
    it { should have_many :author_books}
    it { should have_many(:authors).through(:author_books)}
  end

  # describe "Validations" do
  #   it {should validate_presence_of :title}
  #   it {should validate_presence_of :pages}
  #   it {should validate_presence_of :publication}
  # end
end
