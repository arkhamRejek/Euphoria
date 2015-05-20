$(document).on 'page:change', ->
#######################################################################################
    #set marging for fixed nav so content is visible
#######################################################################################
    $(".menu-toggle").on "click", ->
        
        if  $(".menu-toggle").hasClass("fa-bars")
            $(".menu-toggle").removeClass("fa-bars").addClass("fa-times")
        else
            $(".menu-toggle").addClass("fa-bars").fadeIn().removeClass("fa-times")
            
        $(".menu").slideToggle()

#on resize
#account for margin with fixed nav class
    $(window).resize ->
        if $('nav').hasClass('fixed')
            $('.start-content').css 'margin-top', $('nav').height() + 10
        if $(window).width() > 1023
            $('.menu').removeAttr('style');
            
    $(window).trigger 'resize'
    
    
    #set marging for fixed nav so content is visible
    $('[data-img-src]').css 'background-image', ->
        bg = 'url(' + $(this).data('img-src')+')'
