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
     .demo > .row > .twelfths').not('.equal').hover (->
    $(this).text $(this).attr("data-title")
  ), ->
    $(this).text $(this).attr("data-text")