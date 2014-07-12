#= require spec_helper

describe 'usersCtrl', ->
  beforeEach ->
    @controller 'usersCtrl', { $scope: @scope }
    @User = @model 'User'
    @users = [
      {'id':1,'first_name':'Juan','last_name':'Pérez'},
      {'id':2,'first_name':'Pedro','last_name':'López'}
    ]
    @http.whenGET('/users.json').respond 200, @users
    @http.flush()

  it 'loads users in scope', ->
    expect(JSON.stringify(@scope.users) == JSON.stringify(@users)).toEqual true

  describe '#edit', ->
    it 'sets user as selectedUser', ->
      @scope.edit @users[0]
      expect(@scope.selectedUser).toEqual @users[0]

  describe '#selected', ->
    beforeEach ->
      @user = @users[0]

    it 'returns false', ->
      expect(@scope.selected(@user)).toEqual false

    it 'returns true', ->
      @scope.edit @user
      expect(@scope.selected(@user)).toEqual true

  describe '#close', ->
    it 'sets selecetUser to null', ->
      @scope.edit @users[0]
      @scope.close()
      expect(@scope.selectedUser).toEqual null

  describe '#update', ->
    beforeEach ->
      @user = @users[0]

    it 'sends update request to server', ->
      @http.expectPUT('/users/1.json').respond(204, '')
      @user.first_name = 'Jaime'
      @scope.update @user
      @http.flush()
