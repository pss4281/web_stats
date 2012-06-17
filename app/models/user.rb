class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :first_name, :last_name, :email, 
                  :password, :password_confirmation, :account_name,
                  :account
  
  # Setup accessible (or protected) attributes for your model
  attr_accessor :account_name

  # attr_accessible :title, :body
  has_one :owned_account, :foreign_key => :owner_id, class_name: 'Account'
  belongs_to :account
  validates_associated :owned_account, :on => :create

  validates :first_name, :last_name, presence: true
  before_save :update_full_name
  after_create :setup_account

  private

  def update_full_name
    self.full_name = [self.first_name, self.last_name].join(' ')
  end
  
  def setup_account
    acc = Account.find_or_create_by_name_and_owner_id(self.account_name, self.id) unless self.account_name.blank?
    self.update_attributes(account: acc)
  end

end
