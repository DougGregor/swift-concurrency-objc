
extension BCChatAction {
  struct Parameter : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension BCChatAction.Parameter {
  @available(macOS 10.13.4, *)
  static let intent: BCChatAction.Parameter
  @available(macOS 10.13.4, *)
  static let group: BCChatAction.Parameter
  @available(macOS 10.13.4, *)
  static let body: BCChatAction.Parameter
}
@available(macOS 10.13.4, *)
class BCChatAction : NSObject {
  @available(macOS 10.13.4, *)
  class func openTranscript(businessIdentifier: String, intentParameters: [BCChatAction.Parameter : String])
}
