class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    puts params[:item][:name]
    Item.create(name: params[:item][:name], count: 0)
    redirect_to items_path
  end

  def count
    item = Item.find(params[:id])
    puts item.count
    if item.count == nil
      item.count = 0
    end
    item.count += 1
    # end
    item.save
    # puts params[:id]
    # a = Item.find(params[:id]).count
    # puts a
    # a += 1
    # Item.find(params[:id]).update(count: a)
    redirect_to items_path

  end
end
