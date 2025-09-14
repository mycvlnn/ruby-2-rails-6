class Comment < ApplicationRecord
  include Entryable

  def description
    content.truncate(30)
  end
end
