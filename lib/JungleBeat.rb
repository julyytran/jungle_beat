require_relative 'LinkedList'

class JungleBeat < LinkedList

  def initialize(beats, rate = 500, voice = "Boing")
    @beat = beat
    @rate = rate
    @voice = voice
  end

  def play
    `say -r "#{@rate}" -v "#{@voice}" "#{@beats}"`
  end

  def rate(number)
    @rate = number
  end

  def reset_rate
    @rate = 500
  end

  def voice(name)
    @voice = name
  end

  def reset_voice
    @voice = "Boing"
  end

end
