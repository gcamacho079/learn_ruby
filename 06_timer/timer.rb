class Timer
  attr_accessor :seconds
  @minutes = 0

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    if seconds < 10
      return "00:00:0#{@seconds}"
    elsif seconds > 10 && seconds < 60
      return "00:00:#{@seconds}"
    else
      @minutes = @seconds/60
      @seconds = @seconds - (@minutes*60)
      return "00:#{@minutes}:#{@seconds}"

    end
  end


end
