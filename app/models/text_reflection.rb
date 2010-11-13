class TextReflection < ActiveRecord::Base
  belongs_to :user
  has_one :suggestion
end
