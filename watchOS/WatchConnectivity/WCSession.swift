
@available(watchOS 2.2, *)
enum WCSessionActivationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notActivated
  case inactive
  case activated
}
@available(watchOS 2.0, *)
class WCSession : NSObject {
  class func isSupported() -> Bool
  class var `default`: WCSession { get }
  weak var delegate: @sil_weak WCSessionDelegate?
  func activate()
  @available(watchOS 2.2, *)
  var activationState: WCSessionActivationState { get }
  @available(watchOS 3.0, *)
  var hasContentPending: Bool { get }
  @available(watchOS 6.0, *)
  var isCompanionAppInstalled: Bool { get }
  var isReachable: Bool { get }
  @available(watchOS 2.0, *)
  var iOSDeviceNeedsUnlockAfterRebootForReachability: Bool { get }
  func sendMessage(_ message: [String : Any], replyHandler: (([String : Any]) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  func sendMessageData(_ data: Data, replyHandler: ((Data) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  var applicationContext: [String : Any] { get }
  func updateApplicationContext(_ applicationContext: [String : Any]) throws
  var receivedApplicationContext: [String : Any] { get }
  func transferUserInfo(_ userInfo: [String : Any] = [:]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(_ file: URL, metadata: [String : Any]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : NSObjectProtocol {
  @available(watchOS 2.2, *)
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?)
  @available(watchOS 6.0, *)
  optional func sessionCompanionAppInstalledDidChange(_ session: WCSession)
  @available(watchOS 2.0, *)
  optional func sessionReachabilityDidChange(_ session: WCSession)
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceiveMessage message: [String : Any])
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void)
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceiveMessageData messageData: Data)
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceiveMessageData messageData: Data, replyHandler: @escaping (Data) -> Void)
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any])
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didFinish userInfoTransfer: WCSessionUserInfoTransfer, error: Error?)
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceiveUserInfo userInfo: [String : Any] = [:])
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didFinish fileTransfer: WCSessionFileTransfer, error: Error?)
  @available(watchOS 2.0, *)
  optional func session(_ session: WCSession, didReceive file: WCSessionFile)
}
