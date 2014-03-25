# == Schema Information
#
# Table name: sales
#
#  id          :integer          not null, primary key
#  start_time  :time
#  finish_time :time
#  date        :date
#  location    :string(255)
#  price_range :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Sale <ActiveRecord::Base
    attr_accessible :start_time, :finish_time, :date, :location, :price_range
	has_many :items
end

