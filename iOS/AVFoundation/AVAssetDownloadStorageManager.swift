
@available(iOS 11.0, *)
struct AVAssetDownloadedAssetEvictionPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVAssetDownloadedAssetEvictionPriority {
  @available(iOS 11.0, *)
  static let important: AVAssetDownloadedAssetEvictionPriority
  @available(iOS 11.0, *)
  static let `default`: AVAssetDownloadedAssetEvictionPriority
}
@available(iOS 11.0, *)
class AVAssetDownloadStorageManager : NSObject {
  class func shared() -> AVAssetDownloadStorageManager
  func setStorageManagementPolicy(_ storageManagementPolicy: AVAssetDownloadStorageManagementPolicy, for downloadStorageURL: URL)
  func storageManagementPolicy(for downloadStorageURL: URL) -> AVAssetDownloadStorageManagementPolicy?
}
@available(iOS 11.0, *)
class AVAssetDownloadStorageManagementPolicy : NSObject, NSCopying, NSMutableCopying {
  var priority: AVAssetDownloadedAssetEvictionPriority { get }
  var expirationDate: Date { get }
}
@available(iOS 11.0, *)
class AVMutableAssetDownloadStorageManagementPolicy : AVAssetDownloadStorageManagementPolicy {
}
