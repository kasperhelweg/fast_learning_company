# encoding: UTF-8

require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  describe "Homepage" do
    before { visit root_path }
  
    it { should have_selector( 'title', text: "Fastlearning Company | Forside" ) }
    it { should have_selector( 'h1', text: "Forside" ) }
  end

  describe "Calendar" do
    before { visit calendar_path }
  
    it { should have_selector( 'title', text: "Fastlearning Company | Kalender" ) }
    it { should have_selector( 'h1', text: "Kalender" ) }
  end

  describe "About" do
    before { visit about_path }
  
    it { should have_selector( 'title', text: "Fastlearning Company | Om Fastlearning Company" ) }
    it { should have_selector( 'h1', text: "Om Fastlearning Company" ) }
  end

  describe "Terms" do
    before { visit terms_path }
  
    it { should have_selector( 'title', text: "Fastlearning Company | Vilkår" ) }
    it { should have_selector( 'h1', text: "Vilkår" ) }
  end

  describe "Contact" do
    before { visit contact_path }
  
    it { should have_selector( 'title', text: "Fastlearning Company | Kontakt" ) }
    it { should have_selector( 'h1', text: "Kontakt" ) }
  end

end
