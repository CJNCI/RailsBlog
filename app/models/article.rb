# Article class inherits from ApplicationRecord and checks that title and body are present

# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true
  # Declares that must be present
  # Also must contain at least one non-whitespace character

  validates :body, presence: true, length: { minimum: 10 }
  # Body must be present at minimum 10 characters long
end
