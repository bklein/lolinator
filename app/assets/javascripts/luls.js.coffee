# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("#new_lul").fileupload
    dataType: 'script'
    add: (e, data) ->
      $('#progress').addClass('active').addClass('progress-striped')
      data.submit()
    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100.0, 10)
      $('#progress .bar').css('width', progress + '%')
      $('#progress .bar').text(progress + '%')
      if progress == 100
        $('#progress').removeClass('active').removeClass('progress-striped')
    done: (e, data) ->
      filename = data.files[0].name
      alertify.success("#{filename} uploaded.")

