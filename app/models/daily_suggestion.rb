require 'udid_accessor'

class DailySuggestion < ActiveRecord::Base
  belongs_to :user
  has_one :suggestion
  
  include UDIDAccessor
end
