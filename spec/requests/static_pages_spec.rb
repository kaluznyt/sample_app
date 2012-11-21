require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title("Help")) }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title("About")) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title("Contact")) }
  end


  #it "should have the h1 'Sample App'" do
  # page.should have_selector('h1', text: 'Sample App')
  #end

  #it "should have the base title" do
  # page.should have_selector('title',
  #                                text: "#{base_title}")
  #    end

  #   it "should not have a custom page title" do
  #    page.should_not have_selector('title', text: '| Home')
  # end
  #describe "Help page" do
  #  it "should have the h1 'Help'" do
  #    visit help_path
  #    page.should have_selector('h1', text: 'Help')
  #  end
  #
  #  it "should have the title 'Help'" do
  #    visit help_path
  #    page.should have_selector('title',
  #                              text: "#{base_title} | Help")
  #  end
  #end
  #
  #describe "About page" do
  #  it "should have the h1 'About Us'" do
  #    visit about_path
  #    page.should have_selector('h1', text: 'About Us')
  #  end
  #
  #  it "should have the title 'About Us'" do
  #    visit about_path
  #    page.should have_selector('title',
  #                              text: "#{base_title} | About Us")
  #  end
  #end
  #
  #describe "Contact page" do
  #  it "should have the h1 'Contact'" do
  #    visit contact_path
  #    page.should have_selector('h1', text: 'Contact')
  #  end
  #
  #  it "should have the title 'Contact'" do
  #    visit contact_path
  #    page.should have_selector('title',
  #                              text: "#{base_title} | Contact")
  #  end
  #end
end