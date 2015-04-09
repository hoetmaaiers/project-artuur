$ ->

  $('#new_request').on 'ajax:success', (e, data, status, xhr) ->
    $('.validation-errors').addClass('hidden')
    $('.success').removeClass('hidden')

    # reset all input values
    $('#new_request input:not([type=submit], [type=hidden])').each (i, el) ->
      $(el).val('')

  .on 'ajax:error', (e, xhr, status, error) ->
    # clear validation errors
    $('.validation-errors').removeClass('hidden').html('')
    $('.success').addClass('hidden')

    # insert new validation errors
    xhr.responseJSON.full_messages.forEach (error_message) ->
      $('.validation-errors').append("<li class='error'>#{error_message}</li>")
