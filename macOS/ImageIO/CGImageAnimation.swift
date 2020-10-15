
enum CGImageAnimationStatus : OSStatus {
  init?(rawValue: OSStatus)
  var rawValue: OSStatus { get }
  case parameterError
  case corruptInputImage
  case unsupportedFormat
  case incompleteInputImage
  case allocationFailure
}
@available(macOS 10.15, *)
let kCGImageAnimationStartIndex: CFString
@available(macOS 10.15, *)
let kCGImageAnimationDelayTime: CFString
@available(macOS 10.15, *)
let kCGImageAnimationLoopCount: CFString
typealias CGImageSourceAnimationBlock = (Int, CGImage, UnsafeMutablePointer<Bool>) -> Void
@available(macOS 10.15, *)
func CGAnimateImageAtURLWithBlock(_ url: CFURL, _ options: CFDictionary?, _ block: @escaping CGImageSourceAnimationBlock) -> OSStatus
@available(macOS 10.15, *)
func CGAnimateImageDataWithBlock(_ data: CFData, _ options: CFDictionary?, _ block: @escaping CGImageSourceAnimationBlock) -> OSStatus
