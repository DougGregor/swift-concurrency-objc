
class CGImageSource : _CFObject {
}
enum CGImageSourceStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case statusUnexpectedEOF
  case statusInvalidData
  case statusUnknownType
  case statusReadingHeader
  case statusIncomplete
  case statusComplete
}
@available(macOS 10.4, *)
let kCGImageSourceTypeIdentifierHint: CFString
@available(macOS 10.4, *)
let kCGImageSourceShouldCache: CFString
@available(macOS 10.9, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(macOS 10.4, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(macOS 10.4, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(macOS 10.4, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(macOS 10.4, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(macOS 10.4, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(macOS 10.11, *)
let kCGImageSourceSubsampleFactor: CFString
@available(macOS 10.4, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(macOS 10.4, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(macOS 10.4, *)
func CGImageSourceCreateWithDataProvider(_ provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(macOS 10.4, *)
func CGImageSourceCreateWithData(_ data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(macOS 10.4, *)
func CGImageSourceCreateWithURL(_ url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(macOS 10.4, *)
func CGImageSourceGetType(_ isrc: CGImageSource) -> CFString?
@available(macOS 10.4, *)
func CGImageSourceGetCount(_ isrc: CGImageSource) -> Int
@available(macOS 10.4, *)
func CGImageSourceCopyProperties(_ isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(macOS 10.4, *)
func CGImageSourceCopyPropertiesAtIndex(_ isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(macOS 10.8, *)
func CGImageSourceCopyMetadataAtIndex(_ isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(macOS 10.4, *)
func CGImageSourceCreateImageAtIndex(_ isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(macOS 10.9, *)
func CGImageSourceRemoveCacheAtIndex(_ isrc: CGImageSource, _ index: Int)
@available(macOS 10.4, *)
func CGImageSourceCreateThumbnailAtIndex(_ isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(macOS 10.4, *)
func CGImageSourceCreateIncremental(_ options: CFDictionary?) -> CGImageSource
@available(macOS 10.4, *)
func CGImageSourceUpdateData(_ isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(macOS 10.4, *)
func CGImageSourceUpdateDataProvider(_ isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(macOS 10.4, *)
func CGImageSourceGetStatus(_ isrc: CGImageSource) -> CGImageSourceStatus
@available(macOS 10.4, *)
func CGImageSourceGetStatusAtIndex(_ isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
@available(macOS 10.14, *)
func CGImageSourceGetPrimaryImageIndex(_ isrc: CGImageSource) -> Int
@available(macOS 10.13, *)
func CGImageSourceCopyAuxiliaryDataInfoAtIndex(_ isrc: CGImageSource, _ index: Int, _ auxiliaryImageDataType: CFString) -> CFDictionary?
