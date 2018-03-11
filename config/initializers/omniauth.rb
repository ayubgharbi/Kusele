Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '2130007637227889', 'edf6f11fe2dd24446e5ce0910a3ea8cd'
end
