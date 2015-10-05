# name: user-custom-field-trigger
# about: Adds a DiscourseEvent trigger to the UserCustomField on after_save
# version: 1
# authors: Daniel Stadelman
# url: https://github.com/ruffbytes/discourse-user-custom-field-trigger


after_initialize do
  Rails.logger.error("User custom field: Initialize user custom field trigger")
  
  UserCustomField.class_eval do
    after_save do
      Rails.logger.error("User custom field: after save")
      DiscourseEvent.trigger(:user_custom_field_changed, self.user_id, self.name, self.value)
    end
  end  
end
