// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Failures {
  String errmassage;
  Failures({
    required this.errmassage,
  });
}

class ServerFailure extends Failures {
  ServerFailure({required super.errmassage});
}
