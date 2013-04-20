guard :coffeescript, :input => 'src/coffee', :output => 'js'
guard :coffeescript, :input => 'groundwork/src/coffee', :output => 'groundwork/js'

guard 'shell', :all_on_start => true do
  watch(/layout-(.*).html$/) do |m|
    zipFileName = `basename #{m[0]}`.split('.html').first
    `zip #{zipFileName} #{m[0]}`
  end
end
