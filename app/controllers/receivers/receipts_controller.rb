class Receivers::ReceiptsController < ReceiverController

  expose(:receipt){ current_account.providers }
  expose(:receipt, attributes: :receipt_params)

  def create

    if receipt.save
      flash[:notice] = t(:receipt_was_successfully_created)
      redirect_to receivers_receipts_path
    else
      render :new
    end

  end

  def update
    if receipt.save
      flash[:notice] = t(:receipt_was_successfully_updated)
      redirect_to receivers_receipt_path
    else
      render :edit
    end
  end

end
