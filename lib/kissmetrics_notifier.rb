class KissmetricsNotifier
  def initialize(client)
    @client = client
  end

  def notify_of(purchase)
    @client.send_event('purchase', purchase.product_name, purchase.amount)
  end
end
