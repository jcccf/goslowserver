require 'udid_accessor'

class TextReflection < ActiveRecord::Base
  belongs_to :user
  has_one :suggestion
  
  include UDIDAccessor
end
