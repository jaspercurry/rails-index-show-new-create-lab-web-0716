class CouponsController < ApplicationController

  def show
  
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code],store: params[:store] )
    redirect_to @coupon
  end

  def index
    @coupons = Coupon.all
  end

  def new


  end

end
