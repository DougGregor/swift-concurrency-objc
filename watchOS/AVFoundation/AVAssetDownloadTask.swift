
@available(watchOS 2.0, *)
let AVAssetDownloadTaskMinimumRequiredMediaBitrateKey: String
@available(watchOS 7.0, *)
let AVAssetDownloadTaskMinimumRequiredPresentationSizeKey: String
@available(watchOS 2.0, *)
let AVAssetDownloadTaskMediaSelectionKey: String
@available(watchOS 6.0, *)
let AVAssetDownloadTaskMediaSelectionPrefersMultichannelKey: String
@available(watchOS 7.0, *)
let AVAssetDownloadTaskPrefersHDRKey: String
@available(watchOS 2.0, *)
class AVAssetDownloadTask : URLSessionTask {
  var urlAsset: AVURLAsset { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "No longer supported")
  var destinationURL: URL { get }
  var options: [String : Any]? { get }
  var loadedTimeRanges: [NSValue] { get }
}
@available(watchOS 4.0, *)
class AVAggregateAssetDownloadTask : URLSessionTask {
  var urlAsset: AVURLAsset { get }
}
@available(watchOS 2.0, *)
protocol AVAssetDownloadDelegate : URLSessionTaskDelegate {
  @available(watchOS 3.0, *)
  optional func urlSession(_ session: URLSession, assetDownloadTask: AVAssetDownloadTask, didFinishDownloadingTo location: URL)
  @available(watchOS 2.0, *)
  optional func urlSession(_ session: URLSession, assetDownloadTask: AVAssetDownloadTask, didLoad timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [NSValue], timeRangeExpectedToLoad: CMTimeRange)
  @available(watchOS 2.0, *)
  optional func urlSession(_ session: URLSession, assetDownloadTask: AVAssetDownloadTask, didResolve resolvedMediaSelection: AVMediaSelection)
  @available(watchOS 4.0, *)
  optional func urlSession(_ session: URLSession, aggregateAssetDownloadTask: AVAggregateAssetDownloadTask, willDownloadTo location: URL)
  @available(watchOS 4.0, *)
  optional func urlSession(_ session: URLSession, aggregateAssetDownloadTask: AVAggregateAssetDownloadTask, didCompleteFor mediaSelection: AVMediaSelection)
  @available(watchOS 4.0, *)
  optional func urlSession(_ session: URLSession, aggregateAssetDownloadTask: AVAggregateAssetDownloadTask, didLoad timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [NSValue], timeRangeExpectedToLoad: CMTimeRange, for mediaSelection: AVMediaSelection)
}
@available(watchOS 2.0, *)
class AVAssetDownloadURLSession : URLSession {
  /*not inherited*/ init(configuration: URLSessionConfiguration, assetDownloadDelegate delegate: AVAssetDownloadDelegate?, delegateQueue: OperationQueue?)
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "No longer supported")
  func makeAssetDownloadTask(asset URLAsset: AVURLAsset, destinationURL: URL, options: [String : Any]? = nil) -> AVAssetDownloadTask?
  @available(watchOS 3.0, *)
  func makeAssetDownloadTask(asset URLAsset: AVURLAsset, assetTitle title: String, assetArtworkData artworkData: Data?, options: [String : Any]? = nil) -> AVAssetDownloadTask?
  @available(watchOS 4.0, *)
  func aggregateAssetDownloadTask(with URLAsset: AVURLAsset, mediaSelections: [AVMediaSelection], assetTitle title: String, assetArtworkData artworkData: Data?, options: [String : Any]? = nil) -> AVAggregateAssetDownloadTask?
}
