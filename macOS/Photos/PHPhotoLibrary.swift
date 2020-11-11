
@available(macOS 10.13, macOS 10.13, *)
enum PHAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.13, *)
  case notDetermined
  @available(macOS 10.13, *)
  case restricted
  @available(macOS 10.13, *)
  case denied
  @available(macOS 10.13, *)
  case authorized
  @available(macOS 10.13, *)
  case limited
}
@available(macOS 11.0, macOS 10.13, *)
enum PHAccessLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.13, *)
  case addOnly
  @available(macOS 10.13, *)
  case readWrite
}
@available(macOS 10.13, *)
protocol PHPhotoLibraryChangeObserver : NSObjectProtocol {
  @available(macOS 10.13, *)
  @asyncHandler func photoLibraryDidChange(_ changeInstance: PHChange)
}
@available(macOS 10.15, *)
protocol PHPhotoLibraryAvailabilityObserver : NSObjectProtocol {
  @available(macOS 10.15, *)
  @asyncHandler func photoLibraryDidBecomeUnavailable(_ photoLibrary: PHPhotoLibrary)
}
@available(macOS 10.13, *)
class PHPhotoLibrary : NSObject {
  @available(macOS 10.13, *)
  class func shared() -> PHPhotoLibrary
  @available(macOS 11.0, *)
  class func authorizationStatus(for accessLevel: PHAccessLevel) -> PHAuthorizationStatus
  @available(macOS 11.0, *)
  class func requestAuthorization(for accessLevel: PHAccessLevel, handler: @escaping (PHAuthorizationStatus) -> Void)
  @available(macOS, introduced: 10.13, deprecated: 100000)
  class func authorizationStatus() -> PHAuthorizationStatus
  @available(macOS, introduced: 10.13, deprecated: 100000)
  class func requestAuthorization(_ handler: @escaping (PHAuthorizationStatus) -> Void)
  @available(macOS 10.15, *)
  var unavailabilityReason: Error? { get }
  @available(macOS 10.15, *)
  func register(_ observer: PHPhotoLibraryAvailabilityObserver)
  @available(macOS 10.15, *)
  func unregisterAvailabilityObserver(_ observer: PHPhotoLibraryAvailabilityObserver)
  @available(macOS 10.13, *)
  func performChanges(_ changeBlock: @escaping () -> Void, completionHandler: ((Bool, Error?) -> Void)? = nil)
  @available(macOS 10.13, *)
  func performChangesAsync(_ changeBlock: @escaping () -> Void) async throws -> Bool
  @available(macOS 10.13, *)
  func performChangesAndWait(_ changeBlock: @escaping () -> Void) throws
  @available(macOS 10.13, *)
  func register(_ observer: PHPhotoLibraryChangeObserver)
  @available(macOS 10.13, *)
  func unregisterChangeObserver(_ observer: PHPhotoLibraryChangeObserver)
}
