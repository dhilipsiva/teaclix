# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.use_s3 = true
  config.s3_bucket = 'teaclix-temp'
  config.s3_access_key = "AKIAIBD47FUYNMC6Z3NQ"
  config.s3_secret = "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"

end

Spree.user_class = "Spree::User"

Paperclip.interpolates(:s3_eu_url) do |attachment, style|
  "#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end
