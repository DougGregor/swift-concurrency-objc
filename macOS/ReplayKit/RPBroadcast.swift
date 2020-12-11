
class RPBroadcastActivityController : NSObject {
  @available(macOS 11.0, *)
  class func showBroadcastPicker(at point: CGPoint, from window: NSWindow?, preferredExtensionIdentifier preferredExtension: String?, completionHandler handler: @escaping (RPBroadcastActivityController?, Error?) -> Void)
  @available(macOS 11.0, *)
  class func showBroadcastPicker(at point: CGPoint, from window: NSWindow?, preferredExtensionIdentifier preferredExtension: String?) async throws -> RPBroadcastActivityController
  weak var delegate: @sil_weak RPBroadcastActivityControllerDelegate?
}
@available(macOS 11.0, *)
protocol RPBroadcastActivityControllerDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  func broadcastActivityController(_ broadcastActivityController: RPBroadcastActivityController, didFinishWith broadcastController: RPBroadcastController?, error: Error?)
}
@available(macOS 11.0, *)
class RPBroadcastController : NSObject {
  var isBroadcasting: Bool { get }
  var isPaused: Bool { get }
  var broadcastURL: URL { get }
  var serviceInfo: [String : NSCoding & NSObjectProtocol]? { get }
  weak var delegate: @sil_weak RPBroadcastControllerDelegate?
  func startBroadcast(handler: @escaping (Error?) -> Void)
  func pauseBroadcast()
  func resumeBroadcast()
  func finishBroadcast(handler: @escaping (Error?) -> Void)
}
@available(macOS 11.0, *)
protocol RPBroadcastControllerDelegate : NSObjectProtocol {
  optional func broadcastController(_ broadcastController: RPBroadcastController, didFinishWithError error: Error?)
  optional func broadcastController(_ broadcastController: RPBroadcastController, didUpdateServiceInfo serviceInfo: [String : NSCoding & NSObjectProtocol])
  optional func broadcastController(_ broadcastController: RPBroadcastController, didUpdateBroadcast broadcastURL: URL)
}
