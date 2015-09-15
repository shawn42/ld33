class Debug; end
class BackgroundBlob; end
class Monster; end
class ColorSource; end
class Clickable; end
class Particle; end
class EmitParticlesEvent
  attr_accessor :color
  def initialize(color:)
    @color = color
  end
end

class Position
  attr_accessor :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end

class Velocity
  attr_accessor :x, :y
  def initialize(x=0, y=0)
    @x = x
    @y = y
  end
end

class JoyColor
  attr_accessor :color
  def initialize(color)
    @color = color
  end
end

class Boxed
  attr_accessor :width, :height, :squished_at, :squish_height, :squish_amount, :squish_dir
  def initialize(width,height)
    @width = width
    @height = height
    @squish_height = 0
    @squish_amount = 0
    @squish_dir = 0
  end
end

class JoyImage
  attr_reader :name, :image
  def initialize(name)
    @name = name
    @image = Gosu::Image.new name
  end
end

class Timer
  attr_accessor :ttl, :repeat, :total, :event, :name, :expires_at
  def initialize(name, ttl, repeat, event = nil)
    @name = name
    @total = ttl
    @ttl = ttl
    @repeat = repeat
    @event = event
  end
end

class ClickedEvent
  attr_reader :x, :y
  def initialize(x:,y:)
    @x = x
    @y = y
  end
end
class SoundEffectEvent
  attr_accessor :sound_to_play
  def initialize(sound_to_play)
    @sound_to_play = sound_to_play
  end
end
