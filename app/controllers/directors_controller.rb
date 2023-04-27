class DirectorsController<ApplicationController

  def index
    render({:template=> "director_template/index.html.erb"})
  end

  def eldest
    @oldest = x = Director.where.not({:dob=>nil}).order({:dob=>:asc}).at(0)
    render({:template=> "director_template/eldest"})
  end

  def youngest
    @youngest = x = Director.where.not({:dob=>nil}).order({:dob=>:desc}).at(0)
    render({:template=> "director_template/youngest"})
  end

  def director_details
    @id = params.fetch("an_id")
    @detail = Director.where({:id=>@id}).first
    @filmography = Movie.where({:director_id=>@id})
    render({:template=> "director_template/show.html.erb"})
  end
end
