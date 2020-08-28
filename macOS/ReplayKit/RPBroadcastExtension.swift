
extension NSExtensionContext {
  @available(macOS 11.0, *)
  func loadBroadcastingApplicationInfo(completion handler: @escaping (String, String, NSImage?) -> Void)
  @available(macOS 11.0, *)
  func completeRequest(withBroadcast broadcastURL: URL, setupInfo: [String : NSCoding & NSObjectProtocol]?)
}
@available(macOS 11.0, *)
class RPBroadcastHandler : NSObject, NSExtensionRequestHandling {
  func updateServiceInfo(_ serviceInfo: [String : NSCoding & NSObjectProtocol])
  @available(macOS 11.0, *)
  func updateBroadcast(_ broadcastURL: URL)
}
@available(macOS 11.0, *)
enum RPSampleBufferType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case video
  case audioApp
  case audioMic
}
@available(macOS 11.0, *)
let RPVideoSampleOrientationKey: String
@available(macOS 11.0, *)
let RPApplicationInfoBundleIdentifierKey: String
@available(macOS 11.0, *)
class RPBroadcastSampleHandler : RPBroadcastHandler {
  func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?)
  func broadcastPaused()
  func broadcastResumed()
  func broadcastFinished()
  func broadcastAnnotated(withApplicationInfo applicationInfo: [AnyHashable : Any])
  func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType)
  func finishBroadcastWithError(_ error: Error)
}
