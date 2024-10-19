# Summary
If an extension method is on `T?`, dart doc will not include it on `T`’s API reference.

# Repro

This library has extension methods on the `Widget` and `Widget?` types:

```dart
class Widget {}

extension NullableDecorators on Widget? {
  Widget padding() => Widget();
}

extension Decorators on Widget {
  Widget expanded() => Widget();
}
```

# Expected result

`dart doc` includes both the `.padding` and `.expanded` extension methods on the `Widget` class.

# Actual result

The `.padding` extension method is missing:

![](Screenshot.png)
