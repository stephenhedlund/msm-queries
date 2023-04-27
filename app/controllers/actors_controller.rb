class ActorsController<ApplicationController

  def index
    render({:template=>"actor_template/index"})
  end

  def actor_details
    @id = params.fetch("an_id")
    @detail = Actor.where({:id=>@id}).first
    @filmography = Movie.where({:actor_id=>@id})
    render({:template=> "actor_template/show.html.erb"})
  end
end
