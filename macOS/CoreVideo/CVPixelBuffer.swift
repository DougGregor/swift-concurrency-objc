
var kCVPixelFormatType_1Monochrome: OSType { get }
var kCVPixelFormatType_2Indexed: OSType { get }
var kCVPixelFormatType_4Indexed: OSType { get }
var kCVPixelFormatType_8Indexed: OSType { get }
var kCVPixelFormatType_1IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_2IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_4IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_8IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_16BE555: OSType { get }
var kCVPixelFormatType_16LE555: OSType { get }
var kCVPixelFormatType_16LE5551: OSType { get }
var kCVPixelFormatType_16BE565: OSType { get }
var kCVPixelFormatType_16LE565: OSType { get }
var kCVPixelFormatType_24RGB: OSType { get }
var kCVPixelFormatType_24BGR: OSType { get }
var kCVPixelFormatType_32ARGB: OSType { get }
var kCVPixelFormatType_32BGRA: OSType { get }
var kCVPixelFormatType_32ABGR: OSType { get }
var kCVPixelFormatType_32RGBA: OSType { get }
var kCVPixelFormatType_64ARGB: OSType { get }
var kCVPixelFormatType_48RGB: OSType { get }
var kCVPixelFormatType_32AlphaGray: OSType { get }
var kCVPixelFormatType_16Gray: OSType { get }
var kCVPixelFormatType_30RGB: OSType { get }
var kCVPixelFormatType_422YpCbCr8: OSType { get }
var kCVPixelFormatType_4444YpCbCrA8: OSType { get }
var kCVPixelFormatType_4444YpCbCrA8R: OSType { get }
var kCVPixelFormatType_4444AYpCbCr8: OSType { get }
var kCVPixelFormatType_4444AYpCbCr16: OSType { get }
var kCVPixelFormatType_444YpCbCr8: OSType { get }
var kCVPixelFormatType_422YpCbCr16: OSType { get }
var kCVPixelFormatType_422YpCbCr10: OSType { get }
var kCVPixelFormatType_444YpCbCr10: OSType { get }
var kCVPixelFormatType_420YpCbCr8Planar: OSType { get }
var kCVPixelFormatType_420YpCbCr8PlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr_4A_8BiPlanar: OSType { get }
var kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_420YpCbCr8BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_422YpCbCr8BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_444YpCbCr8BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr8_yuvs: OSType { get }
var kCVPixelFormatType_422YpCbCr8FullRange: OSType { get }
var kCVPixelFormatType_OneComponent8: OSType { get }
var kCVPixelFormatType_TwoComponent8: OSType { get }
var kCVPixelFormatType_30RGBLEPackedWideGamut: OSType { get }
var kCVPixelFormatType_ARGB2101010LEPacked: OSType { get }
var kCVPixelFormatType_OneComponent10: OSType { get }
var kCVPixelFormatType_OneComponent12: OSType { get }
var kCVPixelFormatType_OneComponent16: OSType { get }
var kCVPixelFormatType_TwoComponent16: OSType { get }
var kCVPixelFormatType_OneComponent16Half: OSType { get }
var kCVPixelFormatType_OneComponent32Float: OSType { get }
var kCVPixelFormatType_TwoComponent16Half: OSType { get }
var kCVPixelFormatType_TwoComponent32Float: OSType { get }
var kCVPixelFormatType_64RGBAHalf: OSType { get }
var kCVPixelFormatType_128RGBAFloat: OSType { get }
var kCVPixelFormatType_14Bayer_GRBG: OSType { get }
var kCVPixelFormatType_14Bayer_RGGB: OSType { get }
var kCVPixelFormatType_14Bayer_BGGR: OSType { get }
var kCVPixelFormatType_14Bayer_GBRG: OSType { get }
var kCVPixelFormatType_DisparityFloat16: OSType { get }
var kCVPixelFormatType_DisparityFloat32: OSType { get }
var kCVPixelFormatType_DepthFloat16: OSType { get }
var kCVPixelFormatType_DepthFloat32: OSType { get }
var kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_420YpCbCr10BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr10BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_444YpCbCr10BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar: OSType { get }
var kCVPixelFormatType_16VersatileBayer: OSType { get }
var kCVPixelFormatType_64RGBA_DownscaledProResRAW: OSType { get }
struct CVPixelBufferLockFlags : OptionSet {
  init(rawValue: CVOptionFlags)
  let rawValue: CVOptionFlags
  static var readOnly: CVPixelBufferLockFlags { get }
}
struct CVPlanarComponentInfo {
  var offset: Int32
  var rowBytes: UInt32
  init()
  init(offset: Int32, rowBytes: UInt32)
}
struct CVPlanarPixelBufferInfo {
  var componentInfo: (CVPlanarComponentInfo)
  init()
  init(componentInfo: (CVPlanarComponentInfo))
}
struct CVPlanarPixelBufferInfo_YCbCrPlanar {
  var componentInfoY: CVPlanarComponentInfo
  var componentInfoCb: CVPlanarComponentInfo
  var componentInfoCr: CVPlanarComponentInfo
  init()
  init(componentInfoY: CVPlanarComponentInfo, componentInfoCb: CVPlanarComponentInfo, componentInfoCr: CVPlanarComponentInfo)
}
struct CVPlanarPixelBufferInfo_YCbCrBiPlanar {
  var componentInfoY: CVPlanarComponentInfo
  var componentInfoCbCr: CVPlanarComponentInfo
  init()
  init(componentInfoY: CVPlanarComponentInfo, componentInfoCbCr: CVPlanarComponentInfo)
}
@available(macOS 10.4, *)
let kCVPixelBufferPixelFormatTypeKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferMemoryAllocatorKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferWidthKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferHeightKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferExtendedPixelsLeftKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferExtendedPixelsTopKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferExtendedPixelsRightKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferExtendedPixelsBottomKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferBytesPerRowAlignmentKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferCGBitmapContextCompatibilityKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferCGImageCompatibilityKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferOpenGLCompatibilityKey: CFString
@available(macOS 10.6, *)
let kCVPixelBufferPlaneAlignmentKey: CFString
@available(macOS 10.6, *)
let kCVPixelBufferIOSurfacePropertiesKey: CFString
@available(macOS 10.11, *)
let kCVPixelBufferMetalCompatibilityKey: CFString
@available(macOS 10.11, *)
let kCVPixelBufferOpenGLTextureCacheCompatibilityKey: CFString
var kCVVersatileBayer_BayerPattern_RGGB: Int { get }
var kCVVersatileBayer_BayerPattern_GRBG: Int { get }
var kCVVersatileBayer_BayerPattern_GBRG: Int { get }
var kCVVersatileBayer_BayerPattern_BGGR: Int { get }
typealias CVPixelBuffer = CVImageBuffer
@available(macOS 10.4, *)
func CVPixelBufferGetTypeID() -> CFTypeID
@available(macOS 10.4, *)
func CVPixelBufferCreateResolvedAttributesDictionary(_ allocator: CFAllocator?, _ attributes: CFArray?, _ resolvedDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> CVReturn
@available(macOS 10.4, *)
func CVPixelBufferCreate(_ allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
typealias CVPixelBufferReleaseBytesCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer?) -> Void
@available(macOS 10.4, *)
func CVPixelBufferCreateWithBytes(_ allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ baseAddress: UnsafeMutableRawPointer, _ bytesPerRow: Int, _ releaseCallback: CVPixelBufferReleaseBytesCallback?, _ releaseRefCon: UnsafeMutableRawPointer?, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
typealias CVPixelBufferReleasePlanarBytesCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer?, Int, Int, UnsafeMutablePointer<UnsafeRawPointer?>?) -> Void
@available(macOS 10.4, *)
func CVPixelBufferCreateWithPlanarBytes(_ allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ dataPtr: UnsafeMutableRawPointer?, _ dataSize: Int, _ numberOfPlanes: Int, _ planeBaseAddress: UnsafeMutablePointer<UnsafeMutableRawPointer?>, _ planeWidth: UnsafeMutablePointer<Int>, _ planeHeight: UnsafeMutablePointer<Int>, _ planeBytesPerRow: UnsafeMutablePointer<Int>, _ releaseCallback: CVPixelBufferReleasePlanarBytesCallback?, _ releaseRefCon: UnsafeMutableRawPointer?, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(macOS 10.4, *)
func CVPixelBufferLockBaseAddress(_ pixelBuffer: CVPixelBuffer, _ lockFlags: CVPixelBufferLockFlags) -> CVReturn
@available(macOS 10.4, *)
func CVPixelBufferUnlockBaseAddress(_ pixelBuffer: CVPixelBuffer, _ unlockFlags: CVPixelBufferLockFlags) -> CVReturn
@available(macOS 10.4, *)
func CVPixelBufferGetWidth(_ pixelBuffer: CVPixelBuffer) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetHeight(_ pixelBuffer: CVPixelBuffer) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetPixelFormatType(_ pixelBuffer: CVPixelBuffer) -> OSType
@available(macOS 10.4, *)
func CVPixelBufferGetBaseAddress(_ pixelBuffer: CVPixelBuffer) -> UnsafeMutableRawPointer?
@available(macOS 10.4, *)
func CVPixelBufferGetBytesPerRow(_ pixelBuffer: CVPixelBuffer) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetDataSize(_ pixelBuffer: CVPixelBuffer) -> Int
@available(macOS 10.4, *)
func CVPixelBufferIsPlanar(_ pixelBuffer: CVPixelBuffer) -> Bool
@available(macOS 10.4, *)
func CVPixelBufferGetPlaneCount(_ pixelBuffer: CVPixelBuffer) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetWidthOfPlane(_ pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetHeightOfPlane(_ pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetBaseAddressOfPlane(_ pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> UnsafeMutableRawPointer?
@available(macOS 10.4, *)
func CVPixelBufferGetBytesPerRowOfPlane(_ pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int
@available(macOS 10.4, *)
func CVPixelBufferGetExtendedPixels(_ pixelBuffer: CVPixelBuffer, _ extraColumnsOnLeft: UnsafeMutablePointer<Int>?, _ extraColumnsOnRight: UnsafeMutablePointer<Int>?, _ extraRowsOnTop: UnsafeMutablePointer<Int>?, _ extraRowsOnBottom: UnsafeMutablePointer<Int>?)
@available(macOS 10.4, *)
func CVPixelBufferFillExtendedPixels(_ pixelBuffer: CVPixelBuffer) -> CVReturn
