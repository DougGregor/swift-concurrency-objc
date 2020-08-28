
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
protocol SKCloudServiceSetupViewControllerDelegate : NSObjectProtocol {
}
extension SKCloudServiceSetupOptionsKey {
  @available(tvOS 10.1, *)
  static let action: SKCloudServiceSetupOptionsKey
  @available(tvOS 10.1, *)
  static let iTunesItemIdentifier: SKCloudServiceSetupOptionsKey
  @available(tvOS 10.3, *)
  static let affiliateToken: SKCloudServiceSetupOptionsKey
  @available(tvOS 10.3, *)
  static let campaignToken: SKCloudServiceSetupOptionsKey
  @available(tvOS 11.0, *)
  static let messageIdentifier: SKCloudServiceSetupOptionsKey
}
extension SKCloudServiceSetupAction {
  @available(tvOS 10.1, *)
  static let subscribe: SKCloudServiceSetupAction
}
extension SKCloudServiceSetupMessageIdentifier {
  @available(tvOS 11.0, *)
  static let join: SKCloudServiceSetupMessageIdentifier
  @available(tvOS 11.0, *)
  static let connect: SKCloudServiceSetupMessageIdentifier
  @available(tvOS 11.0, *)
  static let addMusic: SKCloudServiceSetupMessageIdentifier
  @available(tvOS 11.0, *)
  static let playMusic: SKCloudServiceSetupMessageIdentifier
}
