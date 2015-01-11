class Account < ActiveRecord::Base
	has_many :account_entries

	validates :name, presence: true, 
				length: {in: 1..70, message: "Please use a name that is less than 70 characters and has not already been used."},
				uniqueness: true

	validate :your_name_is_not_silly

	def your_name_is_not_silly
		if  name.include?("silly")
		 	errors.add(:name, " is silly")
		else
		puts "Your name is not silly"
		end
	end
end
