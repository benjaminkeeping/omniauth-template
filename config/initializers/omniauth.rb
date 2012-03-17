LOGIN_PROVIDERS = [:twitter, :facebook, :google_oauth2].freeze

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'key', 'secret'
  provider :facebook, 'key', 'secret'
  provider :google_oauth2, 'key', 'secret'
end
