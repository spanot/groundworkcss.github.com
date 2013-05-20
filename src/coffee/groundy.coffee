$(document).ready ->

  # fallback to PNG if SVG not supported
  if !Modernizr.svg
    $("img[src$='.svg']").each ->
      $(this).attr('src',$(this).attr('src').replace('.svg','.png'))

  $('#browser-support .browser, #browser-support a').on
    click: (e) ->
      $('#browser-support').toggleClass('open')
      $('#browser-support').find('#browser-support-grid').fadeToggle()
      e.preventDefault()
      false

  # add titles to demo grid cells
  $('.demo > .row > .whole, 
     .demo > .row > .wholes, 
     .demo > .row > .half, 
     .demo > .row > .halves, 
     .demo > .row > .third, 
     .demo > .row > .thirds, 
     .demo > .row > .fourth, 
     .demo > .row > .fourths, 
     .demo > .row > .fifth, 
     .demo > .row > .fifths, 
     .demo > .row > .sixth, 
     .demo > .row > .sixths, 
     .demo > .row > .seventh,
     .demo > .row > .sevenths, 
     .demo > .row > .eighth, 
     .demo > .row > .eighths, 
     .demo > .row > .ninth,  
     .demo > .row > .ninths,  
     .demo > .row > .tenth, 
     .demo > .row > .tenths, 
     .demo > .row > .eleventh,
     .demo > .row > .elevenths, 
     .demo > .row > .twelfth,
     .demo > .row > .twelfths').each ->
    $(this).attr('data-title',$(this).attr('class'))
    $(this).attr('data-text',$(this).text())
  $('.demo > .row:not(.equalize) > .whole, 
     .demo > .row:not(.equalize) > .wholes, 
     .demo > .row:not(.equalize) > .half, 
     .demo > .row:not(.equalize) > .halves, 
     .demo > .row:not(.equalize) > .third, 
     .demo > .row:not(.equalize) > .thirds, 
     .demo > .row:not(.equalize) > .fourth, 
     .demo > .row:not(.equalize) > .fourths, 
     .demo > .row:not(.equalize) > .fifth, 
     .demo > .row:not(.equalize) > .fifths, 
     .demo > .row:not(.equalize) > .sixth, 
     .demo > .row:not(.equalize) > .sixths, 
     .demo > .row:not(.equalize) > .seventh,
     .demo > .row:not(.equalize) > .sevenths, 
     .demo > .row:not(.equalize) > .eighth, 
     .demo > .row:not(.equalize) > .eighths, 
     .demo > .row:not(.equalize) > .ninth,  
     .demo > .row:not(.equalize) > .ninths,  
     .demo > .row:not(.equalize) > .tenth, 
     .demo > .row:not(.equalize) > .tenths, 
     .demo > .row:not(.equalize) > .eleventh,
     .demo > .row:not(.equalize) > .elevenths, 
     .demo > .row:not(.equalize) > .twelfth,
     .demo > .row:not(.equalize) > .twelfths').hover (->
    $(this).text $(this).attr("data-title")
  ), ->
    $(this).text $(this).attr("data-text")
