class CarRentService
  def initialize(car:, client:, from_rent_at:, to_rent_at)
    @car = car
    @client = client
    @rent_time = rent_time
  end

  def process
    if has_client_enough_money?
      generate_invoice
      deliver_mail_to_client
      deliver_mail_to_manager
      engage_the_car!
    end
  end

  def engage_the_car!; end
  def has_client_enough_money?; end
  def deliver_mail_to_client; end
  def deliver_mail_to_manager; end
  def generate_invoice; end
en
