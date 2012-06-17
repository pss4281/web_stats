class Request < ActiveRecord::Base
  belongs_to :website

  attr_accessible :source_ip, :browser, :country, :os,
    :charset, :language, :user_agent

end
