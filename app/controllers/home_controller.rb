class HomeController < ApplicationController
  before_action :set_product, only: [:show]
  def index
    @q = Product.where(on_shelf: true).ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def show
  end

  def order_list
    @orders = current_user.orders
  end

  def order_new
    @order = Order.new
    @product = Product.find_by(id: params[:product_id])
    session[:back_url] = request.url
  end

  def order_create
    @order = Order.new(order_params)
    if @order.save
      redirect_to "/", notice: 'You successfully order this product!'
    else
      redirect_to session[:back_url], notice: 'Please input your contact!'
    end
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:code, :product_id, :number, :amount, :user_id, :aasm_state, :contact)
    end
end
