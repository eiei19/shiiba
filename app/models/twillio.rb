class Twillio < ActiveRecord::Base
  belongs_to :account
  has_many :numbers
end
