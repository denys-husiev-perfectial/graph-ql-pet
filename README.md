# Instuctions to verify the app:

## create users
```
mutation CreateUser($firstName: String!, $lastName: String!){
  createUser(firstName: $firstName, lastName: $lastName) {
    id
    firstName
    lastName
  }
}
```
### _variables_
```
{
  "firstName": "Denys",
  "lastName": "Husiev"
}
{
  "firstName": "Mykola",
  "lastName": "Bokhonko"
}
```

## create goals
```
mutation CreateGoal($userId: ID!, $approverId: ID, $name: String!){
  createGoal(userId: $userId, approverId: $approverId, name: $name) {
    id
    name
    progress
    status
    user {
      id
      firstName
      lastName
    }
    approver {
      id
      firstName
      lastName
    }
  }
}
```
### variables
```
{
  "userId": 6,
  "approverId": 7,
  "name": "GraphQl - create small test application, connect with Rails, create few queries using Postman"
}
{
  "userId": 6,
  "approverId": 7,
  "name": "Improve knowledge in Docker technology. Dockerize rails app with postgresql"
}
{
  "userId": 6,
  "approverId": 7,
  "name": "Improve React knowledges. Pass the course on Udemy"
}
```
## query a user and see all his goals
```
{
  user(id: 6) {
    firstName
    lastName
    goals {
      id
      name
      status
      progress
    }
  }
}
```
## query approver and see goals he needs to approve
```
{
  user(id: 7) {
    firstName
    lastName
    goalsToApprove {
      id
      name
      status
      progress
    }
  }
}
```
## update goals status
```
mutation UpdateGoal($id: ID!, $status: GoalStatusEnum!, $progress: Int) {
  updateGoal(id: $id, status: $status, progress: $progress) {
    id
    name
    progress
    status
    user {
      id
      firstName
      lastName
    }
    approver {
      id
      firstName
      lastName
    }
  }
}
```
### variables
```
{
  "id": 1,
  "status": "in_progress",
  "progress": 50
}
{
  "id": 2,
  "status": "done",
  "progress": 100
}
{
  "id": 3,
  "status": "done",
  "progress": 100
}
{
  "id": 1,
  "status": "done",
  "progress": 100
}
```