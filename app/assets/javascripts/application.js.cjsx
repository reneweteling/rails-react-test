#= require jquery
#= require react
#= react_ujs
#= require lodash
#= require backbone
#= require react-mixin-manager
#= require react-events
#= require react-backbone
#= require_tree ./components

$ ->

  #### Backbone shizzle
  comment_collection = Backbone.Collection.extend
    url: '/comments'
    comparator: 'created_at'

  Comments = new comment_collection
  Comments.fetch()
  
  #### React shizzle
  React.render <Page collection={Comments} />, document.getElementById('container') if document.getElementById('container')?

  React.render <Test caller={'Javascript'} />, document.getElementById('iso') if document.getElementById('iso')?
  React.render <Test caller={'Javascript'} />, document.getElementById('propperiso') if document.getElementById('propperiso')?