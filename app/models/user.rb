class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :create_role

  def role?(r)
    role.include? r.to_s
  end

  private
    def create_role
      self.role = 'Registered'
    end
end
