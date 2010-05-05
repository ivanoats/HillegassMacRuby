# PreferenceController.rb
# RaiseMan
#
# Created by daniellopes on 04/05/10.
# Copyright 2010 area criacoes. All rights reserved.


class PreferenceController < NSWindowController
  attr_accessor :colorWell, :checkbox
	
	def init
    initWithWindowNibName("Preferences")
    self
	end
	
	def windowDidLoad
		NSLog("nib file loaded")
	end
	
	def changeBackgroundColor(sender)
		NSLog("Color changed: #{@colorWell.color}")
	end
	
	def changeNewEmptyDoc(sender)
		NSLog("Checkbox changed: #{checkbox.state}")
	end	

end