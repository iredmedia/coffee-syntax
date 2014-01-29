# Variables!
name = "Kevin"
person = true

# Functions, with variables, and defaults
yell = (name, age = 20) ->
	# Output some global variables
	console.log name, name
	# Last line of fn is returned... look into this?
	null

# Conditional
if person is true
	yell(name)

# Conditional alternative
yell name if person is true

## Itteration
# Array
arr = [ "Rice", "Apple", "Mango", "Bananna", "Salad" ]

console.log item for item in arr

console.log item for item in arr when item isnt "Tony"

# Object
obj = { "foo": "f", "bar": "b", "foobar": "fb" }

console.log item for item of obj

console.log item for item of obj when item isnt "Tony"

# Splats
arr = [ "Rice", "Apple", "Mango", "Bananna", "Salad" ]

likes = (most, second, rest...) ->
	console.log "I like #{most} best, #{second} second best"
	console.log "I enjoy #{rest}"
	return

likes arr...

# For loops, and parenthesis (run before assignment)
arr  = [ "Rice", "Apple", "Mango", "Bananna", "Salad" ]

type = ("#{item}s" for item in arr when item isnt "Rice")

# Splice array
arr   = [ "Rice", "Apple", "Pear", "Bananna", "Salad" ]

fruit = arr[1..3]  # ["Apple", "Pear", "Bananna"]

fruit = arr[3...4] # ["Bananna"] (Exclusive)

rest  = arr[3..3]	 # ["Bananna"] (Inclusive)

arr[1..3] = ["Cucumber", "Letuce", "Potatoe"]

# React FTW!
HelloMessage = React.createClass
  getInitialState:
    randomValue: Math.random();

  render: ->
    message = "#{this.props.message}, #{this.props.name}"
    `<div>{this.props.message +  + this.props.name}</div>`

React.renderComponent `<HelloMessage message="Hey there" name="John" />`, document.body

# React alternative
{div} = React.DOM

Hello = React.createClass
    render: ->
        (div {}, ['Hello ' + @props.name])

React.renderComponent (Hello {name: 'World'}), document.body
