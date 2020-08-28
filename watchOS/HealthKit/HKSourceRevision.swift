
@available(watchOS 2.0, *)
class HKSourceRevision : NSObject, NSSecureCoding, NSCopying {
  var source: HKSource { get }
  var version: String? { get }
  @available(watchOS 4.0, *)
  var productType: String? { get }
  @available(watchOS 4.0, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(watchOS 4.0, *)
  init(source: HKSource, version: String?, productType: String?, operatingSystemVersion: OperatingSystemVersion)
  init(source: HKSource, version: String?)
}
@available(watchOS 4.0, *)
let HKSourceRevisionAnyVersion: String
@available(watchOS 4.0, *)
let HKSourceRevisionAnyProductType: String
@available(watchOS 4.0, *)
let HKSourceRevisionAnyOperatingSystem: OperatingSystemVersion
