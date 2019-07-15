require 'rails_helper'

# As a user,
# When I visit the Book Index Page,
#   Then I see each author's name is a link
# When I click the link
#   Then I am taken to an Author Show Page where I see the author with that id including the author's:
#   - name
#   - the title of each book they have written
#   - the average number of pages for all of their books

RSpec.describe 'Author Show Page' do
  describe 'As a User' do
    before :each do
      @murakami = Author.create!(name: "Haruki Murakami")

      @hard_boiled = Book.create!(title: "Hard Boiled Wonderland and the End of the World", pages: 400, publication: 1991)
      @sheep_chase = Book.create!(title: "A Wild Sheep Chase", pages: 300, publication: 1989)
    end

  describe "When I visit the Book Index Page"
    it "I see each authors name is a link" do
      visit '/books'

      within "book-#{@hard_boiled.id}" do
        expect(page).to have_link(@murakami.name)
      end
    end

    describe "When I click the link" do
      it "I am taken to an Author Show Page where I see the author with that id including the author's: name, the title of each book, the average number of pages" do
        visit '/books'
        click_link(@murakami.name)

        expect(current_path).to eq("/authors/#{@murakami.id}")
        expect(page).to have_content(@murakami.name)
        expect(page).to have_content(@murakami.books)
        expect(page).to have_content(@murakami.average_pages)

        # within "book-#{@hard_boiled}"
      end
    end
  end
end
