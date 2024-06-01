class_name StateMachine
extends Node

@export var user : Node
@export var starting_state : State
@export var starting_info : Dictionary = {}
@export var automatic := false

@onready var states : Array[Node] = get_children()

var is_active := false
var current_state : State

var states_names : Array[String] = []

func _ready():
	current_state = starting_state
	if current_state is State:
		current_state.state_machine = self
		current_state.user = user
	
	for state in states:
		states_names.append(state.name)
	
	if automatic:
		start()

func start():
	current_state.start(starting_info)
	is_active = true

func update(info : Dictionary = {}):
	if is_active:
		if not current_state.state_machine:
			current_state.state_machine = self
		current_state.update(info)

func change_state(state_name : String, info : Dictionary = {}):
	current_state.end()
	current_state = states[states_names.find(state_name)]
	if current_state is State:
		current_state.state_machine = self
		current_state.user = user
		current_state.start(info)

func stop():
	is_active = false
