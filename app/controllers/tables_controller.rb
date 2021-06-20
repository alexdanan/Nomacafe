class TablesController < ApplicationController
  before_action :skip_pundit?
  def new
    @cafe = Cafe.find(params[:cafe_id])
    @table = Table.new
    authorize @table
    authorize @cafe
  end


  def create
    @cafe = Cafe.find(params[:cafe_id])
    @table = Table.new(table_params)

    @table.cafe_id = @cafe.id
    authorize @table
    authorize @cafe

    if @table.save
      redirect_to cafe_path(@cafe), notice: "Table was successfully created"
    else
      render :new
    end
  end

  def edit

    @cafe = Cafe.find(params[:cafe_id])
    @table = Table.find(params[:id])
    authorize @table
  end

  def update
    @cafe = Cafe.find(params[:cafe_id])
    @table = Table.find(params[:id])
    authorize @table

    if @table.save
      redirect_to cafe_path(@cafe), notice: "Table was successfully updated"
    else
      render :edit
    end

  end

  def destroy
    @table = Table.find(params[:id])
    authorize @table
    @table.destroy
    redirect_to dashboard_path
  end

  private

  def table_params
    params.require(:table).permit(:name, :spots, :min_credits, :seat, :wifi, :outlet, :outside, :cafe_id)
  end

end
