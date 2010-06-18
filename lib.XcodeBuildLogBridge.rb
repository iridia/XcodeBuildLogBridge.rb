#	lib.XcodeBuildLogBridge.rb
#	Evadne Wu at Iridia, 2010





class Xcode

#	“Stacking” Messages
	
	@@logDepth = 0
	
	def self.groupStart (message = " ")
	
		self.log message 

		@@logDepth += 1
		
		return self
	
	end




	
	def self.groupEnd (message = "")
		
		self.log message
		
		@@logDepth -= 1
		
		return self
	
	end





	def self.warn (message = " ")
	
		return self.display("warning", message)
		
	end




	
	def self.error (message = " ")
	
		return self.display("error", message)
	
	end




	
	def self.log (message = " ")
	
		return self.display("", message)
	
	end
	
	
	
	
	
	def self.display (type = "warning", message = "")
	
		return self if message.empty?
	
		puts "#{"        " * @@logDepth}#{type.empty? ? "" : type + ": "}#{message}" 
		
		return self
	
	end
	
	
	
	
	
	def self.assert (conditional = true, message = "", type = "warning")
	
		self.display(type, message) if !conditional
	
		return conditional
	
	end





end