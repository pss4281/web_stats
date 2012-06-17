require 'spec_helper'

describe User do
  context 'Creating' do
    it "should have fist_name and last_name" do
      u = User.create()
      u.errors.messages.should include(:first_name, :last_name)
    end

    it "should create a new account if user isn't signing up to existing one" do
      lambda{ User.create(valid_user(account_name: "Microsoft")) }.should change(Account, :count)
    end

    it "should associate new user with an account" do
      u = User.create(valid_user(account_name: "Microsoft")) 
      u.reload
      u.account.should_not be_nil
    end


  end
end
