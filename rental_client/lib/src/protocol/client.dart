/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:rental_client/src/protocol/user_class.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointUser extends _i1.EndpointRef {
  _EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i3.User> create(_i3.User user) =>
      caller.callServerEndpoint<_i3.User>(
        'user',
        'create',
        {'user': user},
      );

  _i2.Future<_i3.User?> login(_i3.User user) =>
      caller.callServerEndpoint<_i3.User?>(
        'user',
        'login',
        {'user': user},
      );

  _i2.Future<List<_i3.User>> readAll() =>
      caller.callServerEndpoint<List<_i3.User>>(
        'user',
        'readAll',
        {},
      );

  _i2.Future<_i3.User> update(_i3.User user) =>
      caller.callServerEndpoint<_i3.User>(
        'user',
        'update',
        {'user': user},
      );

  _i2.Future<void> delete(int id) => caller.callServerEndpoint<void>(
        'user',
        'delete',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    user = _EndpointUser(this);
  }

  late final _EndpointExample example;

  late final _EndpointUser user;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'user': user,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
