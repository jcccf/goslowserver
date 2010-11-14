module UDIDAccessor
  def udid
    suser = User.find_by_id(self.user_id)
    if suser
      suser.udid
    else
      nil
    end
  end
  
  def udid=(udid_field)
    suser = User.find_by_udid(udid_field)
    if suser && self.user_id == nil
      logger.info "Getting SUperUser"
      self.user_id = suser.id
    elsif self.user_id == nil
      logger.info "Getting new user"
      user = User.new(:udid => udid_field)
      user.save
      self.user_id = user.id
    end
  end
  
  def user_id=(user_id)
    if self.user_id == nil
      write_attribute(:user_id,user_id)
    end
  end
end