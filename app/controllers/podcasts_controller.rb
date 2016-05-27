class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all.order('created_at DESC')
  end

  def show
    @podcast = find_podcast
  end


  private

def podcast_params
  params.require(:podcast).permit(:title,:description,:itunes,:sticher,:podbay,:email)
end

def find_podcast
  @podcast = Podcast.find(params[:id])
end
end
