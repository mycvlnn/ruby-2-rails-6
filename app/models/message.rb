class Message < ApplicationRecord
  include Entryable

  def description 
    subject
  end
end
