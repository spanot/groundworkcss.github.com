guard 'coffeescript', :input => 'src/coffee', :output => 'js'

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard 'shell', :all_on_start => true do
  watch(/layout-(.*).html$/) do |m|
    zipFileName = `basename #{m[0]}`.split('.html').first
    `zip #{zipFileName} #{m[0]}`
  end
end
