
@available(macOS 10.4, *)
let kCVPixelFormatName: CFString
@available(macOS 10.4, *)
let kCVPixelFormatConstant: CFString
@available(macOS 10.4, *)
let kCVPixelFormatCodecType: CFString
@available(macOS 10.4, *)
let kCVPixelFormatFourCC: CFString
@available(macOS 10.7, *)
let kCVPixelFormatContainsAlpha: CFString
@available(macOS 10.10, *)
let kCVPixelFormatContainsYCbCr: CFString
@available(macOS 10.10, *)
let kCVPixelFormatContainsRGB: CFString
@available(macOS 10.14, *)
let kCVPixelFormatContainsGrayscale: CFString
@available(macOS 10.10, *)
let kCVPixelFormatComponentRange: CFString
@available(macOS 10.10, *)
let kCVPixelFormatComponentRange_VideoRange: CFString
@available(macOS 10.10, *)
let kCVPixelFormatComponentRange_FullRange: CFString
@available(macOS 10.10, *)
let kCVPixelFormatComponentRange_WideRange: CFString
@available(macOS 10.4, *)
let kCVPixelFormatPlanes: CFString
@available(macOS 10.4, *)
let kCVPixelFormatBlockWidth: CFString
@available(macOS 10.4, *)
let kCVPixelFormatBlockHeight: CFString
@available(macOS 10.4, *)
let kCVPixelFormatBitsPerBlock: CFString
@available(macOS 10.4, *)
let kCVPixelFormatBlockHorizontalAlignment: CFString
@available(macOS 10.4, *)
let kCVPixelFormatBlockVerticalAlignment: CFString
@available(macOS 10.6, *)
let kCVPixelFormatBlackBlock: CFString
@available(macOS 10.4, *)
let kCVPixelFormatHorizontalSubsampling: CFString
@available(macOS 10.4, *)
let kCVPixelFormatVerticalSubsampling: CFString
@available(macOS 10.4, *)
let kCVPixelFormatOpenGLFormat: CFString
@available(macOS 10.4, *)
let kCVPixelFormatOpenGLType: CFString
@available(macOS 10.4, *)
let kCVPixelFormatOpenGLInternalFormat: CFString
@available(macOS 10.4, *)
let kCVPixelFormatCGBitmapInfo: CFString
@available(macOS 10.4, *)
let kCVPixelFormatQDCompatibility: CFString
@available(macOS 10.4, *)
let kCVPixelFormatCGBitmapContextCompatibility: CFString
@available(macOS 10.4, *)
let kCVPixelFormatCGImageCompatibility: CFString
@available(macOS 10.4, *)
let kCVPixelFormatOpenGLCompatibility: CFString
typealias CVFillExtendedPixelsCallBack = @convention(c) (CVPixelBuffer, UnsafeMutableRawPointer?) -> DarwinBoolean
struct CVFillExtendedPixelsCallBackData {
  var version: CFIndex
  var fillCallBack: CVFillExtendedPixelsCallBack?
  var refCon: UnsafeMutableRawPointer?
  init()
  init(version: CFIndex, fillCallBack: CVFillExtendedPixelsCallBack?, refCon: UnsafeMutableRawPointer?)
}
@available(macOS 10.4, *)
let kCVPixelFormatFillExtendedPixelsCallback: CFString
@available(macOS 10.4, *)
func CVPixelFormatDescriptionCreateWithPixelFormatType(_ allocator: CFAllocator?, _ pixelFormat: OSType) -> CFDictionary?
@available(macOS 10.4, *)
func CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(_ allocator: CFAllocator?) -> CFArray?
@available(macOS 10.4, *)
func CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(_ description: CFDictionary, _ pixelFormat: OSType)
