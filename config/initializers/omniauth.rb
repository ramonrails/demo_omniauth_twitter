Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'ShFoC0cK1SWVplMXxEFjNpPSR', 'cbPs2LPlRFWuQu0luabA5yX6Y3O5XpuuKI2JycSXhnFkVCVFIf', {
    secure_image_url: 'true',
    image_size: 'original',
    authorize_params: {
      force_login: 'true',
      lang: 'en'
    }
  }
end
