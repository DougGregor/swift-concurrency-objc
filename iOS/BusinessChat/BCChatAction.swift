
extension BCChatAction {
  struct Parameter : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension BCChatAction.Parameter {
  @available(iOS 11.3, *)
  static let intent: BCChatAction.Parameter
  @available(iOS 11.3, *)
  static let group: BCChatAction.Parameter
  @available(iOS 11.3, *)
  static let body: BCChatAction.Parameter
}
@available(iOS 11.3, *)
class BCChatAction : NSObject {
  @available(iOS 11.3, *)
  class func openTranscript(businessIdentifier: String, intentParameters: [BCChatAction.Parameter : String])
}
