rb = ReactBootstrap
@CommentItem = React.createClass
  mixins: ['backboneChangeAware']
  handleClick: (e) ->
    this.props.model.set('like', !this.props.model.get('like'))
    this.props.model.save()
  handleDestroy: (e) ->
    this.props.model.destroy()
  render: ->
    `<rb.ListGroupItem header={this.props.model.get('body')}>
      {this.props.model.get('created_at')}
      <rb.Button bsSize='xsmall' className='pull-right btn-danger' onClick={this.handleDestroy} >
        Remove
      </rb.Button>
      
      <rb.Button bsSize='xsmall' className='pull-right' onClick={this.handleClick} >
        {this.props.model.get('like') ? 'Liked' : 'Not liked'}
      </rb.Button>
    </rb.ListGroupItem>`