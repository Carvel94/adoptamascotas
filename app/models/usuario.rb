class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: { message: "Debe colocar su nombre de usuario" },
                     uniqueness: {message: "El nombre de usuario se encuentra registrado"},
                     length: {in: 6..20, 
                              too_short: "Debe tener al menos 6 caracteres", 
                              too_long: "debe tener máximo 20 caracteres"},
                      format: {with: /([A-Za-z0-9\-\_\*]+)/, message: "Solo puedes colocar letras, números,guiones y/o *"}#, unless: :saltar_validacion_username

def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    
    if login = conditions.delete(:login)
      

        where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first

      elsif conditions.has_key?(:username) || conditions.has_key?(:email)

        where(conditions.to_hash).first
      end
    end
end
