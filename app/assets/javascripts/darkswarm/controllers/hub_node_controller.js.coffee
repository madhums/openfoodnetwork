Darkswarm.controller "HubNodeCtrl", ($scope, Navigation, $location, $anchorScroll, $templateCache, CurrentHub) ->
  $scope.toggle = ->
    Navigation.navigate $scope.hub.path

  $scope.open = ->
    $location.path() == $scope.hub.path
  
  $scope.current = ->
    $scope.hub.id is CurrentHub.id

  if $scope.open()
    $anchorScroll()

