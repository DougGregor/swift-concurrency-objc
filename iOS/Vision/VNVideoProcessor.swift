
extension VNVideoProcessor {
  @available(iOS 14.0, *)
  class Cadence : NSObject, NSCopying {
  }
  @available(iOS 14.0, *)
  class FrameRateCadence : VNVideoProcessor.Cadence {
    init(_ frameRate: Int)
    var frameRate: Int { get }
  }
  @available(iOS 14.0, *)
  class TimeIntervalCadence : VNVideoProcessor.Cadence {
    init(_ timeInterval: CFTimeInterval)
    var timeInterval: CFTimeInterval { get }
  }
  @available(iOS 14.0, *)
  class RequestProcessingOptions : NSObject, NSCopying {
    @NSCopying var cadence: VNVideoProcessor.Cadence?
  }
}
@available(iOS 14.0, *)
class VNVideoProcessor : NSObject {
  init(url videoURL: URL)
  func addRequest(_ request: VNRequest, processingOptions: VNVideoProcessor.RequestProcessingOptions) throws
  @available(iOS, introduced: 14.0, deprecated: 14.0)
  func add(_ request: VNRequest, withProcessingOptions processingOptions: [VNVideoProcessingOption : Any] = [:]) throws
  func removeRequest(_ request: VNRequest) throws
  func analyze(_ timeRange: CMTimeRange) throws
  @available(iOS, introduced: 14.0, deprecated: 14.0)
  func analyze(with timeRange: CMTimeRange) throws
  func cancel()
}
