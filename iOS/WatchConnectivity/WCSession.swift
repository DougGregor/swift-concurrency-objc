
@available(iOS 9.3, *)
enum WCSessionActivationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notActivated
  case inactive
  case activated
}
@available(iOS 9.0, *)
class WCSession : NSObject {
  class func isSupported() -> Bool
  class var `default`: WCSession { get }
  weak var delegate: @sil_weak WCSessionDelegate?
  func activate()
  @available(iOS 9.3, *)
  var activationState: WCSessionActivationState { get }
  @available(iOS 10.0, *)
  var hasContentPending: Bool { get }
  var isPaired: Bool { get }
  var isWatchAppInstalled: Bool { get }
  var isComplicationEnabled: Bool { get }
  @available(iOS 10.0, *)
  var remainingComplicationUserInfoTransfers: Int { get }
  var watchDirectoryURL: URL? { get }
  var isReachable: Bool { get }
  func sendMessage(_ message: [String : Any], replyHandler: (([String : Any]) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  func sendMessageData(_ data: Data, replyHandler: ((Data) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  var applicationContext: [String : Any] { get }
  func updateApplicationContext(_ applicationContext: [String : Any]) throws
  var receivedApplicationContext: [String : Any] { get }
  func transferUserInfo(_ userInfo: [String : Any] = [:]) -> WCSessionUserInfoTransfer
  func transferCurrentComplicationUserInfo(_ userInfo: [String : Any] = [:]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(_ file: URL, metadata: [String : Any]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : NSObjectProtocol {
  @available(iOS 9.3, *)
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?)
  @available(iOS 9.3, *)
  func sessionDidBecomeInactive(_ session: WCSession)
  @available(iOS 9.3, *)
  func sessionDidDeactivate(_ session: WCSession)
  @available(iOS 9.0, *)
  optional func sessionWatchStateDidChange(_ session: WCSession)
  @available(iOS 9.0, *)
  optional func sessionReachabilityDidChange(_ session: WCSession)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessage message: [String : Any])
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessageData messageData: Data)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessageData messageData: Data, replyHandler: @escaping (Data) -> Void)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any])
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didFinish userInfoTransfer: WCSessionUserInfoTransfer, error: Error?)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveUserInfo userInfo: [String : Any] = [:])
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didFinish fileTransfer: WCSessionFileTransfer, error: Error?)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceive file: WCSessionFile)
}
