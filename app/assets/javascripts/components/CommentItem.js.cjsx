@CommentItem = React.createClass
  mixins: ['backboneChangeAware']
  handleClick: (e) ->
    this.props.model.set('like', !this.props.model.get('like'))
    this.props.model.save()
  handleDestroy: (e) ->
    this.props.model.destroy()
  render: ->
    <span className="list-group-item" >
      <h4 className="list-group-item-heading" >{this.props.model.get('body')}</h4>
      <p className="list-group-item-text" >
        <span >{this.props.model.get('created_at')}</span>
        <button className="pull-right btn-danger btn btn-xs btn-default" type="button" onClick={this.handleDestroy} >Remove</button>
        <button className="pull-right btn btn-xs btn-default" type="button" onClick={this.handleClick} >{if this.props.model.get('like') then 'Liked' else 'Not liked'}</button>
      </p>
    </span>