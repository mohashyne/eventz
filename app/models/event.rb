class Event < ApplicationRecord
    
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
