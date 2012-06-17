class Account < ActiveRecord::Base
  attr_accessible :name, :owner_id, :owner
  belongs_to :owner, :foreign_key => :owner_id, :class_name => 'User'
  has_many :websites, :dependent => :destroy
  validates :name, presence: true, uniqueness: true
end
