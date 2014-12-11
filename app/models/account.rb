class Account < ActiveRecord::Base
	has_many :account_entries
end
