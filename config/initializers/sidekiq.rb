sidekiq_url = "redis://#{ENV['redis_host']}:#{ENV['redis_port']}/#{ENV['redis_db'] || 0}"
Sidekiq.configure_server do |config|
  if ENV['redis_password'].present?
    config.redis = { url: sidekiq_url, network_timeout: 10, password: ENV['redis_password']}
  else
    config.redis = { url: sidekiq_url, network_timeout: 10}
  end
  config.server_middleware do |chain|
    chain.add Sidekiq::Middleware::Server::RetryJobs, :max_retries => 0
  end
end

Sidekiq.configure_client do |config|
  if ENV['redis_password'].present?
    config.redis = { url: sidekiq_url, network_timeout: 10, password: ENV['redis_password'] }
  else
    config.redis = { url: sidekiq_url, network_timeout: 10}
  end
end
