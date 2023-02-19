class PresentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

    def index
      @presents= Present.all
      @tags = Tag.all
      @presents = @presents.where("present_name LIKE ? ",'%' + params[:search] + '%') if params[:search].present?
  #もしタグ検索したら、present_idsにタグを持ったidをまとめてそのidで検索
      if params[:tag_ids].present?
        present_ids = []
        params[:tag_ids].each do |key, value| 
          if value == "1"
            Tag.find_by(name: key).presents.each do |p| 
              present_ids << p.id
            end
          end
        end
        present_ids = present_ids.uniq
        
        @presents = @presents.where(id: present_ids) if present_ids.present?

      end     
      
    end

    def new
        @present = Present.new
    end

    def create
      present = Present.new(present_params)

      present.user_id = current_user.id

      if present.save!
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    def show
      @present = Present.find(params[:id])
      @comments = @present.comments
      @comment = Comment.new
    end


    def woman
      @presents = Present.all
    end
  
    def man
      @presents = Present.all
    end
  
    def others
      @presents = Present.all
    end
    
    def edit
      @present = Present.find(params[:id])
    end

    def update
      present = Present.find(params[:id])
      if present.update(present_params)
        redirect_to :action => "show", :id => present.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      present = Present.find(params[:id])
      present.destroy
      redirect_to action: :index
    end

  
    
     
    private
    def present_params
      params.require(:present).permit(:present_name, :age, :sex, :relation, :situation, :cost, :about, :image, :user_id, :sex2, tag_ids: [])
    end
      

  end