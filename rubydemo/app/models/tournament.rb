class Tournament < ApplicationRecord
  enum Type: [:Pro, :Amateur]
end
