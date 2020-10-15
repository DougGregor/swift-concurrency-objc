
@available(iOS 11.0, *)
let FPUIErrorDomain: String
struct FPUIActionIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 11.0, *)
enum FPUIExtensionErrorCode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case userCancelled
  case failed
}
@available(iOS 11.0, *)
class FPUIActionExtensionContext : NSExtensionContext {
  var domainIdentifier: NSFileProviderDomainIdentifier? { get }
  func completeRequest()
}
