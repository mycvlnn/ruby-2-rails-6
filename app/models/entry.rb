class Entry < ApplicationRecord
  delegated_type :entryable, types: %w[Comment Message], dependent: :destroy
  delegate :description, to: :entryable
end
