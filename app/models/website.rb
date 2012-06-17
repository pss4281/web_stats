class Website < ActiveRecord::Base
  attr_accessible :name, :uri 
  belongs_to :account
  has_many :requests, :dependent => :destroy
  validates :name, :uri, presence: true
  validates :name, uniqueness: { scope: [:account_id] }
end
