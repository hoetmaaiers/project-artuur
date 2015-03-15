module BarHelper
  def is_today(weekday)
    days = %w(sunday monday tuesday wednesday thursday friday saturday)
    days.find_index(weekday) == Time.new().wday()
  end
end
