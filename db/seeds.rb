# SEED FILE

# Test Users
@user1 = User.create(name: "User 1", email: "user1@test.com", password: "test1234")
@user2 = User.create(name: "User 2", email: "user2@test.com", password: "test1234")

# User 1 accounts
@u1a1 = Account.create(name: "netflix", email: "user1@test.com", password: "test1234", user_id: @user1.id)
@u1a2 = Account.create(name: "gmail", email: "user1@test.com", password: "test1234", user_id: @user1.id)

# User 2 accounts
@u2a1 = Account.create(name: "netflix", email: "user2@test.com", password: "test1234", user_id: @user2.id)
@u2a2 = Account.create(name: "gmail", email: "user2@test.com", password: "test1234", user_id: @user2.id)
