Apricot.Views.Toolbars ||= {}

class Apricot.Views.Toolbars.Toolbar extends Backbone.View
  template: JST["backbone/templates/toolbars/toolbar"]

  initialize: () ->
  	$(@el).html(@template)

  events: {
  	"click a" : "updateToolbar"
  }

  updateToolbar: (e) ->
  	$(@el).find(".active").removeClass("active")
  	if $(e.target).hasClass "brand"
  		$("#homebtn").addClass("active")
  	else
	  	$("#"+e.target.innerText.toLowerCase()+"btn").addClass("active") 

  render: =>
    return this
