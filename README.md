# Run the app:
```
docker-compose build
docker-compose up
docker-compose run web rake db:create
docker-compose run web rake db:migrate
```
### Go to:
http://localhost:3000/graphiql

in upper field put the queries and mutations, in lower field(QUERY VAIEABLES) put variables one by one
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
# 1
{
  "firstName": "Denys",
  "lastName": "Husiev"
}
# 2
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
# 1
{
  "userId": 1,
  "approverId": 2,
  "name": "GraphQl - create small test application, connect with Rails, create few queries using Postman"
}
# 2
{
  "userId": 1,
  "approverId": 2,
  "name": "Improve knowledge in Docker technology. Dockerize rails app with postgresql"
}
# 3
{
  "userId": 1,
  "approverId": 2,
  "name": "Improve React knowledges. Pass the course on Udemy"
}
```
## query a user and see all his goals
```
{
  user(id: 1) {
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
  user(id: 2) {
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
# 1
{
  "id": 1,
  "status": "in_progress",
  "progress": 50
}
# 2
{
  "id": 2,
  "status": "done",
  "progress": 100
}
# 3
{
  "id": 3,
  "status": "done",
  "progress": 100
}
# 4
{
  "id": 1,
  "status": "done",
  "progress": 100
}
```