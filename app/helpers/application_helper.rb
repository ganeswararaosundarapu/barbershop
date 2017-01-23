module ApplicationHelper

  def input_date_format
    "%Y-%m-%d"
  end

  def format_date(date, format = input_date_format)
    Date.strptime(date, format)
  end
end
