class CouponsController < ApplicationController

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def show
    @show = Show.find(params[:id])
  end

end
