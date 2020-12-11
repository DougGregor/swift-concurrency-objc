
extension NSExtensionContext {
  func loadBroadcastingApplicationInfo(completion handler: @escaping (String, String, UIImage?) -> Void)
  func loadBroadcastingApplicationInfo() async -> (String, String, UIImage?)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported")
  func completeRequest(withBroadcast broadcastURL: URL, broadcastConfiguration: RPBroadcastConfiguration, setupInfo: [String : NSCoding & NSObjectProtocol]?)
  @available(iOS 11.0, *)
  func completeRequest(withBroadcast broadcastURL: URL, setupInfo: [String : NSCoding & NSObjectProtocol]?)
}
@available(iOS 10.0, *)
class RPBroadcastHandler : NSObject, NSExtensionRequestHandling {
  func updateServiceInfo(_ serviceInfo: [String : NSCoding & NSObjectProtocol])
  @available(iOS 11.0, *)
  func updateBroadcast(_ broadcastURL: URL)
}
@available(iOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported, use RPBroadcastSampleHandler instead.")
class RPBroadcastMP4ClipHandler : RPBroadcastHandler {
  func processMP4Clip(with mp4ClipURL: URL?, setupInfo: [String : NSObject]?, finished: Bool)
  func finishedProcessingMP4Clip(withUpdatedBroadcastConfiguration broadcastConfiguration: RPBroadcastConfiguration?, error: Error?)
}
@available(iOS 10.0, *)
enum RPSampleBufferType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case video
  case audioApp
  case audioMic
}
@available(iOS 11.0, *)
let RPVideoSampleOrientationKey: String
@available(iOS 11.2, *)
let RPApplicationInfoBundleIdentifierKey: String
@available(iOS 10.0, *)
class RPBroadcastSampleHandler : RPBroadcastHandler {
  func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?)
  func broadcastPaused()
  func broadcastResumed()
  func broadcastFinished()
  @available(iOS 11.2, *)
  func broadcastAnnotated(withApplicationInfo applicationInfo: [AnyHashable : Any])
  func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType)
  func finishBroadcastWithError(_ error: Error)
}
