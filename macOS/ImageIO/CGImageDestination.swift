
class CGImageDestination : _CFObject {
}
@available(macOS 10.4, *)
let kCGImageDestinationLossyCompressionQuality: CFString
@available(macOS 10.4, *)
let kCGImageDestinationBackgroundColor: CFString
@available(macOS 10.10, *)
let kCGImageDestinationImageMaxPixelSize: CFString
@available(macOS 10.10, *)
let kCGImageDestinationEmbedThumbnail: CFString
@available(macOS 10.12, *)
let kCGImageDestinationOptimizeColorForSharing: CFString
@available(macOS 10.4, *)
func CGImageDestinationGetTypeID() -> CFTypeID
@available(macOS 10.4, *)
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
@available(macOS 10.4, *)
func CGImageDestinationCreateWithDataConsumer(_ consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(macOS 10.4, *)
func CGImageDestinationCreateWithData(_ data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(macOS 10.4, *)
func CGImageDestinationCreateWithURL(_ url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(macOS 10.4, *)
func CGImageDestinationSetProperties(_ idst: CGImageDestination, _ properties: CFDictionary?)
@available(macOS 10.4, *)
func CGImageDestinationAddImage(_ idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
@available(macOS 10.4, *)
func CGImageDestinationAddImageFromSource(_ idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
@available(macOS 10.4, *)
func CGImageDestinationFinalize(_ idst: CGImageDestination) -> Bool
@available(macOS 10.8, *)
func CGImageDestinationAddImageAndMetadata(_ idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)
@available(macOS 10.8, *)
let kCGImageDestinationMetadata: CFString
@available(macOS 10.8, *)
let kCGImageDestinationMergeMetadata: CFString
@available(macOS 10.8, *)
let kCGImageMetadataShouldExcludeXMP: CFString
@available(macOS 10.10, *)
let kCGImageMetadataShouldExcludeGPS: CFString
@available(macOS 10.8, *)
let kCGImageDestinationDateTime: CFString
@available(macOS 10.8, *)
let kCGImageDestinationOrientation: CFString
@available(macOS 11.0, *)
let kCGImageDestinationPreserveGainMap: CFString
@available(macOS 10.8, *)
func CGImageDestinationCopyImageSource(_ idst: CGImageDestination, _ isrc: CGImageSource, _ options: CFDictionary?, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS 10.13, *)
func CGImageDestinationAddAuxiliaryDataInfo(_ idst: CGImageDestination, _ auxiliaryImageDataType: CFString, _ auxiliaryDataInfoDictionary: CFDictionary)
