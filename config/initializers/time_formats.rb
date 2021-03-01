Time::DATE_FORMATS[:optional_year] = ->(date) do
  if date.year == Time.zone.today.year
    date.strftime("%B %d at %l:%M %p")
  else
    date.strftime("%B %d %Y at %l:%M %p")
  end
end
