
@available(tvOS 10, tvOS 10, *)
enum PHAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case notDetermined
  @available(tvOS 10, *)
  case restricted
  @available(tvOS 10, *)
  case denied
  @available(tvOS 10, *)
  case authorized
  @available(tvOS 10, *)
  case limited
}
@available(tvOS 14, tvOS 10, *)
enum PHAccessLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case addOnly
  @available(tvOS 10, *)
  case readWrite
}
@available(tvOS 10, *)
protocol PHPhotoLibraryChangeObserver : NSObjectProtocol {
  @available(tvOS 10, *)
  func photoLibraryDidChange(_ changeInstance: PHChange)
}
@available(tvOS 13, *)
protocol PHPhotoLibraryAvailabilityObserver : NSObjectProtocol {
  @available(tvOS 13, *)
  func photoLibraryDidBecomeUnavailable(_ photoLibrary: PHPhotoLibrary)
}
@available(tvOS 10, *)
class PHPhotoLibrary : NSObject {
  @available(tvOS 10, *)
  class func shared() -> PHPhotoLibrary
  @available(tvOS 14, *)
  class func authorizationStatus(for accessLevel: PHAccessLevel) -> PHAuthorizationStatus
  @available(tvOS 14, *)
  class func requestAuthorization(for accessLevel: PHAccessLevel, handler: @escaping (PHAuthorizationStatus) -> Void)
  @available(tvOS, introduced: 10, deprecated: 100000)
  class func authorizationStatus() -> PHAuthorizationStatus
  @available(tvOS, introduced: 10, deprecated: 100000)
  class func requestAuthorization(_ handler: @escaping (PHAuthorizationStatus) -> Void)
  @available(tvOS 13, *)
  var unavailabilityReason: Error? { get }
  @available(tvOS 13, *)
  func register(_ observer: PHPhotoLibraryAvailabilityObserver)
  @available(tvOS 13, *)
  func unregisterAvailabilityObserver(_ observer: PHPhotoLibraryAvailabilityObserver)
  @available(tvOS 10, *)
  func performChanges(_ changeBlock: @escaping () -> Void, completionHandler: ((Bool, Error?) -> Void)? = nil)
  @available(tvOS 10, *)
  func performChanges(_ changeBlock: @escaping () -> Void) async throws -> Bool
  @available(tvOS 10, *)
  func performChangesAndWait(_ changeBlock: @escaping () -> Void) throws
  @available(tvOS 10, *)
  func register(_ observer: PHPhotoLibraryChangeObserver)
  @available(tvOS 10, *)
  func unregisterChangeObserver(_ observer: PHPhotoLibraryChangeObserver)
}
