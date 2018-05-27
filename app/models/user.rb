class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :fullname, presence:true, length: { maximum:50 }
  
  # Modèle profil avec paperclip =>https://github.com/thoughtbot/paperclip/
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/dbz.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
end
