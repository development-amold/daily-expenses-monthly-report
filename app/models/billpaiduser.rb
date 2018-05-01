class Billpaiduser < ApplicationRecord
	belongs_to :event,optional: true
	belongs_to :user

	validates :paid_amt,numericality: { greater_than_or_equal_to: 1 }

end