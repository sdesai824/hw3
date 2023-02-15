class PostsController < ApplicationController

    def index
        @places = Place.all
        @posts = Post.all
    end

    def show
        @posts = Post.find_by({ "id" => params["id"] })
        @places = Place.where({ "company_id" => @posts["id"] })
    end

end