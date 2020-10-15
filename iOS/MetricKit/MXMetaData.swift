
@available(iOS 13.0, *)
class MXMetaData : NSObject, NSSecureCoding {
  var regionFormat: String { get }
  var osVersion: String { get }
  var deviceType: String { get }
  var applicationBuildVersion: String { get }
  @available(iOS 14.0, *)
  var platformArchitecture: String { get }
  func jsonRepresentation() -> Data
  @available(iOS, introduced: 13.0, deprecated: 100000)
  func dictionaryRepresentation() -> [AnyHashable : Any]
  @available(iOS 14.0, *)
  func __dictionaryRepresentation() -> [AnyHashable : Any]
}
