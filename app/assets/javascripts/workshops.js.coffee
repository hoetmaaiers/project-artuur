$ ->
  setupWorkshopsGrid = ->
    windowWidth = $(window).width()

    if windowWidth < 768
      itemsPerRow = 2
    else if windowWidth <= 1024
      itemsPerRow = 3
    else if windowWidth <= 1280
      itemsPerRow = 4
    else
      itemsPerRow = 5

    newDimension = windowWidth / itemsPerRow
    $('.workshop-item').css(
      width: newDimension
      height: newDimension
    )

  filterWorkshops = ->
    isotopeFilter = { filter: filterClass + typeClass }
    $workshopsList.isotope($.extend(isotopeOptions, isotopeFilter))


  setupWorkshopsGrid()

  $(window).resize ->
    setupWorkshopsGrid()

  isotopeOptions = {
    itemSelector: '.workshop-item',
    layoutMode: 'fitRows'
  }

  filterClass = ''
  typeClass = ''
  $workshopsList = $('.workshops-list')

  # initialize isotope
  if $workshopsList
    $workshopsList.isotope(isotopeOptions)



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



  ###
  # filter by type
  ###

  $('.type-filter').on 'click', (event) ->
    # clear all active types
    $('.type-filter').each (i, type) ->
      $(type).removeClass('active')

    # active clicked type
    $type = $(event.target)
    $type.addClass('active')
    filter = $type.data('filter')
    if filter == 'type-all'
      typeClass = ''
    else
      typeClass = ".#{filter}"

    filterWorkshops()


  ###
  # filter by tags and audiences
  ###
  filters = []

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

    # setup filter class
    if filters.length > 0
      filters.forEach (filter) ->
        filterClass += ".#{filter}"
    else
      filterClass = '*'

    filterWorkshops()


