require 'spec_helper'

describe "General Pages" do

  subject { page }


  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: "Posts") }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "About page" do
  	before {visit about_path}

  	it {should have_selector('h2',   text: "About")}
  	it { should have_selector('title', text: full_title('About')) }

  end

  describe "Contact Page" do
  	before {visit contact_path}

  	it {should have_selector('h2',   text: "Contact")}
  	it { should have_selector('title', text: full_title('Contact')) }

  end
end