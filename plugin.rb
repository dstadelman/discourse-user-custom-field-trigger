# name: user-custom-field-trigger
# about: Adds a DiscourseEvent trigger to the UserCustomField on after_save
# version: 1
# authors: Daniel Stadelman
# url: https://github.com/ruffbytes/discourse-user-custom-field-trigger


after_initialize do
  UserCustomField.class_eval do
    after_save do
      DiscourseEvent.trigger(:user_custom_field_changed, self)
    end
  end  
end
