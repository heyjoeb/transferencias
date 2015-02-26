# == Schema Information
#
# Table name: transfers
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  amount      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Transfer < ActiveRecord::Base
	belongs_to :sender, class_name: :User
	belongs_to :receiver, class_name: :User
	before_destroy :prevent_destroy
	before_update :prevent_update	
	after_create :update_balance

	private 
	def prevent_destroy   
		puts "You can't delete a transfer operation."
		return false   
	end

	def prevent_update
		puts "You can't update a transfer operation."
		return false
	end

	def update_balance
		receiver.balance = amount + receiver.balance
		sender.balance = sender.balance - amount
		sender.save
	    receiver.save
		puts "The balance of both users has been updated."	
	end

end
