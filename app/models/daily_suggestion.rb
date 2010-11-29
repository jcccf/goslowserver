require 'udid_accessor'

class DailySuggestion < ActiveRecord::Base
  belongs_to :user
  has_one :suggestion
  
  include UDIDAccessor
  
  def theme
    suser = User.find_by_id(self.user_id)
    if suser
      suser.udid
    else
      nil
    end
  end
  
  def theme=(theme_field)
    sug = Suggestion.find_by_name(theme_field)
    if sug && self.suggestion_id == nil
      logger.info "Getting Suggestion"
      self.suggestion_id = sug.id
    end
  end
  
  def suggestion_id=(suggestion_id)
    if self.suggestion_id == nil
      write_attribute(:suggestion_id,suggestion_id)
    end
  end
end
