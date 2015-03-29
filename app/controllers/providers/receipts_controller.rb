class Providers::ReceiptsController < ProviderController

  expose(:receipt){ current_account.receipts }
  expose(:receipt, attributes: :receipt_params)

end
