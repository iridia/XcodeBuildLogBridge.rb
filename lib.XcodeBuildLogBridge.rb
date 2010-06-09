#	lib.XcodeBuildLogBridge.rb
#	Evadne Wu at Iridia, 2010





class Xcode





	@@logDepth = 0

	def groupStart (message = " ")
	
		self.log message 

		@@logDepth = @@logDepth + 1
	
	end




	
	def groupEnd (message = "")
		
		self.log message if (!message.empty?)
		
		@@logDepth = @@logDepth - 1
	
	end





	def warn (message = " ")
	
		_display("warning", message)
	
	end




	
	def error (message = " ")
	
		_display("error", message)
	
	end




	
	def log (message = " ")
	
		_display("", message)
	
	end
	
	
	
	
	
	private
	
	def _display (type = "warning", message = "")
	
		padding = "        " * @@logDepth
		
		if (type.empty?)
		
			puts "#{padding}#{message}"

		else 
		
			puts "#{padding}#{type}: #{message}"
		
		end
	
	end





end