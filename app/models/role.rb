class Role < ApplicationRecord
  enum status: { enable: 1, disable: 0 }
end
