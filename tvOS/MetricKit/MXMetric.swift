
@available(tvOS 13.0, *)
class MXMetric : NSObject, NSSecureCoding {
  func jsonRepresentation() -> Data
  @available(tvOS, introduced: 13.0, deprecated: 100000)
  func dictionaryRepresentation() -> [AnyHashable : Any]
  @available(tvOS 14.0, *)
  func __dictionaryRepresentation() -> [AnyHashable : Any]
}
