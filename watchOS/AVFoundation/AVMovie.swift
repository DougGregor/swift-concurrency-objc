
@available(watchOS 6.0, *)
let AVMovieReferenceRestrictionsKey: String
@available(watchOS 6.0, *)
class AVMovie : AVAsset, NSCopying, NSMutableCopying {
  class func movieTypes() -> [AVFileType]
  init(url URL: URL, options: [String : Any]? = nil)
  @available(watchOS 6.0, *)
  init(data: Data, options: [String : Any]? = nil)
  var url: URL? { get }
  @available(watchOS 6.0, *)
  var data: Data? { get }
  @available(watchOS 6.0, *)
  var defaultMediaDataStorage: AVMediaDataStorage? { get }
  var canContainMovieFragments: Bool { get }
  @available(watchOS 6.0, *)
  var containsMovieFragments: Bool { get }
}
@available(watchOS 6.0, *)
struct AVMovieWritingOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var addMovieHeaderToDestination: AVMovieWritingOptions { get }
  static var truncateDestinationToMovieHeaderOnly: AVMovieWritingOptions { get }
}
extension AVMovie {
  @available(watchOS 6.0, *)
  func makeMovieHeader(fileType: AVFileType) throws -> Data
  @available(watchOS 6.0, *)
  func writeHeader(to URL: URL, fileType: AVFileType, options: AVMovieWritingOptions = []) throws
  @available(watchOS 6.0, *)
  func `is`(compatibleWithFileType fileType: AVFileType) -> Bool
}
extension AVMovie {
}
@available(watchOS 6.0, *)
class AVMutableMovie : AVMovie {
  init(url URL: URL, options: [String : Any]? = nil, error: ()) throws
  init(data: Data, options: [String : Any]? = nil, error: ()) throws
  init(settingsFrom movie: AVMovie?, options: [String : Any]? = nil) throws
  var timescale: CMTimeScale
}
extension AVMutableMovie {
  var isModified: Bool
  var interleavingPeriod: CMTime
  func insertTimeRange(_ timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime, copySampleData: Bool) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scale(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovie {
  func mutableTrack(compatibleWith track: AVAssetTrack) -> AVMutableMovieTrack?
  func addMutableTrack(withMediaType mediaType: AVMediaType, copySettingsFrom track: AVAssetTrack?, options: [String : Any]? = nil) -> AVMutableMovieTrack?
  func addMutableTracksCopyingSettings(from existingTracks: [AVAssetTrack], options: [String : Any]? = nil) -> [AVMutableMovieTrack]
  func removeTrack(_ track: AVMovieTrack)
}
extension AVMutableMovie {
}
extension AVMutableMovie {
}
@available(watchOS 6.0, *)
class AVMediaDataStorage : NSObject {
  init(url URL: URL, options: [String : Any]? = nil)
  func url() -> URL?
}
extension NSNotification.Name {
  @available(watchOS 6.0, *)
  static let AVFragmentedMovieContainsMovieFragmentsDidChange: NSNotification.Name
  @available(watchOS 6.0, *)
  static let AVFragmentedMovieDurationDidChange: NSNotification.Name
  @available(watchOS 6.0, *)
  static let AVFragmentedMovieWasDefragmented: NSNotification.Name
}
@available(watchOS 6.0, *)
class AVFragmentedMovie : AVMovie, AVFragmentMinding {
}
extension AVFragmentedMovie {
}
@available(watchOS 6.0, *)
class AVFragmentedMovieMinder : AVFragmentedAssetMinder {
  init(movie: AVFragmentedMovie, mindingInterval: TimeInterval)
  var movies: [AVFragmentedMovie] { get }
  func add(_ movie: AVFragmentedMovie)
  func remove(_ movie: AVFragmentedMovie)
}
