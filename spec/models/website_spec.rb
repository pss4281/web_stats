require 'spec_helper'

describe Website do
  context "creating" do
    it "should save website with valid uri and name" do
      lambda{ Website.create(account_id: 1, name: "Eurodollar", uri: "http://eurodollar.com") }.should change(Website, :count)
      lambda{ Website.create(account_id: 1, name: "Eurodollar", uri: "Eurodollar.com") }.should_not change(Website, :count)
    end
  end
end
