require 'udid_accessor'

class ColorReflection < ActiveRecord::Base
  belongs_to :user
  has_one :suggestion
  
  include UDIDAccessor
end
