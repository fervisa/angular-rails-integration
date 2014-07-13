angular.module('demoApp').filter 'boolean', ['$filter', ($filter) ->
  (value) ->
    if value then 'yes' else 'no'
]
