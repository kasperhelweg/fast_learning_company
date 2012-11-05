require 'spec_helper'

describe User do
  before { @user = User.new( 
                            name: "Our test user", email: "user@testsuite.dk", 
                            password: "foobar", password_confirmation: "foobar" ) }
  
  subject { @user }
  
  # Basic attributes

  it { should respond_to( :name ) }
  it { should respond_to( :email ) }
  it { should respond_to( :password_digest ) }
  it { should respond_to( :password ) }
  it { should respond_to( :password_confirmation ) }
  it { should respond_to( :authenticate ) }

  it { should be_valid }

  # Basic validations

  describe "when name is not present" do
    before { @user.name = "" }
    it { should_not be_valid }
  end
  
  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = "" }
    it { should_not be_valid }
  end 

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end      
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end      
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.type = "User"
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when password is not present" do
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end
  
  describe "when password is set and confirmation is nil" do
    before { @user.password = "foobar" }
    before { @user.password_confirmation = nil }
    it { should_not be_valid }
  end

  describe "when password != confirmed" do
    before { @user.password = "foobar", @user.password_confirmation = "foobarr" }
    it { should_not be_valid }
  end
  
  describe "when password is too short" do
    before { @user.password = "foo", @user.password_confirmation = "foo" }
    it { should_not be_valid }
  end
    
  describe "return value of authenticate method" do
    before { @user.type = 'User' }
    before { @user.save }
    let(:found_user) { User.find_by_email(@user.email) }
    
    describe "with valid password" do
      it { should == found_user.authenticate(@user.password) }
    end
    
    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }
      
      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
  end
  
  describe "when updating user" do
    before { @user.type = 'User' }
    before { @user.save }
    let(:found_user) { User.find_by_email(@user.email) }
    
    describe "updating basic info" do
      before { @user.name = 'New username' }
      it { should be_valid }
    end
    
    describe "updating password" do
      before { @user.password = 'new_password' }
      it { should_not be_valid }
    end
  end
end
