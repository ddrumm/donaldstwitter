require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Donalds Fancy Twitterclone App "}

  describe "Home page" do

    it "should have the content 'Donalds Twitterclone'" do
      visit root_path
      expect(page).to have_content('Donalds Fancy Twitterclone App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Donalds Fancy Twitterclone App")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contant'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the right title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end