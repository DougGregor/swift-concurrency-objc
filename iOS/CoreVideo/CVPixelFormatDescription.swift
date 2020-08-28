
@available(iOS 4.0, *)
let kCVPixelFormatName: CFString
@available(iOS 4.0, *)
let kCVPixelFormatConstant: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCodecType: CFString
@available(iOS 4.0, *)
let kCVPixelFormatFourCC: CFString
@available(iOS 4.3, *)
let kCVPixelFormatContainsAlpha: CFString
@available(iOS 8.0, *)
let kCVPixelFormatContainsYCbCr: CFString
@available(iOS 8.0, *)
let kCVPixelFormatContainsRGB: CFString
@available(iOS 12.0, *)
let kCVPixelFormatContainsGrayscale: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange_VideoRange: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange_FullRange: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange_WideRange: CFString
@available(iOS 4.0, *)
let kCVPixelFormatPlanes: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockWidth: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockHeight: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBitsPerBlock: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockHorizontalAlignment: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockVerticalAlignment: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlackBlock: CFString
@available(iOS 4.0, *)
let kCVPixelFormatHorizontalSubsampling: CFString
@available(iOS 4.0, *)
let kCVPixelFormatVerticalSubsampling: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLFormat: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLType: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLInternalFormat: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCGBitmapInfo: CFString
@available(iOS 4.0, *)
let kCVPixelFormatQDCompatibility: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCGBitmapContextCompatibility: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCGImageCompatibility: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLCompatibility: CFString
@available(iOS 5.0, *)
let kCVPixelFormatOpenGLESCompatibility: CFString
typealias CVFillExtendedPixelsCallBack = @convention(c) (CVPixelBuffer, UnsafeMutableRawPointer?) -> DarwinBoolean
struct CVFillExtendedPixelsCallBackData {
  var version: CFIndex
  var fillCallBack: CVFillExtendedPixelsCallBack?
  var refCon: UnsafeMutableRawPointer?
  init()
  init(version: CFIndex, fillCallBack: CVFillExtendedPixelsCallBack?, refCon: UnsafeMutableRawPointer?)
}
@available(iOS 4.0, *)
let kCVPixelFormatFillExtendedPixelsCallback: CFString
@available(iOS 4.0, *)
func CVPixelFormatDescriptionCreateWithPixelFormatType(_ allocator: CFAllocator?, _ pixelFormat: OSType) -> CFDictionary?
@available(iOS 4.0, *)
func CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(_ allocator: CFAllocator?) -> CFArray?
@available(iOS 4.0, *)
func CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(_ description: CFDictionary, _ pixelFormat: OSType)
