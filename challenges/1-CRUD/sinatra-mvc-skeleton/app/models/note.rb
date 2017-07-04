class Note < ActiveRecord::Base
  # Remember to create a migration!
     validates :title, :content, presence: true
    validates :quantity, numericality: {greater_than_or_equal_to: 0}

end
