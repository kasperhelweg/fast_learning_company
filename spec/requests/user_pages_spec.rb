# encoding: UTF-8

require 'spec_helper'

describe "UserPages" do
 
  subject { page }
  

  describe "edit" do     
    describe "learner" do
      let(:company) { FactoryGirl.create(:company) }
      let!(:user) { FactoryGirl.create(:learner, company: company) }
      
      before do
        sign_in user
        visit edit_user_path( user )
      end      
      
      describe "page" do      
        it { should have_selector('title', text: "Rediger profil") }
        it { should have_selector('h4', text: "Grundlæggende oplysninger") }
        it { should have_selector('h4', text: "Skift password") }
        #  it { should have_link('change', href: 'http://gravatar.com/emails') }
      end
      
      describe "user updated - no password" do
        before { click_button "Gem ændringer" }          
        it { should have_content('profil opdateret') }
      end
      
      describe "when password is changed" do
        before { fill_in "Password",    with: "123456" }  
        before { click_button "Gem ændringer" }  
        
        it { should have_content('Password stemmer ikke overens med bekræftelse') }
      end      
    end

    describe "company" do
      let(:user) { FactoryGirl.create(:company) }
      
      before do
        sign_in user
        visit edit_user_path( user )
      end      
      
      describe "page" do      
        it { should have_selector('title', text: "Rediger profil") }
        it { should have_selector('h4', text: "Grundlæggende oplysninger") }
        it { should have_selector('h4', text: "Skift password") }
        #  it { should have_link('change', href: 'http://gravatar.com/emails') }
      end
     
      describe "user updated - no password" do
        before { click_button "Gem ændringer" }          
        it { should have_content('profil opdateret') }
      end

      describe "when password is changed" do
        before { fill_in "Password",    with: "123456" }  
        before { click_button "Gem ændringer" }  
        
        it { should have_content('Password stemmer ikke overens med bekræftelse') }
      end      
     end
    
    
    
  end  
end
