
@available(macOS 10.6, *)
let kIOSurfaceAllocSize: CFString
@available(macOS 10.6, *)
let kIOSurfaceWidth: CFString
@available(macOS 10.6, *)
let kIOSurfaceHeight: CFString
@available(macOS 10.6, *)
let kIOSurfaceBytesPerRow: CFString
@available(macOS 10.6, *)
let kIOSurfaceBytesPerElement: CFString
@available(macOS 10.6, *)
let kIOSurfaceElementWidth: CFString
@available(macOS 10.6, *)
let kIOSurfaceElementHeight: CFString
@available(macOS 10.6, *)
let kIOSurfaceOffset: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneInfo: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneWidth: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneHeight: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneBytesPerRow: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneOffset: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneSize: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneBase: CFString
@available(macOS 10.13, *)
let kIOSurfacePlaneBitsPerElement: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneBytesPerElement: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneElementWidth: CFString
@available(macOS 10.6, *)
let kIOSurfacePlaneElementHeight: CFString
@available(macOS 10.6, *)
let kIOSurfaceCacheMode: CFString
@available(macOS, introduced: 10.6, deprecated: 10.11, message: "Global surfaces are insecure")
let kIOSurfaceIsGlobal: CFString
@available(macOS 10.6, *)
let kIOSurfacePixelFormat: CFString
@available(macOS 10.12, *)
let kIOSurfacePixelSizeCastingAllowed: CFString
@available(macOS 10.13, *)
let kIOSurfacePlaneComponentBitDepths: CFString
@available(macOS 10.13, *)
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
@available(macOS 10.13, *)
let kIOSurfacePlaneComponentNames: CFString
enum IOSurfaceComponentType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case unsignedInteger
  case signedInteger
  case float
}
@available(macOS 10.13, *)
let kIOSurfacePlaneComponentTypes: CFString
enum IOSurfaceComponentRange : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case fullRange
  case videoRange
  case wideRange
}
@available(macOS 10.13, *)
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
@available(macOS 10.13, *)
let kIOSurfaceSubsampling: CFString
@available(macOS 10.6, *)
func IOSurfaceGetTypeID() -> CFTypeID
@available(macOS 10.6, *)
func IOSurfaceCreate(_ properties: CFDictionary) -> IOSurfaceRef?
@available(macOS 10.6, *)
func IOSurfaceLookup(_ csid: IOSurfaceID) -> IOSurfaceRef?
@available(macOS 10.6, *)
func IOSurfaceGetID(_ buffer: IOSurfaceRef) -> IOSurfaceID
@available(macOS 10.6, *)
func IOSurfaceLock(_ buffer: IOSurfaceRef, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
@available(macOS 10.6, *)
func IOSurfaceUnlock(_ buffer: IOSurfaceRef, _ options: IOSurfaceLockOptions, _ seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
@available(macOS 10.6, *)
func IOSurfaceGetAllocSize(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetWidth(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetHeight(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetBytesPerElement(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetBytesPerRow(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetBaseAddress(_ buffer: IOSurfaceRef) -> UnsafeMutableRawPointer
@available(macOS 10.6, *)
func IOSurfaceGetElementWidth(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetElementHeight(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetPixelFormat(_ buffer: IOSurfaceRef) -> OSType
@available(macOS 10.6, *)
func IOSurfaceGetSeed(_ buffer: IOSurfaceRef) -> UInt32
@available(macOS 10.6, *)
func IOSurfaceGetPlaneCount(_ buffer: IOSurfaceRef) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetWidthOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetHeightOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetBytesPerElementOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetBytesPerRowOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetBaseAddressOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> UnsafeMutableRawPointer
@available(macOS 10.6, *)
func IOSurfaceGetElementWidthOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetElementHeightOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.13, *)
func IOSurfaceGetNumberOfComponentsOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int) -> Int
@available(macOS 10.13, *)
func IOSurfaceGetNameOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentName
@available(macOS 10.13, *)
func IOSurfaceGetTypeOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentType
@available(macOS 10.13, *)
func IOSurfaceGetRangeOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> IOSurfaceComponentRange
@available(macOS 10.13, *)
func IOSurfaceGetBitDepthOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> Int
@available(macOS 10.13, *)
func IOSurfaceGetBitOffsetOfComponentOfPlane(_ buffer: IOSurfaceRef, _ planeIndex: Int, _ componentIndex: Int) -> Int
@available(macOS 10.13, *)
func IOSurfaceGetSubsampling(_ buffer: IOSurfaceRef) -> IOSurfaceSubsampling
@available(macOS 10.6, *)
func IOSurfaceSetValue(_ buffer: IOSurfaceRef, _ key: CFString, _ value: CFTypeRef)
@available(macOS 10.6, *)
func IOSurfaceCopyValue(_ buffer: IOSurfaceRef, _ key: CFString) -> CFTypeRef?
@available(macOS 10.6, *)
func IOSurfaceRemoveValue(_ buffer: IOSurfaceRef, _ key: CFString)
@available(macOS 10.6, *)
func IOSurfaceSetValues(_ buffer: IOSurfaceRef, _ keysAndValues: CFDictionary)
@available(macOS 10.6, *)
func IOSurfaceCopyAllValues(_ buffer: IOSurfaceRef) -> CFDictionary?
@available(macOS 10.6, *)
func IOSurfaceRemoveAllValues(_ buffer: IOSurfaceRef)
@available(macOS 10.6, *)
func IOSurfaceCreateMachPort(_ buffer: IOSurfaceRef) -> mach_port_t
@available(macOS 10.6, *)
func IOSurfaceLookupFromMachPort(_ port: mach_port_t) -> IOSurfaceRef?
@available(macOS 10.6, *)
func IOSurfaceGetPropertyMaximum(_ property: CFString) -> Int
@available(macOS 10.6, *)
func IOSurfaceGetPropertyAlignment(_ property: CFString) -> Int
@available(macOS 10.6, *)
func IOSurfaceAlignProperty(_ property: CFString, _ value: Int) -> Int
@available(macOS 10.6, *)
func IOSurfaceIncrementUseCount(_ buffer: IOSurfaceRef)
@available(macOS 10.6, *)
func IOSurfaceDecrementUseCount(_ buffer: IOSurfaceRef)
@available(macOS 10.6, *)
func IOSurfaceGetUseCount(_ buffer: IOSurfaceRef) -> Int32
@available(macOS 10.6, *)
func IOSurfaceIsInUse(_ buffer: IOSurfaceRef) -> Bool
@available(macOS 10.12, *)
func IOSurfaceAllowsPixelSizeCasting(_ buffer: IOSurfaceRef) -> Bool
@available(macOS 10.12, *)
func IOSurfaceSetPurgeable(_ buffer: IOSurfaceRef, _ newState: UInt32, _ oldState: UnsafeMutablePointer<UInt32>?) -> kern_return_t
