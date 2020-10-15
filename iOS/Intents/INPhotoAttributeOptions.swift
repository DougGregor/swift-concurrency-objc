
@available(iOS 10.0, *)
struct INPhotoAttributeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var photo: INPhotoAttributeOptions { get }
  static var video: INPhotoAttributeOptions { get }
  static var GIF: INPhotoAttributeOptions { get }
  static var flash: INPhotoAttributeOptions { get }
  static var landscapeOrientation: INPhotoAttributeOptions { get }
  static var portraitOrientation: INPhotoAttributeOptions { get }
  static var favorite: INPhotoAttributeOptions { get }
  static var selfie: INPhotoAttributeOptions { get }
  static var frontFacingCamera: INPhotoAttributeOptions { get }
  static var screenshot: INPhotoAttributeOptions { get }
  static var burstPhoto: INPhotoAttributeOptions { get }
  static var hdrPhoto: INPhotoAttributeOptions { get }
  static var squarePhoto: INPhotoAttributeOptions { get }
  static var panoramaPhoto: INPhotoAttributeOptions { get }
  static var timeLapseVideo: INPhotoAttributeOptions { get }
  static var slowMotionVideo: INPhotoAttributeOptions { get }
  static var noirFilter: INPhotoAttributeOptions { get }
  static var chromeFilter: INPhotoAttributeOptions { get }
  static var instantFilter: INPhotoAttributeOptions { get }
  static var tonalFilter: INPhotoAttributeOptions { get }
  static var transferFilter: INPhotoAttributeOptions { get }
  static var monoFilter: INPhotoAttributeOptions { get }
  static var fadeFilter: INPhotoAttributeOptions { get }
  static var processFilter: INPhotoAttributeOptions { get }
  @available(iOS 12.0, *)
  static var portraitPhoto: INPhotoAttributeOptions { get }
  @available(iOS 12.0, *)
  static var livePhoto: INPhotoAttributeOptions { get }
  @available(iOS 12.0, *)
  static var loopPhoto: INPhotoAttributeOptions { get }
  @available(iOS 12.0, *)
  static var bouncePhoto: INPhotoAttributeOptions { get }
  @available(iOS 12.0, *)
  static var longExposurePhoto: INPhotoAttributeOptions { get }
}
