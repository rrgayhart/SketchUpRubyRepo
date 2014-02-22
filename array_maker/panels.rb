require 'sketchup.rb'

class Panel

  attr_reader :run, :width, :thickness

  def initialize(args)
    @run = args[:run]
    @width = args[:width]
    @thickness = args[:thickness]
    draw_panel
  end

  def draw_panel
    model = Sketchup.active_model
    group = model.entities.add_group
    entities = group.entities

    new_panel = entities.add_face(coordinates[0], coordinates[1], coordinates[2], coordinates[3])
    new_panel.reverse!
    new_panel.pushpull(thickness, true)
    group.to_component
  end

  def coordinates
      x1 = 0
      x2 = width
      y1 = 0 
      y2 = run

      pts = []
      pts[0] = [x1, y1]
      pts[1] = [x2, y1]
      pts[2] = [x2, y2]
      pts[3] = [x1, y2]
      pts
  end

end
