guard 'coffeescript', :input => 'src/coffee', :output => 'js'

guard 'shell', :all_on_start => true do
  watch(/layout-(.*).html$/) do |m|
    zipFileName = `basename #{m[0]}`.split('.html').first
    `zip #{zipFileName} #{m[0]}`
  end
end
