class Person
  extend ActiveModel::Callbacks

  define_model_callbacks :update, :create, only: [:before, :after, :around]

  before_update :normalize_name
  after_create :send_welcome_email
  around_update :log_update_time

  def update
    run_callbacks :update do
      # Update logic here
      p "Updating person..."
    end
  end

  def create 
    run_callbacks :create do
      # Create logic here
    end
  end

  private

  def normalize_name
    # Logic to normalize the person's name
    p "Normalizing name..."
  end

  def send_welcome_email
    # Logic to send a welcome email
    p "Sending welcome email..."
  end

  def log_update_time
    start_time = Time.now
    
    end_time = Time.now
    p "Update took #{end_time - start_time} seconds."
  end

end
