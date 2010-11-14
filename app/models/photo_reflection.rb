require 'udid_accessor'

class PhotoReflection < ActiveRecord::Base
  belongs_to :user
  has_one :suggestion

  validates_format_of :content_type, :with => /^image/,
                      :message             => "--- you can only upload pictures"
  
  include UDIDAccessor

  def uploaded_picture=(picture_field)
    self.name         = base_part_of(picture_field.original_filename)
    self.content_type = picture_field.content_type.chomp
    logger.debug "PICTURE FIELD TYPE IS "+self.content_type
    self.data         = picture_field.read
  end

  def base_part_of(file_name)
    File.basename(file_name).gsub(/[^\w._-]/, '')
  end

end
