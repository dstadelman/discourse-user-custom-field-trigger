discourse-user-custom-field-trigger
=======================

Plugin for [Discourse](http://discourse.org) to adds a DiscourseEvent trigger to the UserCustomField on after_save.

Can be used with [Discourse-Webhooks](https://github.com/rcfox/Discourse-Webhooks) if the `user_custom_field_changed` event is set in the `webhooks` settings.

**Make sure you restart Discourse after modifying the `webhooks` settings!**

Installation
============

* Add the plugin's repo url to your container's `app.yml` file

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/ruffbytes/discourse-user-custom-field-trigger.git
```

* Rebuild the container

```
cd /var/discourse
./launcher rebuild app
```
