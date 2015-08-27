rb = ReactBootstrap
@Page = React.createClass
  mixins: ['backboneChangeAware','backboneLoadOn']
  handleChange: (e) ->
    this.setState
      value:  e.target.value
  handleInput: (e) -> 
    if e.keyCode == 13
      console.log 'submit'
      this.props.collection.create
        body: e.target.value
      this.setState
        value: ''
  render: ->
    comments = _.map this.props.collection.models, (comment, key) ->
      `<CommentItem model={comment} key={key} />`
    
    `<rb.Panel>
      <rb.ListGroup>
        {comments}
      </rb.ListGroup>
      <rb.Input
        type='text'
        value={this.state.value}
        placeholder='Enter text'
        label='Plaats hier je opmerking'
        help='Ram op enter om te posten.'
        hasFeedback
        ref='input'
        groupClassName='group-class'
        labelClassName='label-class'
        onKeyDown={this.handleInput} onChange={this.handleChange} />
    </rb.Panel>`