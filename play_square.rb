require 'ruby2d'

Text.new('Welcome To My Game', size:30 , color: 'green')

song = Music.new('/home/azizhon/music/Ссылка на 3_Lorde-Homemade_Dynamite.mp3')
song.play

@square = Square.new(x: 10 , y:80, size: 20 , color:'green')

@x_speed=0
@y_speed=0
on :key_down do |event|
  if event.key == 's'
    @x_speed= 0
    @y_speed= 0

  elsif event.key == 'l'
    @x_speed= -2
    @y_speed= 0

  elsif event.key == 'r'
    @x_speed= 2
    @y_speed= 0

  elsif event.key == 'd'
    @x_speed= 0
    @y_speed= 2

  elsif event.key == 'u'
    @x_speed= 0
    @y_speed= -2
  end


update do
  @square.x += @x_speed
  @square.y += @y_speed

end
end


show
