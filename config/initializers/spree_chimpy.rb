Spree::Chimpy.config do |config|
  # your API key as provided by MailChimp
  config.key = '8d2a0a71f1138c45901e1932e6b73547-us9'

  # extra api options for the Mailchimp gem
  # config.api_options = { throws_exceptions: false, timeout: 3600 }

  # name of your list, defaults to "Members"
  config.list_name = 'TeaClix Newsletter'

  # Allow users to be subscribed by default. Defaults to false
  # If you enable this option, it's strongly advised that your enable
  # double_opt_in as well. Abusing this may cause Mailchimp to suspend your account.
  # config.subscribed_by_default = false

  # When double-opt is enabled, the user will receive an email
  # asking to confirm their subscription. Defaults to false
  # config.double_opt_in = false

  # id of your store. max 10 letters. defaults to "spree"
  config.store_id = 'teaclix'

  # define a list of merge vars:
  # - key: a unique name that mail chimp uses. 10 letters max
  # - value: the name of any method on the user class.
  # default is {'EMAIL' => :email}
  # config.merge_vars = {
  #   'EMAIL' => :email,
  #   'HAIRCOLOR' => :hair_color
  # }
end
