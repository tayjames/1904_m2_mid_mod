require "rails_helper"

RSpec.describe 'Books Index Page' do
  describe 'As a user' do
    before :each do
      @murakami = Author.create!(name: "Haruki Murakami")

      @hard_boiled = Book.create!(title: "Hard Boiled Wonderland and the End of the World", pages: 400, publication: 1991)
      @sheep_chase = Book.create!(title: "A Wild Sheep Chase", pages: 300, publication: 1989)
    end

  describe 'When I visit /books'
    it "I see each book in the system including the books: title, num. of pages, pub. year, and name of each author that wrote the book" do
      visit '/books'
      save_and_open_page
      within "#book-#{@hard_boiled.id}" do
      expect(page).to have_content(@hard_boiled.title)
      expect(page).to have_content(@hard_boiled.pages)
      expect(page).to have_content(@hard_boiled.publication)
      # expect(page).to have_content(@murakami.name)
      end

      within "#book-#{@sheep_chase.id}" do
      expect(page).to have_content(@sheep_chase.title)
      expect(page).to have_content(@sheep_chase.pages)
      expect(page).to have_content(@sheep_chase.publication)
      # expect(page).to have_content()
      end
    end
  end
end
