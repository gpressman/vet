
jQuery ->
  pets = $('#appointment_pet_id').html()
  $('#appointment_user_id').change ->
    user = $('#appointment_user_id :selected').text()
    options = $(pets).filter("optgroup[label='#{user}']").html()
    if options
      $('#appointment_pet_id').html(options)
    else 
      $('#appointment_pet_id').empty()