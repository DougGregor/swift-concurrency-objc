
@available(iOS 8.0, *)
class HKSource : NSObject, NSSecureCoding, NSCopying {
  var name: String { get }
  var bundleIdentifier: String { get }
  class func `default`() -> HKSource
}
