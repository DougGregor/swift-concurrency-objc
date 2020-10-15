
extension NSExtensionContext {
  func loadBroadcastingApplicationInfo(completion handler: @escaping (String, String, UIImage?) -> Void)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported")
  func completeRequest(withBroadcast broadcastURL: URL, broadcastConfiguration: RPBroadcastConfiguration, setupInfo: [String : NSCoding & NSObjectProtocol]?)
  @available(tvOS 11.0, *)
  func completeRequest(withBroadcast broadcastURL: URL, setupInfo: [String : NSCoding & NSObjectProtocol]?)
}
@available(tvOS 10.0, *)
class RPBroadcastHandler : NSObject, NSExtensionRequestHandling {
  func updateServiceInfo(_ serviceInfo: [String : NSCoding & NSObjectProtocol])
  @available(tvOS 11.0, *)
  func updateBroadcast(_ broadcastURL: URL)
}
@available(tvOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported, use RPBroadcastSampleHandler instead.")
class RPBroadcastMP4ClipHandler : RPBroadcastHandler {
  func processMP4Clip(with mp4ClipURL: URL?, setupInfo: [String : NSObject]?, finished: Bool)
  func finishedProcessingMP4Clip(withUpdatedBroadcastConfiguration broadcastConfiguration: RPBroadcastConfiguration?, error: Error?)
}
@available(tvOS 10.0, *)
enum RPSampleBufferType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case video
  case audioApp
  case audioMic
}
@available(tvOS 11.0, *)
let RPVideoSampleOrientationKey: String
@available(tvOS 10.0, *)
class RPBroadcastSampleHandler : RPBroadcastHandler {
  func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?)
  func broadcastPaused()
  func broadcastResumed()
  func broadcastFinished()
  func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType)
  func finishBroadcastWithError(_ error: Error)
}
