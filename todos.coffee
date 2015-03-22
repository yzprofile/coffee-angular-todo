app = angular.module 'TodoApp', []

app.controller 'TodoCtrl', ($scope) ->
    $scope.todos = []

    $scope.createTodo = (event) ->
        return unless event.keyCode == 13
        console.log "Add new todo: " + $scope.content
        $scope.todos.push({"content": $scope.content, "done": false})
        $scope.content = ""

    $scope.stateChange = (todo) ->
        console.log "State Change: " + todo.content + " - " + todo.done

    $scope.removeTodo = (todo) ->
        console.log "Remove todo: " + todo.content + " - " + todo.done
        $scope.todos.splice($scope.todos.indexOf(todo), 1)
