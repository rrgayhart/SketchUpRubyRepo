require 'sketchup.rb'
require 'panels.rb'

#creates clickable plugin link in sketchup
UI.menu("PlugIns").add_item("Make Array") {
  size = {:run => 64.76, :width => 38.70, :thickness => 1.38}
  Panel.new(size)
}
