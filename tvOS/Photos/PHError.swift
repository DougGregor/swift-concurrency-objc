
@available(tvOS 13, *)
let PHPhotosErrorDomain: String
@available(tvOS 13, tvOS 13, *)
struct PHPhotosError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(tvOS 13, *)
  static var invalid: PHPhotosError.Code { get }
  @available(tvOS 13, *)
  static var userCancelled: PHPhotosError.Code { get }
  @available(tvOS 13, *)
  static var libraryVolumeOffline: PHPhotosError.Code { get }
  @available(tvOS 13, *)
  static var relinquishingLibraryBundleToWriter: PHPhotosError.Code { get }
  @available(tvOS 13, *)
  static var switchingSystemPhotoLibrary: PHPhotosError.Code { get }
  @available(tvOS 14, *)
  static var networkAccessRequired: PHPhotosError.Code { get }
}
@available(tvOS, introduced: 13, deprecated: 14, renamed: "PHPhotosError.invalid")
let PHPhotosErrorInvalid: Int
@available(tvOS, introduced: 13, deprecated: 14, renamed: "PHPhotosError.userCancelled")
let PHPhotosErrorUserCancelled: Int
@available(tvOS, introduced: 13, deprecated: 14, renamed: "PHPhotosError.libraryVolumeOffline")
let PHPhotosErrorLibraryVolumeOffline: Int
@available(tvOS, introduced: 13, deprecated: 14, renamed: "PHPhotosError.relinquishingLibraryBundleToWriter")
let PHPhotosErrorRelinquishingLibraryBundleToWriter: Int
@available(tvOS, introduced: 13, deprecated: 14, renamed: "PHPhotosError.switchingSystemPhotoLibrary")
let PHPhotosErrorSwitchingSystemPhotoLibrary: Int
