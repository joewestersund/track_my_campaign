TrackMyCampaign::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In development mode, you might add this line to config/environments/development.rb):
  # from https://github.com/thoughtbot/paperclip
  Paperclip.options[:command_path] = "/opt/local/bin/"

  # config/environments/production.rb
  # from https://devcenter.heroku.com/articles/paperclip-s3
  # more on S3 http://docs.aws.amazon.com/IAM/latest/UserGuide/ExampleIAMPolicies.html#iampolicy-example-s3
  config.paperclip_defaults = {
      :storage => :s3,
      :s3_credentials => {
          :bucket => 'track-my-campaign-contact-photos', #ENV['S3_BUCKET_NAME'],  # track-my-campaign-contact-photos
          :access_key_id => 'AKIAI5KWQMAE5PEZPQCA',      #ENV['AWS_ACCESS_KEY_ID'],    # AKIAI5KWQMAE5PEZPQCA
          :secret_access_key => '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'   # ENV['AWS_SECRET_ACCESS_KEY']   # bcONhxQQvJZ9E6sYPrld1OwfFIMyZh++OMhG0Pm1
      }
  }

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  #for development only, pop up the email in the browser for testing.
  config.action_mailer.delivery_method = :letter_opener

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end
