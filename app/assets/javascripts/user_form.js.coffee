$(".users.new").ready ->
  $('#name-input').focus()
  $('[contenteditable]').on('focus', ->
    $this = $(this)
    $this.data 'before', $this.html()
    $this
  ).on 'blur keyup paste', ->
    $this = $(this)
    if $this.data('before') != $this.html()
      $this.data 'before', $this.html()
      $this.trigger 'change'
    $this
  observer = new MutationSummary(
    rootNode: $('form#user_form')[0]
    queries: [ { characterData: true } ]
    callback: (summaries) ->
      field = summaries[0].target.activeElement.attributes['name'].value
      selector = $('#user_' + field)
      selector.val $(summaries[0].target.activeElement).html()
      return
  )
