@Test = React.createClass
  getInitialState: ->
    style: {}
  handleClick: ->
    this.setState style: {
      backgroundColor: '#'+Math.floor(Math.random()*16777215).toString(16)
    }
  render: ->
    <div className="panel panel-default" onClick={this.handleClick} style={this.state.style}>
      <div className="panel-heading">Isomorpic renderd by: {this.props.caller}</div>
      <div className="panel-body">
        <p>This element can be renderd on the server using <code>react-rails</code> and also by javascript</p>
        <p>This is because this reactClass doesnt have any dependancys </p>
      </div>
    </div>