
@available(macOS 10.15, *)
let PHPhotosErrorDomain: String
@available(macOS 10.15, macOS 10.15, *)
struct PHPhotosError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(macOS 10.15, *)
  static var invalid: PHPhotosError.Code { get }
  @available(macOS 10.15, *)
  static var userCancelled: PHPhotosError.Code { get }
  @available(macOS 10.15, *)
  static var libraryVolumeOffline: PHPhotosError.Code { get }
  @available(macOS 10.15, *)
  static var relinquishingLibraryBundleToWriter: PHPhotosError.Code { get }
  @available(macOS 10.15, *)
  static var switchingSystemPhotoLibrary: PHPhotosError.Code { get }
  @available(macOS 11.0, *)
  static var networkAccessRequired: PHPhotosError.Code { get }
}
@available(macOS, introduced: 10.15, deprecated: 11.0, renamed: "PHPhotosError.invalid")
let PHPhotosErrorInvalid: Int
@available(macOS, introduced: 10.15, deprecated: 11.0, renamed: "PHPhotosError.userCancelled")
let PHPhotosErrorUserCancelled: Int
@available(macOS, introduced: 10.15, deprecated: 11.0, renamed: "PHPhotosError.libraryVolumeOffline")
let PHPhotosErrorLibraryVolumeOffline: Int
@available(macOS, introduced: 10.15, deprecated: 11.0, renamed: "PHPhotosError.relinquishingLibraryBundleToWriter")
let PHPhotosErrorRelinquishingLibraryBundleToWriter: Int
@available(macOS, introduced: 10.15, deprecated: 11.0, renamed: "PHPhotosError.switchingSystemPhotoLibrary")
let PHPhotosErrorSwitchingSystemPhotoLibrary: Int
