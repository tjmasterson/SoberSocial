$(function(){

  $('#event-show').on('show.bs.modal', function (thing) {
    var button = $(thing.relatedTarget) // Button that triggered the modal

    var event = button.data('event') // Extract event info from data attribute

    // We'll need an AJAX call here to get the people going and then do the updating in a callback

    var modal = $(this)
    modal.find('.show-event-title').text('Title: ' + event.title)
    console.log(modal.find('#show-event-link'))
    modal.find('#show-event-link').attr('href', '/events/' + event.id + '/join_event')
    modal.find('#show-event-link').text('Join Events')
  })

})

