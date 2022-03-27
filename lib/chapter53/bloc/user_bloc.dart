import 'package:bloc/bloc.dart';
import 'package:sprint1/chapter53/model/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc() : super(UninitializedUser());

  @override
  Stream<User> mapEventToState(int event) async* {
    User user;
    try {
      user = await User.getUserFromAPI(event);
      yield user;
    } catch (_) {}
  }
}
