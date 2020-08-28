
@available(iOS 13.0, *)
class MXMetric : NSObject, NSSecureCoding {
  func jsonRepresentation() -> Data
  @available(iOS, introduced: 13.0, deprecated: 100000)
  func dictionaryRepresentation() -> [AnyHashable : Any]
  @available(iOS 14.0, *)
  func __dictionaryRepresentation() -> [AnyHashable : Any]
}
