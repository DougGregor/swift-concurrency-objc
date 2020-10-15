
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
@available(iOS 7.0, *)
class Progress : NSObject {
  class func current() -> Progress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(iOS 9.0, *)
  class func discreteProgress(totalUnitCount unitCount: Int64) -> Progress
  @available(iOS 9.0, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: Progress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: Progress?, userInfo userInfoOrNil: [ProgressUserInfoKey : Any]? = nil)
  func becomeCurrent(withPendingUnitCount unitCount: Int64)
  @available(iOS 11.0, *)
  func __performAsCurrent(withPendingUnitCount unitCount: Int64, using work: () -> Void)
  func resignCurrent()
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(_ objectOrNil: Any?, forKey key: ProgressUserInfoKey)
  var isIndeterminate: Bool { get }
  var fractionCompleted: Double { get }
  var isFinished: Bool { get }
  func cancel()
  func pause()
  @available(iOS 9.0, *)
  func resume()
  var userInfo: [ProgressUserInfoKey : Any] { get }
  var kind: ProgressKind?
  @available(iOS 11.0, *)
  @NSCopying var __estimatedTimeRemaining: NSNumber?
  @available(iOS 11.0, *)
  @NSCopying var __throughput: NSNumber?
  @available(iOS 11.0, *)
  var fileOperationKind: Progress.FileOperationKind?
  @available(iOS 11.0, *)
  var fileURL: URL?
  @available(iOS 11.0, *)
  @NSCopying var __fileTotalCount: NSNumber?
  @available(iOS 11.0, *)
  @NSCopying var __fileCompletedCount: NSNumber?
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
  @available(iOS 7.0, *)
  var progress: Progress { get }
}
extension ProgressUserInfoKey {
  @available(iOS 7.0, *)
  static let estimatedTimeRemainingKey: ProgressUserInfoKey
  @available(iOS 7.0, *)
  static let throughputKey: ProgressUserInfoKey
  @available(iOS 7.0, *)
  static let fileOperationKindKey: ProgressUserInfoKey
  @available(iOS 7.0, *)
  static let fileURLKey: ProgressUserInfoKey
  @available(iOS 7.0, *)
  static let fileTotalCountKey: ProgressUserInfoKey
  @available(iOS 7.0, *)
  static let fileCompletedCountKey: ProgressUserInfoKey
}
extension ProgressKind {
  @available(iOS 7.0, *)
  static let file: ProgressKind
}
extension Progress.FileOperationKind {
  @available(iOS 7.0, *)
  static let downloading: Progress.FileOperationKind
  @available(iOS 7.0, *)
  static let decompressingAfterDownloading: Progress.FileOperationKind
  @available(iOS 7.0, *)
  static let receiving: Progress.FileOperationKind
  @available(iOS 7.0, *)
  static let copying: Progress.FileOperationKind
}
