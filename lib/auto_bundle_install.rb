require 'auto_bundle_install/version'
require 'watchr'

module AutoBundleInstall
	Thread.new {
	  script = Watchr::Script.new
		script.watch( '^Gemfile$' ) do
			puts "Run bundle install"
			if Object.const_defined?('AutoBundleInstallTest')
				puts `bundle install`
			else
				system('bundle install')
			end
		end
		controller = Watchr::Controller.new(script, Watchr.handler.new)
		controller.run
	}
end
