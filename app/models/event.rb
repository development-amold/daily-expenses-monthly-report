class Event < ApplicationRecord
	belongs_to :event_type

	has_many :billpaidusers,dependent: :destroy
	accepts_nested_attributes_for :billpaidusers,:allow_destroy => true

	validates :event_type_id,:event_date,:presence => true
	validates :total_amount,numericality: { greater_than_or_equal_to: 1 }
	validates :billpaidusers,:presence => true

	HUMANIZED_ATTRIBUTES = {:billpaidusers => "Users",:"billpaidusers.user" => "Users",:"billpaidusers.paid_amt" => "Paid Amount"}
	def self.human_attribute_name(attr, options={})
		puts "------ATTR----#{attr.inspect}----options-----#{options.inspect}-------"
	    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
	end

end
