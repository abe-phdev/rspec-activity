class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "Hey Timbee and Potchi"
  end

  def fall_off_ladder
    "Call my agent! No way"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
    end
  end
end

actor = Actor.new('Timbee')
movie = Movie.new(actor)
movie.start_shooting
