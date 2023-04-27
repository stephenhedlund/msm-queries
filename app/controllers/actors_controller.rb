class ActorsController<ApplicationController

  def index
    render({:template=>"actor_template/index"})
  end

  def actor_details
    @id = params.fetch("an_id")
    @detail = Actor.where({:id=>@id}).first
    @filmography = Character.where({:actor_id=>@id})

    @new_array = @filmography.all.map do |films|
      films.movie_id
    end
    render({:template=> "actor_template/show.html.erb"})
  end
end
