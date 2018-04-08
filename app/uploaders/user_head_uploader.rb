class UserHeadUploader < BaseUploader
  include ::CarrierWave::Backgrounder::Delay

  def default_url
    "/assets/用户默认头像.png"
  end

end