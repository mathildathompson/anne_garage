# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email_address   :string(255)
#  street_number   :integer
#  street_name     :string(255)
#  suburb          :string(255)
#  state           :string(255)
#  post_code       :integer
#  phone_number    :integer
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class User <ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email_address, :street_number, :street_name, :suburb, :state, :post_code, :phone_number, :password, :password_confirmation
    has_many :sales

    has_secure_password
  	validates :first_name, :last_name, :presence => true, :uniqueness => true, :length => { :minimum => 2 }

    geocoded_by :address
    after_validation :geocode

  	def name
  		"#{first_name} #{last_name}"
  	end

  	def address
  		"#{street_number} #{street_name} #{suburb} #{state} #{post_code}"
  	end
end

