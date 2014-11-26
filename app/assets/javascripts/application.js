// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {

  $('.caption-submitter').on('click', function(event) {
    event.preventDefault()

    var mediumID = $('.caption-submitter').attr('data-medium-id')
    var captionTitle = $(this).siblings('textarea').val()

    var postCaptionPromise = $.post('/media/' + mediumID + '/captions', {caption: {title: captionTitle}})


    postCaptionPromise.success( function(returned_caption) {

      if (returned_caption.title == null) {
        $('.error-message').text(returned_caption.errors[0])
      }
      else {
        $('.new_caption').hide()
        $('.error-message').toggle()
        $('.captions-list').prepend('<li>' + returned_caption.title + '</li>')
      }

    })

  })

})

