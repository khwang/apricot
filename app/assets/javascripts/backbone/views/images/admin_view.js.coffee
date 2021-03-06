Apricot.Views.Images ||= {}

class Apricot.Views.Images.AdminView extends Backbone.View
  template: JST["backbone/templates/images/admin"]

  initialize: ->
    @options.unreviewed_images.bind('reset', @addAll)

  addAll: =>
    @options.unreviewed_images.each(@addOne)

  addOne: (image) =>
    view = new Apricot.Views.Images.AdminImageView({model : image})
    @$("#thumbnails").append(view.render().el)

  render: =>
    $(@el).html(@template(images: @options.unreviewed_images.toJSON() ))
    @addAll()

    return @
