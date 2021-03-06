class NotifyController < FayeRails::Controller
  channel '/notify/aaa' do
    monitor :subscribe do
      puts "Client #{client_id} subscribed to #{channel}"
    end
    monitor :unsubscribe do
      puts "Client #{client_id} unsubscribed from #{channel}"
    end
    monitor :publish do
      Rails.logger.info "Client #{client_id} published #{data.inspect} to #{channel}"
    end
  end
end