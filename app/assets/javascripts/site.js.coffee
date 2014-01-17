$ -> 
  $(document).on('click', 'a.close_button', (e) ->
    $(this).closest('#flash').fadeOut('fast')
    false
  )
  $('a.close_button').show()

  