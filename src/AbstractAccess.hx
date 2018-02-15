// import sys.db.Object;
// import sys.db.Types;
// import sys.db.Manager;

// class User extends Object {
//     public var id:SId;
//     public var name:SString<255>;

//     public function new (name:String) {
//         super();
//         this.name = name;
//     }

//     override public function toString()
//     return this.name + ' (${this.id})';
// }

// @:forward
// abstract UserManager(Manager<User>) from Manager<User> to Manager<User> {
//     public function new ()
//     this = User.manager;

//     @:arrayAccess
//     inline function getUserById(id:Int)
//     return this.get(id);

//     @:arrayAccess
//     inline function setUserById(id:Null<Int>, user:User):User {
//         if (id != null) user.id = id;
//         user.insert();
//         return user;
//     }
// }
// class AbstractAccess
// {
//     static function main() {
//         Manager.cnx = Sqlite.open('array-access.db');

//         var users:UserManager = new UserManager();
//         if (!TableCreate.exists(users)) {
//             Sys.println('Creating user table...');
//             TableCreate.create(users);
//         }

//         var user:User = new User("Bob");
//         user.insert();
//         Sys.println('Created new user: ${user}');

//         var uid:Int = user.id;
//         users[42] = new User("Douglas");
//         Sys.println('Created another new user: ${users[42]}');

//         var thirdUser = new User("Abed");
//         users[null] = thirdUser;
//         Sys.println('Created yet another new user: ${thirdUser}');

//         user.delete();
//         users[42].delete();
//         thirdUser.delete();
//     }
// }