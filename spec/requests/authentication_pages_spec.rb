# encoding: UTF-8

require 'spec_helper'
require 'application_helper'

describe "Authentication" do
  subject { page }

  describe "signin page" do
    before { visit signin_path }
    
    it { should have_selector('title', text: 'Log på') }
  end

  describe "signin" do
    before { visit signin_path }
    
    describe "with invalid information" do
      before { click_button "Log på" }
      
      it { should have_selector('title', text: 'Log på') }
      it { should have_selector('div.alert.alert-error', text: 'Forkert') }
    end
    
    #describe "admin" do
    #  describe "with valid information" do
    #    let(:user) { FactoryGirl.create(:admin) }
    #    before do
    #      sign_in user
    #    end
        
    #    it { should have_selector('title', text: user.name) }
    #    it { should have_link('Profil', href: admin_path( user )) }
    #    it { should have_link('Log af', href: signout_path) }
    #    it { should have_link('Indstillinger', href: edit_admin_path( user )) }
    #    it { should_not have_link('Log på', href: signin_path) }
    #  end
    #end
    
    describe "company" do
      describe "with valid information" do
        let(:user) { FactoryGirl.create(:company) }
        before do
          sign_in user
        end
        
        it { should have_selector('title', text: user.name) }
        it { should have_link('Profil', href: user_path( user )) }
        it { should have_link('Log af', href: signout_path) }
        it { should have_link('Indstillinger', href: edit_user_path( user )) }
        it { should_not have_link('Log på', href: signin_path) }
        
        #it { should_not have_link('Opret medarbejder', href: new_company_employee_path( user )) }
      end
    end
    
    describe "learner" do
      describe "with valid information" do
        
        let(:company) { FactoryGirl.create(:company) }
        let!(:user) { FactoryGirl.create(:learner, company: company) }
        
        before do
          sign_in user
        end
        
        it { should have_selector('title', text: user.name) }
        it { should have_link('Profil', href: user_path( user )) }
        it { should have_link('Log af', href: signout_path) }
        it { should have_link('Indstillinger', href: edit_user_path( user )) }
        it { should_not have_link('Log på', href: signin_path) }
      end
    end
  end 
end
