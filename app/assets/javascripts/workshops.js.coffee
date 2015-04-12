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



  $workshopsList = $('.workshops-list')
  filters = []

  if $workshopsList
    $workshopsList.isotope({
      itemSelector: '.workshop-item',
      layoutMode: 'fitRows'
    })


  $('.filter-item').on 'click', (event) ->
    filterClass = ''

    $filter = $(event.target)
    filter = $filter.data('filter')

    if $filter.hasClass('active')
      $filter.removeClass('active')
      index = filters.indexOf(filter)
      filters.splice(index, 1)
    else
      $filter.addClass('active')
      filters.push(filter)


    filters.forEach (filter) ->
      filterClass += ".#{filter}"

    $workshopsList.isotope({
      filter: filterClass
    })
