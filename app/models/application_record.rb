# frozen_string_literal: true

# Defines ApplicationRecord as subclass of activerecord
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
