class PostsController < ApplicationController

    def index
        @places = Place.all
        @posts = Post.all
    end

    def show
        @place = Place.find_by({ "id" => params["id"] })
        @post = Post.where({ "place_id" => @place["id"] })
    end

    def new
        @post = Post.new
    end

    def create
        @post = Place.new
        @post["title"] = params["post"]["title"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["description"] = params["post"]["description"]
        @post.save
        redirect_to "/places"
    end


end