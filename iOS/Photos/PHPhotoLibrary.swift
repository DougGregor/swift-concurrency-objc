
@available(iOS 8, iOS 8, *)
enum PHAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case notDetermined
  @available(iOS 8, *)
  case restricted
  @available(iOS 8, *)
  case denied
  @available(iOS 8, *)
  case authorized
  @available(iOS 14, *)
  case limited
}
@available(iOS 14, iOS 8, *)
enum PHAccessLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case addOnly
  @available(iOS 8, *)
  case readWrite
}
@available(iOS 8, *)
protocol PHPhotoLibraryChangeObserver : NSObjectProtocol {
  @available(iOS 8, *)
  @asyncHandler func photoLibraryDidChange(_ changeInstance: PHChange)
}
@available(iOS 13, *)
protocol PHPhotoLibraryAvailabilityObserver : NSObjectProtocol {
  @available(iOS 13, *)
  @asyncHandler func photoLibraryDidBecomeUnavailable(_ photoLibrary: PHPhotoLibrary)
}
@available(iOS 8, *)
class PHPhotoLibrary : NSObject {
  @available(iOS 8, *)
  class func shared() -> PHPhotoLibrary
  @available(iOS 14, *)
  class func authorizationStatus(for accessLevel: PHAccessLevel) -> PHAuthorizationStatus
  @available(iOS 14, *)
  class func requestAuthorization(for accessLevel: PHAccessLevel, handler: @escaping (PHAuthorizationStatus) -> Void)
  @available(iOS, introduced: 8, deprecated: 100000)
  class func authorizationStatus() -> PHAuthorizationStatus
  @available(iOS, introduced: 8, deprecated: 100000)
  class func requestAuthorization(_ handler: @escaping (PHAuthorizationStatus) -> Void)
  @available(iOS 13, *)
  var unavailabilityReason: Error? { get }
  @available(iOS 13, *)
  func register(_ observer: PHPhotoLibraryAvailabilityObserver)
  @available(iOS 13, *)
  func unregisterAvailabilityObserver(_ observer: PHPhotoLibraryAvailabilityObserver)
  @available(iOS 8, *)
  func performChanges(_ changeBlock: @escaping () -> Void, completionHandler: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 8, *)
  func performChangesAsync(_ changeBlock: @escaping () -> Void) async throws -> Bool
  @available(iOS 8, *)
  func performChangesAndWait(_ changeBlock: @escaping () -> Void) throws
  @available(iOS 8, *)
  func register(_ observer: PHPhotoLibraryChangeObserver)
  @available(iOS 8, *)
  func unregisterChangeObserver(_ observer: PHPhotoLibraryChangeObserver)
}
