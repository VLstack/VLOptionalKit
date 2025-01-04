extension Optional where Wrapped == Bool
{
 private var nilValue: Bool?
 {
  get { return self }
  set { self = newValue }
 }

 public var nilableValue: Bool
 {
  get { return nilValue ?? false }
  set { nilValue = newValue }
 }
}
