#class EmailContent < ActiveRecord::Base
class EmailContent
   include ActiveModel::Validations
   include ActiveModel::Conversion  #will return key attributes

   attr_accessor :message
   validates :message, presence: true

   def initialize(attributes = {})
     attributes.each do |key,value|
       send("#{key}=", value)
     end
   end

   def persisted?
     false
   end
end
