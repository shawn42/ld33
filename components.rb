class Debug; end
class BackgroundBlob; end
class Monster; end
class ColorSource; end
class Bouncy; end
class BlackHole; end
class Death; end
class Particle; end
class EmitParticlesEvent
  attr_accessor :color, :target, :intensity
  def initialize(color:, target:nil, intensity: 25)
    @color = color
    @target = target
    @intensity = intensity
  end
end
class MovableTile
  attr_accessor :path, :vel, :world_target, :dir_vec, :path_target
  def initialize(path:, start_node:)
    @path = path
    @vel = vec(0,0)
    @path_target = start_node
  end
end

class Exit
  attr_accessor :open
  def initialize(open:false)
    @open = open
  end
end
class EntityTarget
  attr_accessor :id
  def initialize(id)
    @id = id
  end
end

class PlatformPosition
  attr_accessor :last_grounded_at, :last_tile_bouncy,
    :jump_time, :last_jump

  def initialize
    @last_grounded_at = -1
    @last_tile_bouncy = false
    @jump_time = 0
    @last_jump = 0
  end
end

class Position
  attr_accessor :x, :y, :z
  def initialize(x,y,z=2)
    @x = x
    @y = y
    @z = z
  end

  def nearby(dx,dy)
    Position.new @x + rand(dx*2) - dx,
      @y + rand(dy*2) - dy, @z
  end
end

class Velocity < Vec
end

class JoyColor
  attr_accessor :color
  def initialize(color)
    @color = color
  end
end
class ColorSink < JoyColor; end

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

class SoundEffectEvent
  attr_accessor :sound_to_play
  def initialize(sound_to_play)
    @sound_to_play = sound_to_play
  end
end
