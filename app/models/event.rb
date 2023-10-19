class Event < ApplicationRecord
   validates :name, :location, presence: true

   validates  :description, length: { minimum: 25 }

   validates :price, numericality: { greater_than_or_equal_to: 0 }

   validates :capacity, numericality:
                       { only_integer: true, greater_than: 0 }

   validates  :image_file_name, format:  {
      with: /\w+\.(jpg|png)\z/i,
      message:  "must be a JPG or PNG"
   }

    
   # this is a ruby thing that defines this method on the event class
   def self.upcoming
      # because this is a  class method, we don't need to use
      # Event.****.order("starts_at")... , only the query
      where("starts_at >= ?", Time.now).order("starts_at")
   end

   def free?
    price.blank? || price.zero?
   end 

end
