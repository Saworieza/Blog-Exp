class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :profile_pic, styles: {thumbnail: "80x80>"} #> is used to adjust image according to scale...say 300x400 to a propers scale
end
