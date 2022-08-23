class TransactionsController < ApplicationController
    def create
        transaction = Transaction.new(transaction_params)
        transaction.status = if transaction.cvv > 100
                               :paid
                             else
                               :failed
                             end
      if transaction.save
        render json: transaction, status: 201
      else
        render json: transaction.erros.messages, status: 422
      end
    end
    private
    
    def transaction_params
        params.require(:transaction).permit(:credit_card_number, :cvv, :due_date, :amount)
    end
end
