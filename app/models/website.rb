class Website < ActiveRecord::Base
  attr_accessible :name, :uri, :account, :account_id
  belongs_to :account
  has_many :requests, :dependent => :destroy
  validates :name, :uri, :account_id, presence: true
  validates :name, uniqueness: { scope: [:account_id] }
  validates :uri, :format => {:with =>  /^((http|https):\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix}
end
