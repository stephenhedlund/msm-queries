class ActorsController<ApplicationController

  def index
    render({:template=>"actor_template/index"})
  end

  def actor_details
    the_id = params.fetch("an_id")

    matching_actors = Actor.where({ :id => the_id })
    @the_actor = matching_actors.at(0)
    render({:template=> "actor_template/show.html.erb"})
  end
end
