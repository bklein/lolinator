class LulsController < ApplicationController
  def new
    @lul = Lul.new
  end

  def create
    @lul = current_lulnik.luls.create(params[:lul])
  end

  def index
    @lul = Lul.new
    @lulz = current_lulnik.luls.order('created_at DESC').limit(params[:limit])
  end
end
