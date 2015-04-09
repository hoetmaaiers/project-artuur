$ ->

  $('#new_request').on 'ajax:success', (e, data, status, xhr) ->
    $('.validation-errors').addClass('hidden')
    $('.success').removeClass('hidden')
  .on 'ajax:error', (e, xhr, status, error) ->
    # clear validation errors
    $('.validation-errors').removeClass('hidden').html('')
    $('.success').addClass('hidden')

    # insert new validation errors
    xhr.responseJSON.full_messages.forEach (error_message) ->
      $('.validation-errors').append("<li class='error'>#{error_message}</li>")
