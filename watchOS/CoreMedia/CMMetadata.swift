
var kCMMetadataIdentifierError_AllocationFailed: OSStatus { get }
var kCMMetadataIdentifierError_RequiredParameterMissing: OSStatus { get }
var kCMMetadataIdentifierError_BadKey: OSStatus { get }
var kCMMetadataIdentifierError_BadKeyLength: OSStatus { get }
var kCMMetadataIdentifierError_BadKeyType: OSStatus { get }
var kCMMetadataIdentifierError_BadNumberKey: OSStatus { get }
var kCMMetadataIdentifierError_BadKeySpace: OSStatus { get }
var kCMMetadataIdentifierError_BadIdentifier: OSStatus { get }
var kCMMetadataIdentifierError_NoKeyValueAvailable: OSStatus { get }
var kCMMetadataDataTypeRegistryError_AllocationFailed: OSStatus { get }
var kCMMetadataDataTypeRegistryError_RequiredParameterMissing: OSStatus { get }
var kCMMetadataDataTypeRegistryError_BadDataTypeIdentifier: OSStatus { get }
var kCMMetadataDataTypeRegistryError_DataTypeAlreadyRegistered: OSStatus { get }
var kCMMetadataDataTypeRegistryError_RequiresConformingBaseType: OSStatus { get }
var kCMMetadataDataTypeRegistryError_MultipleConformingBaseTypes: OSStatus { get }
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_QuickTimeUserData: CFString
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_ISOUserData: CFString
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_QuickTimeMetadata: CFString
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_iTunes: CFString
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_ID3: CFString
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_Icy: CFString
@available(watchOS 6.0, *)
let kCMMetadataKeySpace_HLSDateRange: CFString
@available(watchOS 6.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709: CFString
@available(watchOS 6.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing: CFString
@available(watchOS 6.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform: CFString
@available(watchOS 6.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation: CFString
@available(watchOS 6.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataLivePhotoStillImageTransform: CFString
@available(watchOS 6.1, *)
let kCMMetadataIdentifier_QuickTimeMetadataLivePhotoStillImageTransformReferenceDimensions: CFString
@available(watchOS 6.0, *)
func CMMetadataCreateIdentifierForKeyAndKeySpace(allocator: CFAllocator?, key: CFTypeRef, keySpace: CFString, identifierOut: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataCreateKeyFromIdentifier(allocator: CFAllocator?, identifier: CFString, keyOut: UnsafeMutablePointer<CFTypeRef?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataCreateKeyFromIdentifierAsCFData(allocator: CFAllocator?, identifier: CFString, keyOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataCreateKeySpaceFromIdentifier(allocator: CFAllocator?, identifier: CFString, keySpaceOut: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_RawData: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_UTF8: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_UTF16: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_GIF: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_JPEG: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_PNG: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_BMP: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_Float32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_Float64: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_SInt8: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_SInt16: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_SInt32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_SInt64: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_UInt8: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_UInt16: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_UInt32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_UInt64: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_PointF32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_DimensionsF32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_RectF32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_AffineTransformF64: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_PolygonF32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_PolylineF32: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_JSON: CFString
@available(watchOS 6.0, *)
let kCMMetadataBaseDataType_PerspectiveTransformF64: CFString
@available(watchOS 6.0, *)
let kCMMetadataDataType_QuickTimeMetadataLocation_ISO6709: CFString
@available(watchOS 6.0, *)
let kCMMetadataDataType_QuickTimeMetadataDirection: CFString
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryRegisterDataType(_ dataType: CFString, description: CFString, conformingDataTypes: CFArray) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryDataTypeIsRegistered(_ dataType: CFString) -> Bool
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryGetDataTypeDescription(_ dataType: CFString) -> CFString
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryGetConformingDataTypes(_ dataType: CFString) -> CFArray
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryDataTypeConformsToDataType(_ dataType: CFString, conformsTo conformsToDataType: CFString) -> Bool
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryGetBaseDataTypes() -> CFArray?
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryDataTypeIsBaseDataType(_ dataType: CFString) -> Bool
@available(watchOS 6.0, *)
func CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(_ dataType: CFString) -> CFString
