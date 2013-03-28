module CarrierWave
  module RMagick
    def quality(percentage)
      manipulate! do |img|
        img.write(current_path){ self.quality = percentage } unless img.quality == percentage
        img = yield(img) if block_given?
        img
      end
    end
  end
end

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'aws',
    aws_access_key_id:      ENV["AWS_ACCESS_KEY_ID"],
    aws_secret_access_key:  ENV["AWS_SECRET_ACCESS_KEY"]
  }
  config.fog_directory =    ENV["BUCKET_NAME"]
end
