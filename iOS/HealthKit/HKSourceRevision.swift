
@available(iOS 9.0, *)
class HKSourceRevision : NSObject, NSSecureCoding, NSCopying {
  var source: HKSource { get }
  var version: String? { get }
  @available(iOS 11.0, *)
  var productType: String? { get }
  @available(iOS 11.0, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(iOS 11.0, *)
  init(source: HKSource, version: String?, productType: String?, operatingSystemVersion: OperatingSystemVersion)
  init(source: HKSource, version: String?)
}
@available(iOS 11.0, *)
let HKSourceRevisionAnyVersion: String
@available(iOS 11.0, *)
let HKSourceRevisionAnyProductType: String
@available(iOS 11.0, *)
let HKSourceRevisionAnyOperatingSystem: OperatingSystemVersion
