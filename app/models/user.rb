class User < ActiveRecord::Base
  has_many :color_reflections
  has_many :photo_reflections
  has_many :text_reflections
end
