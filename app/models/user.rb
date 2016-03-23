class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages

  def get_age
  	(DateTime.now.to_i - self.birthday.to_datetime.to_i) / (60*60*24*365)
  end

end
