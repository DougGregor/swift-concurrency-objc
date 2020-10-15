
struct SKCloudServiceSetupOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct SKCloudServiceSetupAction : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct SKCloudServiceSetupMessageIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 10.1, *)
class SKCloudServiceSetupViewController : UIViewController {
  @available(iOS 10.1, *)
  weak var delegate: @sil_weak SKCloudServiceSetupViewControllerDelegate?
  @available(iOS 10.1, *)
  func load(options: [SKCloudServiceSetupOptionsKey : Any] = [:], completionHandler: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 10.1, *)
  func load(options: [SKCloudServiceSetupOptionsKey : Any] = [:]) async throws -> Bool
}
protocol SKCloudServiceSetupViewControllerDelegate : NSObjectProtocol {
  @available(iOS 10.1, *)
  @asyncHandler optional func cloudServiceSetupViewControllerDidDismiss(_ cloudServiceSetupViewController: SKCloudServiceSetupViewController)
}
extension SKCloudServiceSetupOptionsKey {
  @available(iOS 10.1, *)
  static let action: SKCloudServiceSetupOptionsKey
  @available(iOS 10.1, *)
  static let iTunesItemIdentifier: SKCloudServiceSetupOptionsKey
  @available(iOS 10.3, *)
  static let affiliateToken: SKCloudServiceSetupOptionsKey
  @available(iOS 10.3, *)
  static let campaignToken: SKCloudServiceSetupOptionsKey
  @available(iOS 11.0, *)
  static let messageIdentifier: SKCloudServiceSetupOptionsKey
}
extension SKCloudServiceSetupAction {
  @available(iOS 10.1, *)
  static let subscribe: SKCloudServiceSetupAction
}
extension SKCloudServiceSetupMessageIdentifier {
  @available(iOS 11.0, *)
  static let join: SKCloudServiceSetupMessageIdentifier
  @available(iOS 11.0, *)
  static let connect: SKCloudServiceSetupMessageIdentifier
  @available(iOS 11.0, *)
  static let addMusic: SKCloudServiceSetupMessageIdentifier
  @available(iOS 11.0, *)
  static let playMusic: SKCloudServiceSetupMessageIdentifier
}
