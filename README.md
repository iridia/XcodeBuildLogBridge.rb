#	lib.XcodeBuildLogBridge.rb

This is a Ruby bridge that allows you to interact with Xcode’s build logging mechanism easily.  To use this class, `require` it in your Ruby script, and create a new xcode object by:

	xcode = Xcode.new
	
Then, use any of these commands:





*	Outputs a warning:

		xcode.warn "Needs argument." if (ARGV.empty? || ARGV[0].empty?)
	
	
*	Outputs an error:

		xcode.error "Pie mismatch.  Terminating."
	
	
*	“Stacks” log messages, ala WebKit `window.console.groupStart()`:

		xcode.groupStart "Working with a complex problem"
		
			xcode.groupStart "Stacking groupStart works too!"
			
				xcode.log "Blah."
			
			xcode.groupEnd
			
			xcode.warning "Blah."
		
		xcode.groupEnd





##	Credits

Evadne Wu at Iridia Productions, 2010.  `ev@iridia.tw` .




