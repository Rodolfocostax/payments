class Transaction < ApplicationRecord
    enum status: [:pending, :paid, :failed]
end
