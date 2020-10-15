
@available(tvOS 10.0, *)
class RPBroadcastActivityViewController : UIViewController {
  class func load(handler: @escaping (RPBroadcastActivityViewController?, Error?) -> Void)
  weak var delegate: @sil_weak RPBroadcastActivityViewControllerDelegate?
}
@available(tvOS 10.0, *)
protocol RPBroadcastActivityViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 10.0, *)
  @asyncHandler func broadcastActivityViewController(_ broadcastActivityViewController: RPBroadcastActivityViewController, didFinishWith broadcastController: RPBroadcastController?, error: Error?)
}
@available(tvOS 10.0, *)
class RPBroadcastController : NSObject {
  var isBroadcasting: Bool { get }
  var isPaused: Bool { get }
  var broadcastURL: URL { get }
  var serviceInfo: [String : NSCoding & NSObjectProtocol]? { get }
  weak var delegate: @sil_weak RPBroadcastControllerDelegate?
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported")
  var broadcastExtensionBundleID: String? { get }
  func startBroadcast(handler: @escaping (Error?) -> Void)
  func pauseBroadcast()
  func resumeBroadcast()
  func finishBroadcast(handler: @escaping (Error?) -> Void)
}
@available(tvOS 10.0, *)
protocol RPBroadcastControllerDelegate : NSObjectProtocol {
  @asyncHandler optional func broadcastController(_ broadcastController: RPBroadcastController, didFinishWithError error: Error?)
  @asyncHandler optional func broadcastController(_ broadcastController: RPBroadcastController, didUpdateServiceInfo serviceInfo: [String : NSCoding & NSObjectProtocol])
  @available(tvOS 11.0, *)
  @asyncHandler optional func broadcastController(_ broadcastController: RPBroadcastController, didUpdateBroadcast broadcastURL: URL)
}
