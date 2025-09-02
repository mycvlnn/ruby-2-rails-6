namespace :orders do
  desc "Randomize the status of all orders"
  task randomize_status: :environment do
    statuses = [0, 1, 2] # Assuming 0: pending, 1: shipped, 2: delivered

    Order.find_each do |order|
      new_status = statuses.sample
      order.update(status: new_status)
      puts "Order ##{order.id} status updated to #{new_status}"
    end

    puts "All order statuses have been randomized."
  end
end