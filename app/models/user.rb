# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  balance    :decimal(, )      default("50000")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
	has_many :transfers
end
