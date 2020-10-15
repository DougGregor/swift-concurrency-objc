
class IOSurfaceRef : _CFObject {
}
@available(tvOS 11.0, *)
let kIOSurfaceAllocSize: CFString
@available(tvOS 11.0, *)
let kIOSurfaceWidth: CFString
@available(tvOS 11.0, *)
let kIOSurfaceHeight: CFString
@available(tvOS 11.0, *)
let kIOSurfaceBytesPerRow: CFString
@available(tvOS 11.0, *)
let kIOSurfaceBytesPerElement: CFString
@available(tvOS 11.0, *)
let kIOSurfaceElementWidth: CFString
@available(tvOS 11.0, *)
let kIOSurfaceElementHeight: CFString
@available(tvOS 11.0, *)
let kIOSurfaceOffset: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneInfo: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneWidth: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneHeight: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneBytesPerRow: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneOffset: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneSize: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneBase: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneBitsPerElement: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneBytesPerElement: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneElementWidth: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneElementHeight: CFString
@available(tvOS 11.0, *)
let kIOSurfaceCacheMode: CFString
@available(tvOS, introduced: 11.0, deprecated: 11.0, message: "Global surfaces are insecure")
let kIOSurfaceIsGlobal: CFString
@available(tvOS 11.0, *)
let kIOSurfacePixelFormat: CFString
@available(tvOS 11.0, *)
let kIOSurfacePixelSizeCastingAllowed: CFString
@available(tvOS 11.0, *)
let kIOSurfacePlaneComponentBitDepths: CFString
@available(tvOS 11.0, *)
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
@available(tvOS 11.0, *)
let kIOSurfacePlaneComponentNames: CFString
enum IOSurfaceComponentType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case unsignedInteger
  case signedInteger
  case float
}
@available(tvOS 11.0, *)
let kIOSurfacePlaneComponentTypes: CFString
enum IOSurfaceComponentRange : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case fullRange
  case videoRange
  case wideRange
}
@available(tvOS 11.0, *)
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
@available(tvOS 11.0, *)
let kIOSurfaceSubsampling: CFString
@available(tvOS 11.0, *)
func IOSurfaceGetTypeID() -> CFTypeID
@available(tvOS 11.0, *)
func IOSurfaceCreate(_ properties: CFDictionary) -> IOSurfaceRef?
@available(tvOS 11.0, *)
func IOSurfaceLookup(_ csid: IOSurfaceID) -> IOSurfaceRef?
@available(tvOS 11.0, *)
func IOSurfaceGetID(_ buffer: IOSurfaceRef) -> IOSurfaceID
@available(tvOS 11.0, *)
func IOSurfaceLock(_ buffer: IOSurfaceRef, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
@available(tvOS 11.0, *)
func IOSurfaceUnlock(_ buffer: IOSurfaceRef, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
@available(tvOS 11.0, *)
func IOSurfaceGetAllocSize(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetWidth(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetHeight(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBytesPerElement(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBytesPerRow(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBaseAddress(_ buffer: IOSurfaceRef) -> UnsafeMutableRawPointer
@available(tvOS 11.0, *)
func IOSurfaceGetElementWidth(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetElementHeight(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetPixelFormat(_ buffer: IOSurfaceRef) -> OSType
@available(tvOS 11.0, *)
func IOSurfaceGetSeed(_ buffer: IOSurfaceRef) -> UInt32
@available(tvOS 11.0, *)
func IOSurfaceGetPlaneCount(_ buffer: IOSurfaceRef) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetWidthOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetHeightOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBytesPerElementOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBytesPerRowOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBaseAddressOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> UnsafeMutableRawPointer
@available(tvOS 11.0, *)
func IOSurfaceGetElementWidthOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetElementHeightOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetNumberOfComponentsOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetNameOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentName
@available(tvOS 11.0, *)
func IOSurfaceGetTypeOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentType
@available(tvOS 11.0, *)
func IOSurfaceGetRangeOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentRange
@available(tvOS 11.0, *)
func IOSurfaceGetBitDepthOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetBitOffsetOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetSubsampling(_ buffer: IOSurfaceRef) -> IOSurfaceSubsampling
@available(tvOS 11.0, *)
func IOSurfaceSetValue(_ buffer: IOSurfaceRef, _ key: CFString, _ value: CFTypeRef)
@available(tvOS 11.0, *)
func IOSurfaceCopyValue(_ buffer: IOSurfaceRef, _ key: CFString) -> CFTypeRef?
@available(tvOS 11.0, *)
func IOSurfaceRemoveValue(_ buffer: IOSurfaceRef, _ key: CFString)
@available(tvOS 11.0, *)
func IOSurfaceSetValues(_ buffer: IOSurfaceRef, _ keysAndValues: CFDictionary)
@available(tvOS 11.0, *)
func IOSurfaceCopyAllValues(_ buffer: IOSurfaceRef) -> CFDictionary?
@available(tvOS 11.0, *)
func IOSurfaceRemoveAllValues(_ buffer: IOSurfaceRef)
@available(tvOS 11.0, *)
func IOSurfaceCreateMachPort(_ buffer: IOSurfaceRef) -> mach_port_t
@available(tvOS 11.0, *)
func IOSurfaceLookupFromMachPort(_ port: mach_port_t) -> IOSurfaceRef?
@available(tvOS 11.0, *)
func IOSurfaceGetPropertyMaximum(_ property: CFString) -> Int
@available(tvOS 11.0, *)
func IOSurfaceGetPropertyAlignment(_ property: CFString) -> Int
@available(tvOS 11.0, *)
func IOSurfaceAlignProperty(_ property: CFString, _ value: Int) -> Int
@available(tvOS 11.0, *)
func IOSurfaceIncrementUseCount(_ buffer: IOSurfaceRef)
@available(tvOS 11.0, *)
func IOSurfaceDecrementUseCount(_ buffer: IOSurfaceRef)
@available(tvOS 11.0, *)
func IOSurfaceGetUseCount(_ buffer: IOSurfaceRef) -> Int32
@available(tvOS 11.0, *)
func IOSurfaceIsInUse(_ buffer: IOSurfaceRef) -> Bool
@available(tvOS 11.0, *)
func IOSurfaceAllowsPixelSizeCasting(_ buffer: IOSurfaceRef) -> Bool
@available(tvOS 11.0, *)
func IOSurfaceSetPurgeable(_ buffer: IOSurfaceRef, _ newState: UInt32, _ oldState: UnsafeMutablePointer<UInt32>?) -> kern_return_t
