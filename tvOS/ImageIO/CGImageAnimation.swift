
enum CGImageAnimationStatus : OSStatus {
  init?(rawValue: OSStatus)
  var rawValue: OSStatus { get }
  case parameterError
  case corruptInputImage
  case unsupportedFormat
  case incompleteInputImage
  case allocationFailure
}
@available(tvOS 13.0, *)
let kCGImageAnimationStartIndex: CFString
@available(tvOS 13.0, *)
let kCGImageAnimationDelayTime: CFString
@available(tvOS 13.0, *)
let kCGImageAnimationLoopCount: CFString
typealias CGImageSourceAnimationBlock = (Int, CGImage, UnsafeMutablePointer<Bool>) -> Void
@available(tvOS 13.0, *)
func CGAnimateImageAtURLWithBlock(_ url: CFURL, _ options: CFDictionary?, _ block: @escaping CGImageSourceAnimationBlock) -> OSStatus
@available(tvOS 13.0, *)
func CGAnimateImageDataWithBlock(_ data: CFData, _ options: CFDictionary?, _ block: @escaping CGImageSourceAnimationBlock) -> OSStatus
