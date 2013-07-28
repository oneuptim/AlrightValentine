class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :username, :email, :password, :password_confirmation, :gender, :age, :genderpreferences, :location, :hobbies, :about

  has_many :photos
  has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id", :dependent => :destroy
  has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id", :dependent => :destroy

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_presence_of :email
  validates_uniqueness_of :email

  validates_presence_of :gender
  validates_presence_of :age
  validates_presence_of :genderpreferences
  validates_presence_of :location
  validates_presence_of :hobbies
  validates_presence_of :about
end
