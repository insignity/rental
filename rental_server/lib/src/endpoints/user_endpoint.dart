import 'package:serverpod/serverpod.dart';

import '../generated/user_class.dart';

class UserEndpoint extends Endpoint {
  Future<User> create(Session session, User user) async {
    await User.insert(session, user);
    return user;
  }

  Future<User?> login(Session session, User user) async {
    final response = await User.find(
      session,
      where: (table) => table.login.equals(user.login),
    );
    if (response.isNotEmpty && response.first.password == user.password) {
      return user;
    } else {
      return null;
    }
  }

  Future<List<User>> readAll(Session session) async {
    final response = await User.find(session);
    return response;
  }

  Future<User> update(Session session, User user) async {
    await User.update(session, user);
    return user;
  }

  Future<void> delete(Session session, int id) async {
    await User.delete(session, where: (user) => user.id.equals(id));
  }
}
