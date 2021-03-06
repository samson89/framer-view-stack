# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: "ViewStack Module Example"
	author: "Alan Dickinson"
	twitter: "@alandickinson"
	description: "Create and control views that stack on top of each other. You can swipe to dismiss them, or fan out the stack and tap one to bring it forward."

# 
# # load sketch assets
# art = Framer.Importer.load("imported/view-stack-example@2x")
# Utils.globalLayers(art)
# 
# # background layer stuff
# bg = new Layer
# 	frame: Screen.frame
# 	backgroundColor: "rgba(255,255,255,1)"
# Utils.labelLayer bg, "Tap to present views"
# bg.style = {color: "grey", fontSize: "36px", fontFamily:"SanFranciscoDisplay-Medium"}
# bg.on Events.Tap, ->
# 	stack.presentView(view_one)
# 
# # preprocess sketch layers
# artboards = [view1,view2,view3,view4]
# for layer in artboards
# 	layer.visible = false
# 
# # import and initialize the view stack
# ViewStack = require "viewstack"
# stack = new ViewStack.Manager
# 
# # add views to the stack, passing in sketch layers with the contents parameter
# view_one = stack.addView
# 	contents: one
# 	title: "One"
# 	tintColor: "#fff"
# view_two = stack.addView
# 	contents: two
# 	title: "Two"
# 	tintColor: "#fff"
# view_three = stack.addView
# 	contents: three
# 	title: "Three"
# 	tintColor: "#fff"
# view_four = stack.addView
# 	contents: four
# 	title: "Four"
# 	tintColor: "#fff"
# 
# # add tap events to present views
# art.one.on Events.Tap, ->
# 	stack.presentView(view_two)
# art.two.on Events.Tap, ->
# 	stack.presentView(view_three)
# art.three.on Events.Tap, ->
# 	stack.presentView(view_four)

one = new Layer
  frame: Screen.frame
  backgroundColor: "rgba(0,128,255,1)"
two = new Layer
  frame: Screen.frame
  backgroundColor: "red"

ViewStack = require "viewstack"
stack = new ViewStack.Manager

# add views to the stack, passing in sketch layers with the contents parameter
view_one = stack.addView
	contents: one
	title: "One"
	tintColor: "#000"
view_two = stack.addView
	contents: two
	title: "Two"
	tintColor: "#000"

# add tap events to present views
one.on Events.Tap, ->
	stack.presentView(view_two)

stack.presentView(view_one)