
var kCMFormatDescriptionBridgeError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionBridgeError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_IncompatibleFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSlice: OSStatus { get }
@available(macOS 10.10, *)
struct CMImageDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
extension CMImageDescriptionFlavor {
  @available(macOS 10.10, *)
  static let quickTimeMovie: CMImageDescriptionFlavor
  @available(macOS 10.10, *)
  static let isoFamily: CMImageDescriptionFlavor
  @available(macOS 10.10, *)
  static let mobile3GPFamily: CMImageDescriptionFlavor
}
@available(macOS 10.10, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(allocator: CFAllocator?, bigEndianImageDescriptionData imageDescriptionData: UnsafePointer<UInt8>, size: Int, stringEncoding: CFStringEncoding, flavor: CMImageDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianImageDescriptionBlockBuffer imageDescriptionBlockBuffer: CMBlockBuffer, stringEncoding: CFStringEncoding, flavor: CMImageDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, videoFormatDescription: CMVideoFormatDescription, stringEncoding: CFStringEncoding, flavor: CMImageDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.10, *)
func CMSwapBigEndianImageDescriptionToHost(_ imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
func CMSwapHostEndianImageDescriptionToBig(_ imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
struct CMSoundDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
extension CMSoundDescriptionFlavor {
  @available(macOS 10.10, *)
  static let quickTimeMovie: CMSoundDescriptionFlavor
  @available(macOS 10.10, *)
  static let quickTimeMovieV2: CMSoundDescriptionFlavor
  @available(macOS 10.10, *)
  static let isoFamily: CMSoundDescriptionFlavor
  @available(macOS 10.10, *)
  static let mobile3GPFamily: CMSoundDescriptionFlavor
}
@available(macOS 10.10, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(allocator: CFAllocator?, bigEndianSoundDescriptionData soundDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMSoundDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianSoundDescriptionBlockBuffer soundDescriptionBlockBuffer: CMBlockBuffer, flavor: CMSoundDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, audioFormatDescription: CMAudioFormatDescription, flavor: CMSoundDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.10, *)
func CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(_ soundDescriptionBlockBuffer: CMBlockBuffer, flavor: CMSoundDescriptionFlavor?) -> Bool
@available(macOS 10.10, *)
func CMSwapBigEndianSoundDescriptionToHost(_ soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
func CMSwapHostEndianSoundDescriptionToBig(_ soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
struct CMTextDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(macOS 10.10, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(allocator: CFAllocator?, bigEndianTextDescriptionData textDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMTextDescriptionFlavor?, mediaType: CMMediaType, formatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianTextDescriptionBlockBuffer textDescriptionBlockBuffer: CMBlockBuffer, flavor: CMTextDescriptionFlavor?, mediaType: CMMediaType, formatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, textFormatDescription: CMTextFormatDescription, flavor: CMTextDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.10, *)
func CMSwapBigEndianTextDescriptionToHost(_ textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
func CMSwapHostEndianTextDescriptionToBig(_ textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
struct CMClosedCaptionDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(macOS 10.10, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(allocator: CFAllocator?, bigEndianClosedCaptionDescriptionData closedCaptionDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMClosedCaptionDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianClosedCaptionDescriptionBlockBuffer closedCaptionDescriptionBlockBuffer: CMBlockBuffer, flavor: CMClosedCaptionDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, closedCaptionFormatDescription: CMClosedCaptionFormatDescription, flavor: CMClosedCaptionDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.10, *)
func CMSwapBigEndianClosedCaptionDescriptionToHost(_ closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
func CMSwapHostEndianClosedCaptionDescriptionToBig(_ closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
struct CMTimeCodeDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(macOS 10.10, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator: CFAllocator?, bigEndianTimeCodeDescriptionData timeCodeDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMTimeCodeDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianTimeCodeDescriptionBlockBuffer timeCodeDescriptionBlockBuffer: CMBlockBuffer, flavor: CMTimeCodeDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, timeCodeFormatDescription: CMTimeCodeFormatDescription, flavor: CMTimeCodeDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.10, *)
func CMSwapBigEndianTimeCodeDescriptionToHost(_ timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
func CMSwapHostEndianTimeCodeDescriptionToBig(_ timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
struct CMMetadataDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(macOS 10.10, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(allocator: CFAllocator?, bigEndianMetadataDescriptionData metadataDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMMetadataDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianMetadataDescriptionBlockBuffer metadataDescriptionBlockBuffer: CMBlockBuffer, flavor: CMMetadataDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(macOS 10.10, *)
func CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, metadataFormatDescription: CMMetadataFormatDescription, flavor: CMMetadataDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.10, *)
func CMSwapBigEndianMetadataDescriptionToHost(_ metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
@available(macOS 10.10, *)
func CMSwapHostEndianMetadataDescriptionToBig(_ metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
