class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(num)
    @seconds = num
  end

  def time_string
    return "00:00:#{padded(@seconds)}" if @seconds < 61

    if @seconds > 61
      @minutes = @seconds /60
      @seconds_left = @seconds %60

      if @minutes > 61
        @hours = @minutes /60
        @minute_left = @minutes %60
        return "#{padded(@hours)}:#{padded(@minutes_left)}:#{padded(@seconds_left)}"
      else
        "00:#{padded(@minutes)}:#{padded(@seconds_left)}"
      end
    end
  end

  def padded(time)
    if time == 0
      "00"
    elsif time <=9
      "0" + time.to_s
    else
      time.to_s
    end
  end
end
