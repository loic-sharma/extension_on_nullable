class Widget {}

extension NullableDecorators on Widget? {
  Widget padding() => Widget();
}

extension Decorators on Widget {
  Widget expanded() => Widget();
}
