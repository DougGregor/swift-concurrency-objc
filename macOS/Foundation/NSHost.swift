
@available(macOS 10.0, *)
class Host : NSObject {
  class func current() -> Self
  convenience init(name: String?)
  convenience init(address: String)
  func isEqual(to aHost: Host) -> Bool
  var name: String? { get }
  var names: [String] { get }
  var address: String? { get }
  var addresses: [String] { get }
  @available(macOS 10.6, *)
  var localizedName: String? { get }
}
