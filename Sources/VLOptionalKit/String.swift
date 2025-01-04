import VLStringKit

extension Optional where Wrapped == String
{
 private var nilValue: String?
 {
  get { return self }
  set { self = newValue }
 }

 public var nilableValue: String
 {
  get { return nilValue ?? "" }
  set
  {
   let trimmed = newValue.trimmed
   nilValue = trimmed.isEmpty ? nil : trimmed
  }
 }
}
