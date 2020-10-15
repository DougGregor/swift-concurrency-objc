
struct ProgressKind : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct ProgressUserInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension Progress {
  struct FileOperationKind : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  typealias UnpublishingHandler = () -> Void
  typealias PublishingHandler = (Progress) -> Progress.UnpublishingHandler?
}
@available(macOS 10.9, *)
class Progress : NSObject {
  class func current() -> Progress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(macOS 10.11, *)
  class func discreteProgress(totalUnitCount unitCount: Int64) -> Progress
  @available(macOS 10.11, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: Progress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: Progress?, userInfo userInfoOrNil: [ProgressUserInfoKey : Any]? = nil)
  func becomeCurrent(withPendingUnitCount unitCount: Int64)
  @available(macOS 10.13, *)
  func __performAsCurrent(withPendingUnitCount unitCount: Int64, using work: () -> Void)
  func resignCurrent()
  @available(macOS 10.11, *)
  func addChild(_ child: Progress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var isCancellable: Bool
  var isPausable: Bool
  var isCancelled: Bool { get }
  var isPaused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  @available(macOS 10.11, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(_ objectOrNil: Any?, forKey key: ProgressUserInfoKey)
  var isIndeterminate: Bool { get }
  var fractionCompleted: Double { get }
  var isFinished: Bool { get }
  func cancel()
  func pause()
  @available(macOS 10.11, *)
  func resume()
  var userInfo: [ProgressUserInfoKey : Any] { get }
  var kind: ProgressKind?
  @available(macOS 10.13, *)
  @NSCopying var __estimatedTimeRemaining: NSNumber?
  @available(macOS 10.13, *)
  @NSCopying var __throughput: NSNumber?
  @available(macOS 10.13, *)
  var fileOperationKind: Progress.FileOperationKind?
  @available(macOS 10.13, *)
  var fileURL: URL?
  @available(macOS 10.13, *)
  @NSCopying var __fileTotalCount: NSNumber?
  @available(macOS 10.13, *)
  @NSCopying var __fileCompletedCount: NSNumber?
  @available(macOS 10.9, *)
  func publish()
  @available(macOS 10.9, *)
  func unpublish()
  @available(macOS 10.9, *)
  class func addSubscriber(forFileURL url: URL, withPublishingHandler publishingHandler: @escaping Progress.PublishingHandler) -> Any
  @available(macOS 10.9, *)
  class func removeSubscriber(_ subscriber: Any)
  @available(macOS 10.9, *)
  var isOld: Bool { get }
}

extension Progress {
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var estimatedTimeRemaining: TimeInterval?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var throughput: Int?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var fileTotalCount: Int?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var fileCompletedCount: Int?
  func performAsCurrent<ReturnType>(withPendingUnitCount unitCount: Int64, using work: () throws -> ReturnType) rethrows -> ReturnType
}
protocol ProgressReporting : NSObjectProtocol {
  @available(macOS 10.9, *)
  var progress: Progress { get }
}
extension ProgressUserInfoKey {
  @available(macOS 10.9, *)
  static let estimatedTimeRemainingKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let throughputKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileOperationKindKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileURLKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileTotalCountKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileCompletedCountKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileAnimationImageKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileAnimationImageOriginalRectKey: ProgressUserInfoKey
  @available(macOS 10.9, *)
  static let fileIconKey: ProgressUserInfoKey
}
extension ProgressKind {
  @available(macOS 10.9, *)
  static let file: ProgressKind
}
extension Progress.FileOperationKind {
  @available(macOS 10.9, *)
  static let downloading: Progress.FileOperationKind
  @available(macOS 10.9, *)
  static let decompressingAfterDownloading: Progress.FileOperationKind
  @available(macOS 10.9, *)
  static let receiving: Progress.FileOperationKind
  @available(macOS 10.9, *)
  static let copying: Progress.FileOperationKind
}
