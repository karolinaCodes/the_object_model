module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
 include Speak
end

class HumanBeing
include Speak
end

sparky=GoodDog.new
sparky.speak("woof!")
bob=HumanBeing.new
bob.speak("hello!")