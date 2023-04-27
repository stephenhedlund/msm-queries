class MoviesController<ApplicationController

  def index
    render({:template=> "movie_template/index.html.erb"})
  end

  def movie_details
    @id = params.fetch("an_id")
    @detail = Movie.where({:id=>@id}).first
    render({:template=> "movie_template/show.html.erb"})
  end
end
