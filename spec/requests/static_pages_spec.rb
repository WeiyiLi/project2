require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Blog" do
    before { visit blog_path }

    it { should have_content('Project2') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Blog') }
  end

  describe "FAQ" do
    before { visit faq_path }

    it { should have_content('FAQ') }
    it { should have_title(full_title('FAQ')) }
  end

  describe "About" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
end
