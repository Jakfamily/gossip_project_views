class GossipController < ApplicationController

  def index
    @gossips = Gossip.all
    redirect_to root_path
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)

    if @gossip.save
      redirect_to gossip_params, notice: "Le super potin a été créé avec succès!"
    else
      flash.now[:alert] = "Error: " + @gossip.errors.full_messages.join(", ")
      render :new
    end
  end
  
  private

  def gossip_params
    params.require(:gossip).permit(:title, :content, :user_id)
  end
end
