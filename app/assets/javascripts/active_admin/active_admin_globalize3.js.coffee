$(document).on "active_admin_globalize3:select_tab", ".activeadmin-translations > ul > li", ->
  console.log 'triggering AA GLobalize'
  newTab = $(@)
  newLocale = $("a", newTab).data("locale")
  console.log "fieldset.locale-#{newLocale}"
  newFieldsets = $("fieldset.locale-#{newLocale}")

  prevTab = newTab.siblings('.active')
  prevFieldsets = newFieldsets.siblings('.active')

  newTab.addClass('active')
  newFieldsets.addClass('active')
  prevTab.removeClass('active')
  prevFieldsets.removeClass('active')

$(document).on "click", ".activeadmin-translations > ul > li", ->
  $(@).trigger "active_admin_globalize3:select_tab"

$ ->
  $(".activeadmin-translations > ul > li:first").trigger "active_admin_globalize3:select_tab"

