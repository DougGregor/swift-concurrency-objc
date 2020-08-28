
class IOSurfaceRef : _CFObject {
}
@available(iOS 11.0, *)
let kIOSurfaceAllocSize: CFString
@available(iOS 11.0, *)
let kIOSurfaceWidth: CFString
@available(iOS 11.0, *)
let kIOSurfaceHeight: CFString
@available(iOS 11.0, *)
let kIOSurfaceBytesPerRow: CFString
@available(iOS 11.0, *)
let kIOSurfaceBytesPerElement: CFString
@available(iOS 11.0, *)
let kIOSurfaceElementWidth: CFString
@available(iOS 11.0, *)
let kIOSurfaceElementHeight: CFString
@available(iOS 11.0, *)
let kIOSurfaceOffset: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneInfo: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneWidth: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneHeight: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneBytesPerRow: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneOffset: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneSize: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneBase: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneBitsPerElement: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneBytesPerElement: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneElementWidth: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneElementHeight: CFString
@available(iOS 11.0, *)
let kIOSurfaceCacheMode: CFString
@available(iOS, introduced: 11.0, deprecated: 11.0, message: "Global surfaces are insecure")
let kIOSurfaceIsGlobal: CFString
@available(iOS 11.0, *)
let kIOSurfacePixelFormat: CFString
@available(iOS 11.0, *)
let kIOSurfacePixelSizeCastingAllowed: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneComponentBitDepths: CFString
@available(iOS 11.0, *)
let kIOSurfacePlaneComponentBitOffsets: CFString
enum IOSurfaceComponentName : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case alpha
  case red
  case green
  case blue
  case luma
  case chromaRed
  case chromaBlue
}
@available(iOS 11.0, *)
let kIOSurfacePlaneComponentNames: CFString
enum IOSurfaceComponentType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case unsignedInteger
  case signedInteger
  case float
}
@available(iOS 11.0, *)
let kIOSurfacePlaneComponentTypes: CFString
enum IOSurfaceComponentRange : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case fullRange
  case videoRange
  case wideRange
}
@available(iOS 11.0, *)
let kIOSurfacePlaneComponentRanges: CFString
enum IOSurfaceSubsampling : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case subsamplingUnknown
  case subsamplingNone
  case subsampling422
  case subsampling420
  case subsampling411
}
@available(iOS 11.0, *)
let kIOSurfaceSubsampling: CFString
@available(iOS 11.0, *)
func IOSurfaceGetTypeID() -> CFTypeID
@available(iOS 11.0, *)
func IOSurfaceCreate(_ properties: CFDictionary) -> IOSurfaceRef?
@available(iOS 11.0, *)
func IOSurfaceLookup(_ csid: IOSurfaceID) -> IOSurfaceRef?
@available(iOS 11.0, *)
func IOSurfaceGetID(_ buffer: IOSurfaceRef) -> IOSurfaceID
@available(iOS 11.0, *)
func IOSurfaceLock(_ buffer: IOSurfaceRef, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
@available(iOS 11.0, *)
func IOSurfaceUnlock(_ buffer: IOSurfaceRef, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
@available(iOS 11.0, *)
func IOSurfaceGetAllocSize(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetWidth(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetHeight(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBytesPerElement(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBytesPerRow(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBaseAddress(_ buffer: IOSurfaceRef) -> UnsafeMutableRawPointer
@available(iOS 11.0, *)
func IOSurfaceGetElementWidth(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetElementHeight(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetPixelFormat(_ buffer: IOSurfaceRef) -> OSType
@available(iOS 11.0, *)
func IOSurfaceGetSeed(_ buffer: IOSurfaceRef) -> UInt32
@available(iOS 11.0, *)
func IOSurfaceGetPlaneCount(_ buffer: IOSurfaceRef) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetWidthOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetHeightOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBytesPerElementOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBytesPerRowOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBaseAddressOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> UnsafeMutableRawPointer
@available(iOS 11.0, *)
func IOSurfaceGetElementWidthOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetElementHeightOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetNumberOfComponentsOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetNameOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentName
@available(iOS 11.0, *)
func IOSurfaceGetTypeOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentType
@available(iOS 11.0, *)
func IOSurfaceGetRangeOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentRange
@available(iOS 11.0, *)
func IOSurfaceGetBitDepthOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetBitOffsetOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetSubsampling(_ buffer: IOSurfaceRef) -> IOSurfaceSubsampling
@available(iOS 11.0, *)
func IOSurfaceSetValue(_ buffer: IOSurfaceRef, _ key: CFString, _ value: CFTypeRef)
@available(iOS 11.0, *)
func IOSurfaceCopyValue(_ buffer: IOSurfaceRef, _ key: CFString) -> CFTypeRef?
@available(iOS 11.0, *)
func IOSurfaceRemoveValue(_ buffer: IOSurfaceRef, _ key: CFString)
@available(iOS 11.0, *)
func IOSurfaceSetValues(_ buffer: IOSurfaceRef, _ keysAndValues: CFDictionary)
@available(iOS 11.0, *)
func IOSurfaceCopyAllValues(_ buffer: IOSurfaceRef) -> CFDictionary?
@available(iOS 11.0, *)
func IOSurfaceRemoveAllValues(_ buffer: IOSurfaceRef)
@available(iOS 11.0, *)
func IOSurfaceCreateMachPort(_ buffer: IOSurfaceRef) -> mach_port_t
@available(iOS 11.0, *)
func IOSurfaceLookupFromMachPort(_ port: mach_port_t) -> IOSurfaceRef?
@available(iOS 11.0, *)
func IOSurfaceGetPropertyMaximum(_ property: CFString) -> Int
@available(iOS 11.0, *)
func IOSurfaceGetPropertyAlignment(_ property: CFString) -> Int
@available(iOS 11.0, *)
func IOSurfaceAlignProperty(_ property: CFString, _ value: Int) -> Int
@available(iOS 11.0, *)
func IOSurfaceIncrementUseCount(_ buffer: IOSurfaceRef)
@available(iOS 11.0, *)
func IOSurfaceDecrementUseCount(_ buffer: IOSurfaceRef)
@available(iOS 11.0, *)
func IOSurfaceGetUseCount(_ buffer: IOSurfaceRef) -> Int32
@available(iOS 11.0, *)
func IOSurfaceIsInUse(_ buffer: IOSurfaceRef) -> Bool
@available(iOS 11.0, *)
func IOSurfaceAllowsPixelSizeCasting(_ buffer: IOSurfaceRef) -> Bool
@available(iOS 11.0, *)
func IOSurfaceSetPurgeable(_ buffer: IOSurfaceRef, _ newState: UInt32, _ oldState: UnsafeMutablePointer<UInt32>?) -> kern_return_t
