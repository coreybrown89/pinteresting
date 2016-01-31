class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :password, :presence => true,
                     :on => :create,
                     :format => {:with => /\A.*(?=.{8,})(?=.*[a-z])(?=.*[A-Z]).*\Z/ }

 	has_many :pins   

 	validates :name, :presence => true           
end
