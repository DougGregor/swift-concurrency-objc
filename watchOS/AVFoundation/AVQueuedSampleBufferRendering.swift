
@available(watchOS 1.0, *)
enum AVQueuedSampleBufferRenderingStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case rendering
  case failed
}
@available(watchOS 4.0, *)
protocol AVQueuedSampleBufferRendering : NSObjectProtocol {
  var timebase: CMTimebase { get }
  func enqueue(_ sampleBuffer: CMSampleBuffer)
  func flush()
  var isReadyForMoreMediaData: Bool { get }
  func requestMediaDataWhenReady(on queue: DispatchQueue, using block: @escaping () -> Void)
  func stopRequestingMediaData()
}
