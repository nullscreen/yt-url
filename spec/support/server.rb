RSpec.configure do |config|
  config.before :all, server: true do
    Yt.configuration.api_key = ENV['YT_SERVER_API_KEY']
    Yt.configuration.client_id = ''
    Yt.configuration.client_secret = ''
  end

  $existing_channel_id   = 'UCxO1tY8h1AhOz0T4ENwmpow'

  $existing_video_id     = 'gknzFj_0vvY'
  $unknown_video_id      = 'invalid-id-'

  $existing_playlist_id  = 'PL-LeTutc9GRKD3yBDhnRF_yE8UTaQI5Jf'
  $unknown_playlist_id   = 'invalid-id-'

  $unknown_text          = 'not-really-anything---'
end
