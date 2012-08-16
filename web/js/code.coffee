if window.DeviceOrientationEvent
  window.addEventListener "deviceorientation", ((event) ->
    
    #alpha: rotation around z-axis
    rotateDegrees = event.alpha
    
    #gamma: left to right
    leftToRight = event.gamma
    
    #beta: front back motion
    frontToBack = event.beta
    handleOrientationEvent frontToBack, leftToRight, rotateDegrees
  ), false

frontToBack = 0
leftToRight = 0
rotateDegrees = 0

print = _.throttle ->
  $('#text').text "#{frontToBack} #{leftToRight} #{rotateDegrees}"
, 2000

handleOrientationEvent = (_frontToBack, _leftToRight, _rotateDegrees) ->
  frontToBack = _frontToBack
  leftToRight = _leftToRight
  rotateDegrees = _rotateDegrees
  print()

#do something amazing