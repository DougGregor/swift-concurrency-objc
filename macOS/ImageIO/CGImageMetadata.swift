
class CGImageMetadata : _CFObject {
}
func CGImageMetadataGetTypeID() -> CFTypeID
class CGMutableImageMetadata : CGImageMetadata, _CFObject {
}
@available(macOS 10.8, *)
func CGImageMetadataCreateMutable() -> CGMutableImageMetadata
@available(macOS 10.8, *)
func CGImageMetadataCreateMutableCopy(_ metadata: CGImageMetadata) -> CGMutableImageMetadata?
class CGImageMetadataTag : _CFObject {
}
@available(macOS 10.8, *)
func CGImageMetadataTagGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceExif: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceExifAux: CFString
@available(macOS 10.9, *)
let kCGImageMetadataNamespaceExifEX: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceDublinCore: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceIPTCCore: CFString
@available(macOS 10.13.4, *)
let kCGImageMetadataNamespaceIPTCExtension: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespacePhotoshop: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceTIFF: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceXMPBasic: CFString
@available(macOS 10.8, *)
let kCGImageMetadataNamespaceXMPRights: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixExif: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixExifAux: CFString
@available(macOS 10.9, *)
let kCGImageMetadataPrefixExifEX: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixDublinCore: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixIPTCCore: CFString
@available(macOS 10.13.4, *)
let kCGImageMetadataPrefixIPTCExtension: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixPhotoshop: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixTIFF: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixXMPBasic: CFString
@available(macOS 10.8, *)
let kCGImageMetadataPrefixXMPRights: CFString
enum CGImageMetadataType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case invalid
  case `default`
  case string
  case arrayUnordered
  case arrayOrdered
  case alternateArray
  case alternateText
  case structure
}
@available(macOS 10.8, *)
func CGImageMetadataTagCreate(_ xmlns: CFString, _ prefix: CFString?, _ name: CFString, _ type: CGImageMetadataType, _ value: CFTypeRef) -> CGImageMetadataTag?
@available(macOS 10.8, *)
func CGImageMetadataTagCopyNamespace(_ tag: CGImageMetadataTag) -> CFString?
@available(macOS 10.8, *)
func CGImageMetadataTagCopyPrefix(_ tag: CGImageMetadataTag) -> CFString?
@available(macOS 10.8, *)
func CGImageMetadataTagCopyName(_ tag: CGImageMetadataTag) -> CFString?
@available(macOS 10.8, *)
func CGImageMetadataTagCopyValue(_ tag: CGImageMetadataTag) -> CFTypeRef?
@available(macOS 10.8, *)
func CGImageMetadataTagGetType(_ tag: CGImageMetadataTag) -> CGImageMetadataType
@available(macOS 10.8, *)
func CGImageMetadataTagCopyQualifiers(_ tag: CGImageMetadataTag) -> CFArray?
@available(macOS 10.8, *)
func CGImageMetadataCopyTags(_ metadata: CGImageMetadata) -> CFArray?
@available(macOS 10.8, *)
func CGImageMetadataCopyTagWithPath(_ metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CGImageMetadataTag?
@available(macOS 10.8, *)
func CGImageMetadataCopyStringValueWithPath(_ metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CFString?
@available(macOS 10.8, *)
func CGImageMetadataRegisterNamespaceForPrefix(_ metadata: CGMutableImageMetadata, _ xmlns: CFString, _ prefix: CFString, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS 10.8, *)
func CGImageMetadataSetTagWithPath(_ metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ tag: CGImageMetadataTag) -> Bool
@available(macOS 10.8, *)
func CGImageMetadataSetValueWithPath(_ metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ value: CFTypeRef) -> Bool
@available(macOS 10.8, *)
func CGImageMetadataRemoveTagWithPath(_ metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> Bool
typealias CGImageMetadataTagBlock = (CFString, CGImageMetadataTag) -> Bool
@available(macOS 10.8, *)
func CGImageMetadataEnumerateTagsUsingBlock(_ metadata: CGImageMetadata, _ rootPath: CFString?, _ options: CFDictionary?, _ block: @escaping CGImageMetadataTagBlock)
@available(macOS 10.8, *)
let kCGImageMetadataEnumerateRecursively: CFString
@available(macOS 10.8, *)
func CGImageMetadataCopyTagMatchingImageProperty(_ metadata: CGImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString) -> CGImageMetadataTag?
@available(macOS 10.8, *)
func CGImageMetadataSetValueMatchingImageProperty(_ metadata: CGMutableImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString, _ value: CFTypeRef) -> Bool
@available(macOS 10.8, *)
func CGImageMetadataCreateXMPData(_ metadata: CGImageMetadata, _ options: CFDictionary?) -> CFData?
@available(macOS 10.8, *)
func CGImageMetadataCreateFromXMPData(_ data: CFData) -> CGImageMetadata?
let kCFErrorDomainCGImageMetadata: CFString
enum CGImageMetadataErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case unsupportedFormat
  case badArgument
  case conflictingArguments
  case prefixConflict
}
