
@available(iOS 9.0, *)
let AVAssetDownloadTaskMinimumRequiredMediaBitrateKey: String
@available(iOS 14.0, *)
let AVAssetDownloadTaskMinimumRequiredPresentationSizeKey: String
@available(iOS 9.0, *)
let AVAssetDownloadTaskMediaSelectionKey: String
@available(iOS 13.0, *)
let AVAssetDownloadTaskMediaSelectionPrefersMultichannelKey: String
@available(iOS 14.0, *)
let AVAssetDownloadTaskPrefersHDRKey: String
@available(iOS 9.0, *)
class AVAssetDownloadTask : URLSessionTask {
  var urlAsset: AVURLAsset { get }
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "No longer supported")
  var destinationURL: URL { get }
  var options: [String : Any]? { get }
  var loadedTimeRanges: [NSValue] { get }
}
@available(iOS 11.0, *)
class AVAggregateAssetDownloadTask : URLSessionTask {
  var urlAsset: AVURLAsset { get }
}
@available(iOS 9.0, *)
protocol AVAssetDownloadDelegate : URLSessionTaskDelegate {
  @available(iOS 10.0, *)
  @asyncHandler optional func urlSession(_ session: URLSession, assetDownloadTask: AVAssetDownloadTask, didFinishDownloadingTo location: URL)
  @available(iOS 9.0, *)
  @asyncHandler optional func urlSession(_ session: URLSession, assetDownloadTask: AVAssetDownloadTask, didLoad timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [NSValue], timeRangeExpectedToLoad: CMTimeRange)
  @available(iOS 9.0, *)
  @asyncHandler optional func urlSession(_ session: URLSession, assetDownloadTask: AVAssetDownloadTask, didResolve resolvedMediaSelection: AVMediaSelection)
  @available(iOS 11.0, *)
  optional func urlSession(_ session: URLSession, aggregateAssetDownloadTask: AVAggregateAssetDownloadTask, willDownloadTo location: URL)
  @available(iOS 11.0, *)
  @asyncHandler optional func urlSession(_ session: URLSession, aggregateAssetDownloadTask: AVAggregateAssetDownloadTask, didCompleteFor mediaSelection: AVMediaSelection)
  @available(iOS 11.0, *)
  @asyncHandler optional func urlSession(_ session: URLSession, aggregateAssetDownloadTask: AVAggregateAssetDownloadTask, didLoad timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [NSValue], timeRangeExpectedToLoad: CMTimeRange, for mediaSelection: AVMediaSelection)
}
@available(iOS 9.0, *)
class AVAssetDownloadURLSession : URLSession {
  /*not inherited*/ init(configuration: URLSessionConfiguration, assetDownloadDelegate delegate: AVAssetDownloadDelegate?, delegateQueue: OperationQueue?)
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "No longer supported")
  func makeAssetDownloadTask(asset URLAsset: AVURLAsset, destinationURL: URL, options: [String : Any]? = nil) -> AVAssetDownloadTask?
  @available(iOS 10.0, *)
  func makeAssetDownloadTask(asset URLAsset: AVURLAsset, assetTitle title: String, assetArtworkData artworkData: Data?, options: [String : Any]? = nil) -> AVAssetDownloadTask?
  @available(iOS 11.0, *)
  func aggregateAssetDownloadTask(with URLAsset: AVURLAsset, mediaSelections: [AVMediaSelection], assetTitle title: String, assetArtworkData artworkData: Data?, options: [String : Any]? = nil) -> AVAggregateAssetDownloadTask?
}
