module Commonvalidation
	extend ActiveSupport::Concern

	included do
		validates :name,:presence => true
	end

end