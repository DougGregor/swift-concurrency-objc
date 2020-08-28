
var kCMFormatDescriptionBridgeError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionBridgeError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_IncompatibleFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSlice: OSStatus { get }
@available(iOS 8.0, *)
struct CMImageDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
extension CMImageDescriptionFlavor {
  @available(iOS 8.0, *)
  static let quickTimeMovie: CMImageDescriptionFlavor
  @available(iOS 8.0, *)
  static let isoFamily: CMImageDescriptionFlavor
  @available(iOS 8.0, *)
  static let mobile3GPFamily: CMImageDescriptionFlavor
}
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(allocator: CFAllocator?, bigEndianImageDescriptionData imageDescriptionData: UnsafePointer<UInt8>, size: Int, stringEncoding: CFStringEncoding, flavor: CMImageDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianImageDescriptionBlockBuffer imageDescriptionBlockBuffer: CMBlockBuffer, stringEncoding: CFStringEncoding, flavor: CMImageDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, videoFormatDescription: CMVideoFormatDescription, stringEncoding: CFStringEncoding, flavor: CMImageDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianImageDescriptionToHost(_ imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianImageDescriptionToBig(_ imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
struct CMSoundDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
extension CMSoundDescriptionFlavor {
  @available(iOS 8.0, *)
  static let quickTimeMovie: CMSoundDescriptionFlavor
  @available(iOS 8.0, *)
  static let quickTimeMovieV2: CMSoundDescriptionFlavor
  @available(iOS 8.0, *)
  static let isoFamily: CMSoundDescriptionFlavor
  @available(iOS 8.0, *)
  static let mobile3GPFamily: CMSoundDescriptionFlavor
}
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(allocator: CFAllocator?, bigEndianSoundDescriptionData soundDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMSoundDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianSoundDescriptionBlockBuffer soundDescriptionBlockBuffer: CMBlockBuffer, flavor: CMSoundDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, audioFormatDescription: CMAudioFormatDescription, flavor: CMSoundDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(_ soundDescriptionBlockBuffer: CMBlockBuffer, flavor: CMSoundDescriptionFlavor?) -> Bool
@available(iOS 8.0, *)
func CMSwapBigEndianSoundDescriptionToHost(_ soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianSoundDescriptionToBig(_ soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
struct CMTextDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(iOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(allocator: CFAllocator?, bigEndianTextDescriptionData textDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMTextDescriptionFlavor?, mediaType: CMMediaType, formatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianTextDescriptionBlockBuffer textDescriptionBlockBuffer: CMBlockBuffer, flavor: CMTextDescriptionFlavor?, mediaType: CMMediaType, formatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, textFormatDescription: CMTextFormatDescription, flavor: CMTextDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianTextDescriptionToHost(_ textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianTextDescriptionToBig(_ textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
struct CMClosedCaptionDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(allocator: CFAllocator?, bigEndianClosedCaptionDescriptionData closedCaptionDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMClosedCaptionDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianClosedCaptionDescriptionBlockBuffer closedCaptionDescriptionBlockBuffer: CMBlockBuffer, flavor: CMClosedCaptionDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, closedCaptionFormatDescription: CMClosedCaptionFormatDescription, flavor: CMClosedCaptionDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianClosedCaptionDescriptionToHost(_ closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianClosedCaptionDescriptionToBig(_ closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
struct CMTimeCodeDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator: CFAllocator?, bigEndianTimeCodeDescriptionData timeCodeDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMTimeCodeDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianTimeCodeDescriptionBlockBuffer timeCodeDescriptionBlockBuffer: CMBlockBuffer, flavor: CMTimeCodeDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, timeCodeFormatDescription: CMTimeCodeFormatDescription, flavor: CMTimeCodeDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianTimeCodeDescriptionToHost(_ timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianTimeCodeDescriptionToBig(_ timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
struct CMMetadataDescriptionFlavor : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(allocator: CFAllocator?, bigEndianMetadataDescriptionData metadataDescriptionData: UnsafePointer<UInt8>, size: Int, flavor: CMMetadataDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, bigEndianMetadataDescriptionBlockBuffer metadataDescriptionBlockBuffer: CMBlockBuffer, flavor: CMMetadataDescriptionFlavor?, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, metadataFormatDescription: CMMetadataFormatDescription, flavor: CMMetadataDescriptionFlavor?, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianMetadataDescriptionToHost(_ metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianMetadataDescriptionToBig(_ metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
