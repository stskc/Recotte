ready = ->

  # Facebook
  loadFacebookSDK()
  bindFacebookEvents() unless fb_events_bound

  # Twitter
  loadTwitterSDK()
  bindTwitterEventHandlers() unless twttr_events_bound

  # Hatena
  loadHatenaSDK()

# For turbolinks
$(document).ready(ready)
$(document).on('page:load', ready)



# ----------------------------------------- #
# Facebook
# ----------------------------------------- #

fb_root = null
fb_events_bound = false

bindFacebookEvents = ->
  $(document)
    .on('page:fetch', saveFacebookRoot)
    .on('page:change', restoreFacebookRoot)
    .on('page:load', ->
      FB?.XFBML.parse()
    )
  fb_events_bound = true

saveFacebookRoot = ->
  fb_root = $('#fb-root').detach()

restoreFacebookRoot = ->
  if $('#fb-root').length > 0
    $('#fb-root').replaceWith fb_root
  else
    $('body').append fb_root

loadFacebookSDK = ->
  window.fbAsyncInit = initializeFacebookSDK
  $.getScript("//connect.facebook.net/ja_JP/all.js#xfbml=1")

initializeFacebookSDK = ->
  FB.init
    appId     : 1783547111889454
    channelUrl: '//static_pages/channel.html'
    status    : true
    cookie    : true
    xfbml     : true

# ----------------------------------------- #
# Twitter
# ----------------------------------------- #

twttr_events_bound = false

bindTwitterEventHandlers = ->
  $(document).on 'page:load', renderTweetButtons
  twttr_events_bound = true

renderTweetButtons = ->
  $('.twitter-share-button').each ->
    button = $(this)
    button.attr('data-url', document.location.href) unless button.data('url')?
    button.attr('data-text', document.title) unless button.data('text')?
  twttr.widgets.load()

loadTwitterSDK = ->
  $.getScript("//platform.twitter.com/widgets.js")

# ----------------------------------------- #
# Hatena
# ----------------------------------------- #

loadHatenaSDK = ->
  $.getScript("//b.st-hatena.com/js/bookmark_button_wo_al.js")
