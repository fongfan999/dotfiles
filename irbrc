IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => ">> ",
  :PROMPT_S => "%l>> ",
  :PROMPT_C => ".. ",
  :PROMPT_N => ".. ",
  :RETURN => "=> %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM
IRB.conf[:AUTO_INDENT] = true

if defined? Rails
	begin
		$LOAD_PATH << "/Users/phong/.rvm/gems/ruby-2.3.1/gems/hirb-0.7.3/lib"
		require 'hirb'
		Hirb.enable
	rescue LoadError
	end
else
  require 'wirb'
  require 'interactive_editor'

  Wirb.start
end
