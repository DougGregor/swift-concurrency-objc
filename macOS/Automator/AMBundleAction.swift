
@available(macOS 10.4, *)
class AMBundleAction : AMAction, NSCopying, NSSecureCoding {
  func awakeFromBundle()
  var hasView: Bool { get }
  var view: NSView? { get }
  var bundle: Bundle { get }
  var parameters: NSMutableDictionary?
}
