require "rails_helper"

RSpec.describe "user sees all books", type: :feature do
  describe 'user visits /books/1' do
    it "displays book correctly" do
      astronaut_1 = Astronaut.create(Name: "Neil Armstrong", Age: 37, Job: "Commander")


      visit astronauts_path(astronaut_1)

        expect(page).to have_content("Name: #{astronaut_1.name}")
        expect(page).to have_content("Age: #{astronaut_1.number_of_pages}")
        expect(page).to have_content("Job: #{astronaut_1.year_published}")
    end
  end


end
#
# User Story 2 of 4
#
# As a visitor,
# When I visit '/astronauts'
# I see the average age of all astronauts.
#
# (e.g. "Average Age: 34")
