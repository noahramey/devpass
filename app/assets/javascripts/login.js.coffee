$(".sessions.new").ready ->
  $('#email-input').focus()
  $('[contenteditable]').on('focus', ->
    $this = $(this)
    $this.data 'before', $this.html()
    $this
  ).on 'blur keydown paste', (e) ->
    if e.which is 13 and e.target.id is "pass-input"
      $("form#login-form").submit();
      return false
    else if e.which is 13
      return false
    $this = $(this)
    if $this.data('before') != $this.html()
      $this.data 'before', $this.html()
      $this.trigger 'change'
    $this
  observer = new MutationSummary(
    queries: [ { characterData: true } ]
    callback: (summaries) ->
      console.log(summaries[0]);
      field = summaries[0].target.activeElement.attributes['name'].value
      selector = $('#' + field)
      selector.val $(summaries[0].target.activeElement).html()
      return
  )
