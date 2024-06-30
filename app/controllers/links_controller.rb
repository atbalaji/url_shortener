class LinksController < ApplicationController

  def index
    @links = Link.ordered
  end
end
