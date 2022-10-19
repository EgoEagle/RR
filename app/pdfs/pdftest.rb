require "prawn"

def background_color(color)
  tmp_color = fill_color
  canvas do
    fill_color color
    fill_rectangle [bounds.left, bounds.top], bounds.right, bounds.top
  end
  fill_color tmp_color
end

Prawn::Document.generate("colored-pages.pdf") do
  fill_color "FF0000"

  background_color "FFFFCC"
  text "Text on page 1"

  start_new_page
  background_color "FFCCFF"
  text "Text on page 2"

  start_new_page
  background_color "CCFFFF"
  text "Text on page 3"

  start_new_page
  background_color "CCFFCC"
  text "Text on page 4"
end