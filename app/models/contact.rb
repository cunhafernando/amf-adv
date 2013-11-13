class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :message
  
  validates :name, :length => {:in => 2..50}
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 
  validates :phone, :length => {:in => 2..50}   
  validates :message, :length => {:in => 10..1000}
end

  
