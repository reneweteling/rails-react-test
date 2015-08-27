@Page = React.createClass
  mixins: ['backboneChangeAware','backboneLoadOn']
  handleChange: (e) ->
    this.setState
      value:  e.target.value
  handleInput: (e) -> 
    if e.keyCode == 13
      this.props.collection.create
        body: e.target.value
      this.setState
        value: ''
  render: ->
    comments = _.map this.props.collection.models, (comment, key) ->
      <CommentItem model={comment} key={key} />
    
    <div className="panel panel-default" >
      <div className="panel-body" >
        <ul className="list-group" >
          {comments}
        </ul>
        <div className="form-group has-feedback group-class" >
          <label className="control-label label-class" >
            <span >Plaats hier je opmerking</span>
          </label>
          <input type="text" placeholder="Enter text" label="Plaats hier je opmerking" className="form-control" value={this.state.value} onKeyDown={this.handleInput} onChange={this.handleChange} />
          <span className="form-control-feedback" ></span>
          <span className="help-block" >Ram op enter om te posten.</span>
        </div>
      </div>
    </div>