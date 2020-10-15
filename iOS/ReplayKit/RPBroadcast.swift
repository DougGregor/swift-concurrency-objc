
@available(iOS 10.0, *)
class RPBroadcastActivityViewController : UIViewController {
  class func load(handler: @escaping (RPBroadcastActivityViewController?, Error?) -> Void)
  @available(iOS 11.0, *)
  class func load(withPreferredExtension preferredExtension: String?, handler: @escaping (RPBroadcastActivityViewController?, Error?) -> Void)
  weak var delegate: @sil_weak RPBroadcastActivityViewControllerDelegate?
}
@available(iOS 10.0, *)
protocol RPBroadcastActivityViewControllerDelegate : NSObjectProtocol {
  @available(iOS 10.0, *)
  func broadcastActivityViewController(_ broadcastActivityViewController: RPBroadcastActivityViewController, didFinishWith broadcastController: RPBroadcastController?, error: Error?)
}
@available(iOS 10.0, *)
class RPBroadcastController : NSObject {
  var isBroadcasting: Bool { get }
  var isPaused: Bool { get }
  var broadcastURL: URL { get }
  var serviceInfo: [String : NSCoding & NSObjectProtocol]? { get }
  weak var delegate: @sil_weak RPBroadcastControllerDelegate?
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported")
  var broadcastExtensionBundleID: String? { get }
  func startBroadcast(handler: @escaping (Error?) -> Void)
  func pauseBroadcast()
  func resumeBroadcast()
  func finishBroadcast(handler: @escaping (Error?) -> Void)
}
@available(iOS 10.0, *)
protocol RPBroadcastControllerDelegate : NSObjectProtocol {
  optional func broadcastController(_ broadcastController: RPBroadcastController, didFinishWithError error: Error?)
  optional func broadcastController(_ broadcastController: RPBroadcastController, didUpdateServiceInfo serviceInfo: [String : NSCoding & NSObjectProtocol])
  @available(iOS 11.0, *)
  optional func broadcastController(_ broadcastController: RPBroadcastController, didUpdateBroadcast broadcastURL: URL)
}
@available(iOS 12.0, *)
class RPSystemBroadcastPickerView : UIView, NSCoding {
  var preferredExtension: String?
  var showsMicrophoneButton: Bool
}
