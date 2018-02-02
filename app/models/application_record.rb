# frozen_string_literal: true

# Abstract AR Object for shared behaviors
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
