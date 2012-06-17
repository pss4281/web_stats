require 'spec_helper'

describe User do
 context 'Creating' do
    it "should have fist_name and last_name" do
      u = Account.create()
      u.errors.messages.should include(:name)
    end

  end

end
