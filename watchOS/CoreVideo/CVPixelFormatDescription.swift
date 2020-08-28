
@available(watchOS 2.0, *)
let kCVPixelFormatName: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatConstant: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatCodecType: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatFourCC: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatContainsAlpha: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatContainsYCbCr: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatContainsRGB: CFString
@available(watchOS 5.0, *)
let kCVPixelFormatContainsGrayscale: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatComponentRange: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatComponentRange_VideoRange: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatComponentRange_FullRange: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatComponentRange_WideRange: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatPlanes: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatBlockWidth: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatBlockHeight: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatBitsPerBlock: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatBlockHorizontalAlignment: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatBlockVerticalAlignment: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatBlackBlock: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatHorizontalSubsampling: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatVerticalSubsampling: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatOpenGLFormat: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatOpenGLType: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatOpenGLInternalFormat: CFString
@available(watchOS 2.0, *)
let kCVPixelFormatCGBitmapInfo: CFString
@available(watchOS 4.0, *)
let kCVPixelFormatQDCompatibility: CFString
@available(watchOS 4.0, *)
let kCVPixelFormatCGBitmapContextCompatibility: CFString
@available(watchOS 4.0, *)
let kCVPixelFormatCGImageCompatibility: CFString
@available(watchOS 4.0, *)
let kCVPixelFormatOpenGLCompatibility: CFString
typealias CVFillExtendedPixelsCallBack = @convention(c) (CVPixelBuffer, UnsafeMutableRawPointer?) -> DarwinBoolean
struct CVFillExtendedPixelsCallBackData {
  var version: CFIndex
  var fillCallBack: CVFillExtendedPixelsCallBack?
  var refCon: UnsafeMutableRawPointer?
  init()
  init(version: CFIndex, fillCallBack: CVFillExtendedPixelsCallBack?, refCon: UnsafeMutableRawPointer?)
}
@available(watchOS 2.0, *)
let kCVPixelFormatFillExtendedPixelsCallback: CFString
@available(watchOS 2.0, *)
func CVPixelFormatDescriptionCreateWithPixelFormatType(_ allocator: CFAllocator?, _ pixelFormat: OSType) -> CFDictionary?
@available(watchOS 2.0, *)
func CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(_ allocator: CFAllocator?) -> CFArray?
@available(watchOS 2.0, *)
func CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(_ description: CFDictionary, _ pixelFormat: OSType)
