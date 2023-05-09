class PagesController < ApplicationController

    #définition de la page home
      def home
        puts params.inspect
        @gossips = Gossip.all
      end
    
    #définition de la page team
      def team
        
      end
    
    #définition de la page contact
      def contact
        
      end
    
    #définition de la page welcome dynamique
      def welcome
        @first_name = params[:first_name]
        puts params[:first_name].inspect
      end
    
    #définition de la page potin dynamique
      def potin
        @gossips = Gossip.all
        @id = params[:id]
      end
    
    
    #définition de la page auteur dynamique
    def author
      @gossips = Gossip.all
      @title = params[:title]
    end
    
    ##################potin###################
    #
    # Affichage de la page d'édition d'un potin
    def edit_potin
      @potin = Potin.find(params[:id])
    end

    # Mise à jour d'un potin
    def update
     @potin = Potin.find(params[:id])

      if @potin.update(potin_params)
        redirect_to root_path, notice: "Le potin a bien été modifié."
      else
      render :edit_potin
      end
    end

    private

    def potin_params
      params.require(:potin).permit(:author, :content)
    end
end
