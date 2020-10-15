
var kIOAcceleratorClassName: String { get }
struct eIOAcceleratorClientTypes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceClientType: eIOAcceleratorClientTypes { get }
var kIOAccelNumClientTypes: eIOAcceleratorClientTypes { get }
var kIOAccelSurface2ClientType: eIOAcceleratorClientTypes { get }
var IOGA_COMPAT: Int32 { get }
var IOACCEL_TYPES_REV: Int32 { get }
struct IOAccelBounds {
  var x: Int16
  var y: Int16
  var w: Int16
  var h: Int16
  init()
  init(x: Int16, y: Int16, w: Int16, h: Int16)
}
struct IOAccelSize {
  var w: Int16
  var h: Int16
  init()
  init(w: Int16, h: Int16)
}
var kIOAccelVolatileSurface: Int { get }
struct IOAccelSurfaceInformation {
  var address: (mach_vm_address_t, mach_vm_address_t, mach_vm_address_t, mach_vm_address_t)
  var rowBytes: UInt32
  var width: UInt32
  var height: UInt32
  var pixelFormat: UInt32
  var flags: IOOptionBits
  var colorTemperature: (IOFixed, IOFixed, IOFixed, IOFixed)
  var typeDependent: (UInt32, UInt32, UInt32, UInt32)
  init()
  init(address: (mach_vm_address_t, mach_vm_address_t, mach_vm_address_t, mach_vm_address_t), rowBytes: UInt32, width: UInt32, height: UInt32, pixelFormat: UInt32, flags: IOOptionBits, colorTemperature: (IOFixed, IOFixed, IOFixed, IOFixed), typeDependent: (UInt32, UInt32, UInt32, UInt32))
}
struct IOAccelSurfaceReadData {
  var x: Int32
  var y: Int32
  var w: Int32
  var h: Int32
  var client_addr: mach_vm_address_t
  var client_row_bytes: UInt32
  init()
  init(x: Int32, y: Int32, w: Int32, h: Int32, client_addr: mach_vm_address_t, client_row_bytes: UInt32)
}
struct IOAccelSurfaceScaling {
  var buffer: IOAccelBounds
  var source: IOAccelSize
  var reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(buffer: IOAccelBounds, source: IOAccelSize, reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
typealias IOAccelID = Int32
var kIOAccelPrivateID: Int { get }
struct IOAccelDeviceRegion {
  var num_rects: UInt32
  var bounds: IOAccelBounds
  var rect: ()
  init()
  init(num_rects: UInt32, bounds: IOAccelBounds, rect: ())
}
struct eIOAccelSurfaceMemoryTypes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelNumSurfaceMemoryTypes: eIOAccelSurfaceMemoryTypes { get }
struct eIOAccelSurfaceMethods : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceReadLockOptions: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceReadUnlockOptions: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceGetState: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceWriteLockOptions: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceWriteUnlockOptions: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceRead: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceSetShapeBacking: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceSetIDMode: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceSetScale: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceSetShape: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceFlush: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceQueryLock: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceReadLock: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceReadUnlock: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceWriteLock: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceWriteUnlock: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceControl: eIOAccelSurfaceMethods { get }
var kIOAccelSurfaceSetShapeBackingAndLength: eIOAccelSurfaceMethods { get }
var kIOAccelNumSurfaceMethods: eIOAccelSurfaceMethods { get }
struct eIOAccelSurfaceModeBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceModeColorDepth1555: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepth8888: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepthYUV: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepthYUV9: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepthYUV12: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepthYUV2: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepthBGRA32: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepth2101010: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeColorDepthBits: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeStereoBit: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeWindowedBit: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeSurface2: eIOAccelSurfaceModeBits { get }
var kIOAccelSurfaceModeBeamSync: eIOAccelSurfaceModeBits { get }
struct eIOAccelSurfaceShapeBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceShapeNone: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeNonBlockingBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeNonSimpleBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeIdentityScaleBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeFrameSyncBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeBeamSyncBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeStaleBackingBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeAssemblyBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeWaitEnabledBit: eIOAccelSurfaceShapeBits { get }
var kIOAccelSurfaceShapeBlockingBit: eIOAccelSurfaceShapeBits { get }
struct eIOAccelSurfaceStateBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceStateNone: eIOAccelSurfaceStateBits { get }
var kIOAccelSurfaceStateIdleBit: eIOAccelSurfaceStateBits { get }
struct eIOAccelSurfaceScaleBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceBeamSyncSwaps: eIOAccelSurfaceScaleBits { get }
var kIOAccelSurfaceFixedSource: eIOAccelSurfaceScaleBits { get }
var kIOAccelSurfaceFiltering: eIOAccelSurfaceScaleBits { get }
var kIOAccelSurfaceFilterDefault: eIOAccelSurfaceScaleBits { get }
var kIOAccelSurfaceFilterNone: eIOAccelSurfaceScaleBits { get }
var kIOAccelSurfaceFilterLinear: eIOAccelSurfaceScaleBits { get }
struct eIOAccelSurfaceLockBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAccelSurfaceLockInBacking: eIOAccelSurfaceLockBits { get }
var kIOAccelSurfaceLockInAccel: eIOAccelSurfaceLockBits { get }
var kIOAccelSurfaceLockInDontCare: eIOAccelSurfaceLockBits { get }
var kIOAccelSurfaceLockInMask: eIOAccelSurfaceLockBits { get }
typealias IOFourCharCode = UInt32
var kCurrentGraphicsInterfaceVersion: Int32 { get }
var kCurrentGraphicsInterfaceRevision: Int32 { get }
typealias IOBlitCompletionToken = Int32
typealias IOBlitType = UInt32
var kIOBlitTypeVerbMask: Int { get }
var kIOBlitTypeRects: Int { get }
var kIOBlitTypeCopyRects: Int { get }
var kIOBlitTypeLines: Int { get }
var kIOBlitTypeScanlines: Int { get }
var kIOBlitTypeCopyRegion: Int { get }
var kIOBlitTypeMoveCursor: Int { get }
var kIOBlitTypeShowCursor: Int { get }
var kIOBlitTypeHideCursor: Int { get }
var kIOBlitTypeMonoExpand: Int { get }
var kIOBlitTypeColorSpaceConvert: Int { get }
var kIOBlitTypeScale: Int { get }
var kIOBlitTypeSourceKeyColorModeMask: Int { get }
var kIOBlitTypeDestKeyColorModeMask: Int { get }
var kIOBlitTypeSourceKeyColorEqual: Int { get }
var kIOBlitTypeSourceKeyColorNotEqual: Int { get }
var kIOBlitTypeDestKeyColorEqual: Int { get }
var kIOBlitTypeDestKeyColorNotEqual: Int { get }
var kIOBlitTypeOperationMask: Int { get }
var kIOBlitTypeOperationShift: Int { get }
var kIOBlitTypeOperationTypeMask: Int { get }
var kIOBlitTypeOperationType0: Int { get }
var kIOBlitCopyOperation: Int { get }
var kIOBlitOrOperation: Int { get }
var kIOBlitXorOperation: Int { get }
var kIOBlitBlendOperation: Int { get }
var kIOBlitHighlightOperation: Int { get }
typealias IOBlitSourceType = UInt32
var kIOBlitSourceDefault: UInt32 { get }
var kIOBlitSourceFramebuffer: UInt32 { get }
var kIOBlitSourceMemory: UInt32 { get }
var kIOBlitSourceOOLMemory: UInt32 { get }
var kIOBlitSourcePattern: UInt32 { get }
var kIOBlitSourceOOLPattern: UInt32 { get }
var kIOBlitSourceSolid: UInt32 { get }
var kIOBlitSourceCGSSurface: UInt32 { get }
var kIOBlitSourceIsSame: UInt32 { get }
typealias IOBlitSourceDestType = IOBlitSourceType
var kIOBlitDestFramebuffer: Int { get }
struct IOBlitOperationStruct {
  var color0: UInt32
  var color1: UInt32
  var offsetX: Int32
  var offsetY: Int32
  var sourceKeyColor: UInt32
  var destKeyColor: UInt32
  var specific: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(color0: UInt32, color1: UInt32, offsetX: Int32, offsetY: Int32, sourceKeyColor: UInt32, destKeyColor: UInt32, specific: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
typealias IOBlitOperation = IOBlitOperationStruct
struct IOBlitRectangleStruct {
  var x: Int32
  var y: Int32
  var width: Int32
  var height: Int32
  init()
  init(x: Int32, y: Int32, width: Int32, height: Int32)
}
typealias IOBlitRectangle = IOBlitRectangleStruct
struct IOBlitRectanglesStruct {
  var operation: IOBlitOperation
  var count: IOItemCount
  var rects: (IOBlitRectangle)
  init()
  init(operation: IOBlitOperation, count: IOItemCount, rects: (IOBlitRectangle))
}
typealias IOBlitRectangles = IOBlitRectanglesStruct
struct IOBlitCopyRectangleStruct {
  var sourceX: Int32
  var sourceY: Int32
  var x: Int32
  var y: Int32
  var width: Int32
  var height: Int32
  init()
  init(sourceX: Int32, sourceY: Int32, x: Int32, y: Int32, width: Int32, height: Int32)
}
typealias IOBlitCopyRectangle = IOBlitCopyRectangleStruct
struct IOBlitCopyRectanglesStruct {
  var operation: IOBlitOperation
  var count: IOItemCount
  var rects: (IOBlitCopyRectangle)
  init()
  init(operation: IOBlitOperation, count: IOItemCount, rects: (IOBlitCopyRectangle))
}
typealias IOBlitCopyRectangles = IOBlitCopyRectanglesStruct
struct IOBlitCopyRegionStruct {
  var operation: IOBlitOperation
  var deltaX: Int32
  var deltaY: Int32
  var region: UnsafeMutablePointer<IOAccelDeviceRegion>!
  init()
  init(operation: IOBlitOperation, deltaX: Int32, deltaY: Int32, region: UnsafeMutablePointer<IOAccelDeviceRegion>!)
}
typealias IOBlitCopyRegion = IOBlitCopyRegionStruct
struct IOBlitVertexStruct {
  var x: Int32
  var y: Int32
  init()
  init(x: Int32, y: Int32)
}
typealias IOBlitVertex = IOBlitVertexStruct
struct IOBlitVerticesStruct {
  var operation: IOBlitOperation
  var count: IOItemCount
  var vertices: (IOBlitVertex, IOBlitVertex)
  init()
  init(operation: IOBlitOperation, count: IOItemCount, vertices: (IOBlitVertex, IOBlitVertex))
}
typealias IOBlitVertices = IOBlitVerticesStruct
struct IOBlitScanlinesStruct {
  var operation: IOBlitOperation
  var count: IOItemCount
  var y: Int32
  var height: Int32
  var x: (Int32, Int32)
  init()
  init(operation: IOBlitOperation, count: IOItemCount, y: Int32, height: Int32, x: (Int32, Int32))
}
typealias IOBlitScanlines = IOBlitScanlinesStruct
struct IOBlitCursorStruct {
  var operation: IOBlitOperation
  var rect: IOBlitRectangle
  init()
  init(operation: IOBlitOperation, rect: IOBlitRectangle)
}
typealias IOBlitCursor = IOBlitCursorStruct
typealias IOBlitMemoryRef = OpaquePointer
var kIO1MonochromePixelFormat: Int { get }
var kIO2IndexedPixelFormat: Int { get }
var kIO4IndexedPixelFormat: Int { get }
var kIO8IndexedPixelFormat: Int { get }
var kIO16BE555PixelFormat: Int { get }
var kIO24RGBPixelFormat: Int { get }
var kIO32ARGBPixelFormat: Int { get }
var kIO1IndexedGrayPixelFormat: Int { get }
var kIO2IndexedGrayPixelFormat: Int { get }
var kIO4IndexedGrayPixelFormat: Int { get }
var kIO8IndexedGrayPixelFormat: Int { get }
var kIO16LE555PixelFormat: Int { get }
var kIO16LE5551PixelFormat: Int { get }
var kIO16BE565PixelFormat: Int { get }
var kIO16LE565PixelFormat: Int { get }
var kIO24BGRPixelFormat: Int { get }
var kIO32BGRAPixelFormat: Int { get }
var kIO32ABGRPixelFormat: Int { get }
var kIO32RGBAPixelFormat: Int { get }
var kIOYUVSPixelFormat: Int { get }
var kIOYUVUPixelFormat: Int { get }
var kIOYVU9PixelFormat: Int { get }
var kIOYUV411PixelFormat: Int { get }
var kIOYVYU422PixelFormat: Int { get }
var kIOUYVY422PixelFormat: Int { get }
var kIOYUV211PixelFormat: Int { get }
var kIO2vuyPixelFormat: Int { get }
var kIO16LE4444PixelFormat: Int { get }
var kIO16BE4444PixelFormat: Int { get }
var kIO64BGRAPixelFormat: Int { get }
var kIO64RGBAFloatPixelFormat: Int { get }
var kIO128RGBAFloatPixelFormat: Int { get }
var kIOBlitMemoryRequiresHostFlush: Int { get }
struct IOBlitSurfaceStruct {
  struct __Unnamed_union_memory {
    var bytes: UnsafeMutablePointer<UInt8>!
    var ref: IOBlitMemoryRef!
    init(bytes: UnsafeMutablePointer<UInt8>!)
    init(ref: IOBlitMemoryRef!)
    init()
  }
  var memory: IOBlitSurfaceStruct.__Unnamed_union_memory
  var pixelFormat: IOFourCharCode
  var size: IOBlitRectangle
  var rowBytes: UInt32
  var byteOffset: UInt32
  var palette: UnsafeMutablePointer<UInt32>!
  var accessFlags: IOOptionBits
  var interfaceRef: IOBlitMemoryRef!
  var more: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(memory: IOBlitSurfaceStruct.__Unnamed_union_memory, pixelFormat: IOFourCharCode, size: IOBlitRectangle, rowBytes: UInt32, byteOffset: UInt32, palette: UnsafeMutablePointer<UInt32>!, accessFlags: IOOptionBits, interfaceRef: IOBlitMemoryRef!, more: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
typealias IOBlitSurface = IOBlitSurfaceStruct
typealias IOBlitMemory = IOBlitSurface
var kIOBlitSynchronizeWaitBeamExit: Int { get }
var kIOBlitSynchronizeFlushHostWrites: Int { get }
var kIOBlitWaitContext: Int { get }
var kIOBlitWaitAll2D: Int { get }
var kIOBlitWaitGlobal: Int { get }
var kIOBlitWaitAll: Int { get }
var kIOBlitWaitCheck: Int { get }
var kIOBlitFlushWithSwap: Int { get }
var kIOBlitHasCGSSurface: Int { get }
var kIOBlitFixedSource: Int { get }
var kIOBlitBeamSyncSwaps: Int { get }
var kIOBlitReferenceSource: Int { get }
var kIOBlitUnlockWithSwap: UInt32 { get }
var kIOBlitFramebufferDestination: Int { get }
var kIOBlitSurfaceDestination: Int { get }
var kIOBlitBeamSync: UInt32 { get }
var kIOBlitBeamSyncAlways: UInt32 { get }
var kIOBlitBeamSyncSpin: UInt32 { get }
var kIOBlitAllOptions: UInt32 { get }
var kIOBlitColorSpaceTypes: Int { get }
var kIOAccelTypesKey: String { get }
var kIOAccelIndexKey: String { get }
var kIOAccelRevisionKey: String { get }
typealias IOBlitAccumulatePtr = @convention(c) (UnsafeMutableRawPointer?, Int32, Int32, Int32, Int32, Int32, Int32) -> IOReturn
typealias IOBlitProcPtr = @convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitType, IOBlitSourceDestType, UnsafeMutablePointer<IOBlitOperation>?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutablePointer<IOBlitCompletionToken>?) -> IOReturn
typealias IOBlitterPtr = @convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitType, IOBlitSourceType, UnsafeMutablePointer<IOBlitOperation>?, UnsafeMutableRawPointer?) -> IOReturn
struct IOGraphicsAcceleratorInterfaceStruct {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var Probe: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, io_service_t, UnsafeMutablePointer<Int32>?) -> IOReturn)!
  var Start: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, io_service_t) -> IOReturn)!
  var Stop: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var Reset: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var CopyCapabilities: (@convention(c) (UnsafeMutableRawPointer?, FourCharCode, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var GetBlitProc: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitType, IOBlitSourceDestType, UnsafeMutablePointer<IOBlitProcPtr?>?) -> IOReturn)!
  var Flush: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var WaitForCompletion: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitCompletionToken) -> IOReturn)!
  var Synchronize: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32, UInt32, UInt32) -> IOReturn)!
  var GetBeamPosition: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<Int32>?) -> IOReturn)!
  var AllocateSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutableRawPointer?) -> IOReturn)!
  var FreeSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?) -> IOReturn)!
  var LockSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutablePointer<vm_address_t>?) -> IOReturn)!
  var UnlockSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutablePointer<IOOptionBits>?) -> IOReturn)!
  var SwapSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutablePointer<IOOptionBits>?) -> IOReturn)!
  var SetDestination: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?) -> IOReturn)!
  var GetBlitter: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitType, IOBlitSourceType, UnsafeMutablePointer<IOBlitterPtr?>?) -> IOReturn)!
  var WaitComplete: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var __gaInterfaceReserved: (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?)
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, Probe: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, io_service_t, UnsafeMutablePointer<Int32>?) -> IOReturn)!, Start: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, io_service_t) -> IOReturn)!, Stop: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, Reset: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, CopyCapabilities: (@convention(c) (UnsafeMutableRawPointer?, FourCharCode, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, GetBlitProc: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitType, IOBlitSourceDestType, UnsafeMutablePointer<IOBlitProcPtr?>?) -> IOReturn)!, Flush: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, WaitForCompletion: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitCompletionToken) -> IOReturn)!, Synchronize: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32, UInt32, UInt32) -> IOReturn)!, GetBeamPosition: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<Int32>?) -> IOReturn)!, AllocateSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutableRawPointer?) -> IOReturn)!, FreeSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?) -> IOReturn)!, LockSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutablePointer<vm_address_t>?) -> IOReturn)!, UnlockSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutablePointer<IOOptionBits>?) -> IOReturn)!, SwapSurface: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?, UnsafeMutablePointer<IOOptionBits>?) -> IOReturn)!, SetDestination: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, UnsafeMutablePointer<IOBlitSurface>?) -> IOReturn)!, GetBlitter: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits, IOBlitType, IOBlitSourceType, UnsafeMutablePointer<IOBlitterPtr?>?) -> IOReturn)!, WaitComplete: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, __gaInterfaceReserved: (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?))
}
typealias IOGraphicsAcceleratorInterface = IOGraphicsAcceleratorInterfaceStruct
func IOAccelFindAccelerator(_ framebuffer: io_service_t, _ pAccelerator: UnsafeMutablePointer<io_service_t>!, _ pFramebufferIndex: UnsafeMutablePointer<UInt32>!) -> IOReturn
var IOGRAPHICSTYPES_REV: Int32 { get }
typealias IOIndex = Int32
typealias IOSelect = UInt32
typealias IOFixed1616 = UInt32
typealias IODisplayVendorID = UInt32
typealias IODisplayProductID = UInt32
typealias IODisplayModeID = Int32
var kIODisplayModeIDBootProgrammable: Int { get }
var kIODisplayModeIDReservedBase: Int { get }
var kIOMaxPixelBits: Int { get }
typealias IOPixelEncoding = (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
var IO1BitIndexedPixels: String { get }
var IO2BitIndexedPixels: String { get }
var IO4BitIndexedPixels: String { get }
var IO8BitIndexedPixels: String { get }
var IO16BitDirectPixels: String { get }
var IO32BitDirectPixels: String { get }
var kIO30BitDirectPixels: String { get }
var kIO64BitDirectPixels: String { get }
var kIO16BitFloatPixels: String { get }
var kIO32BitFloatPixels: String { get }
var IOYUV422Pixels: String { get }
var IO8BitOverlayPixels: String { get }
var IOPagedPixels: String { get }
var kIOCLUTPixels: Int { get }
var kIOFixedCLUTPixels: Int { get }
var kIORGBDirectPixels: Int { get }
var kIOMonoDirectPixels: Int { get }
var kIOMonoInverseDirectPixels: Int { get }
var kIORGBSignedDirectPixels: Int { get }
var kIORGBSignedFloatingPointPixels: Int { get }
struct IOPixelInformation {
  var bytesPerRow: UInt32
  var bytesPerPlane: UInt32
  var bitsPerPixel: UInt32
  var pixelType: UInt32
  var componentCount: UInt32
  var bitsPerComponent: UInt32
  var componentMasks: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  var pixelFormat: IOPixelEncoding
  var flags: UInt32
  var activeWidth: UInt32
  var activeHeight: UInt32
  var reserved: (UInt32, UInt32)
  init()
  init(bytesPerRow: UInt32, bytesPerPlane: UInt32, bitsPerPixel: UInt32, pixelType: UInt32, componentCount: UInt32, bitsPerComponent: UInt32, componentMasks: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), pixelFormat: IOPixelEncoding, flags: UInt32, activeWidth: UInt32, activeHeight: UInt32, reserved: (UInt32, UInt32))
}
typealias IOAppleTimingID = UInt32
struct IODisplayModeInformation {
  var nominalWidth: UInt32
  var nominalHeight: UInt32
  var refreshRate: IOFixed1616
  var maxDepthIndex: IOIndex
  var flags: UInt32
  var imageWidth: UInt16
  var imageHeight: UInt16
  var reserved: (UInt32, UInt32, UInt32)
  init()
  init(nominalWidth: UInt32, nominalHeight: UInt32, refreshRate: IOFixed1616, maxDepthIndex: IOIndex, flags: UInt32, imageWidth: UInt16, imageHeight: UInt16, reserved: (UInt32, UInt32, UInt32))
}
var kDisplayModeSafetyFlags: Int { get }
var kDisplayModeAlwaysShowFlag: Int { get }
var kDisplayModeNeverShowFlag: Int { get }
var kDisplayModeNotResizeFlag: Int { get }
var kDisplayModeRequiresPanFlag: Int { get }
var kDisplayModeInterlacedFlag: Int { get }
var kDisplayModeSimulscanFlag: Int { get }
var kDisplayModeBuiltInFlag: Int { get }
var kDisplayModeNotPresetFlag: Int { get }
var kDisplayModeStretchedFlag: Int { get }
var kDisplayModeNotGraphicsQualityFlag: Int { get }
var kDisplayModeValidateAgainstDisplay: Int { get }
var kDisplayModeTelevisionFlag: Int { get }
var kDisplayModeValidForMirroringFlag: Int { get }
var kDisplayModeAcceleratorBackedFlag: Int { get }
var kDisplayModeValidForHiResFlag: Int { get }
var kDisplayModeValidForAirPlayFlag: Int { get }
var kDisplayModeNativeFlag: Int { get }
var kDisplayModeValidFlag: Int { get }
var kDisplayModeSafeFlag: Int { get }
var kDisplayModeDefaultFlag: Int { get }
struct IOFramebufferInformation {
  var baseAddress: IOPhysicalAddress
  var activeWidth: UInt32
  var activeHeight: UInt32
  var bytesPerRow: IOByteCount
  var bytesPerPlane: IOByteCount
  var bitsPerPixel: UInt32
  var pixelType: UInt32
  var flags: UInt32
  var reserved: (UInt32, UInt32, UInt32, UInt32)
  init()
  init(baseAddress: IOPhysicalAddress, activeWidth: UInt32, activeHeight: UInt32, bytesPerRow: IOByteCount, bytesPerPlane: IOByteCount, bitsPerPixel: UInt32, pixelType: UInt32, flags: UInt32, reserved: (UInt32, UInt32, UInt32, UInt32))
}
var kFramebufferSupportsCopybackCache: Int { get }
var kFramebufferSupportsWritethruCache: Int { get }
var kFramebufferSupportsGammaCorrection: Int { get }
var kFramebufferDisableAltivecAccess: Int { get }
typealias IOPixelAperture = IOIndex
var kIOFBSystemAperture: Int { get }
var kIOFBSetGammaSyncNotSpecified: Int32 { get }
var kIOFBSetGammaSyncNoSync: Int32 { get }
var kIOFBSetGammaSyncVerticalBlankSync: Int32 { get }
typealias IOColorComponent = UInt16
struct IOColorEntry {
  var index: UInt16
  var red: IOColorComponent
  var green: IOColorComponent
  var blue: IOColorComponent
  init()
  init(index: UInt16, red: IOColorComponent, green: IOColorComponent, blue: IOColorComponent)
}
var kSetCLUTByValue: Int { get }
var kSetCLUTImmediately: Int { get }
var kSetCLUTWithLuminance: Int { get }
var kIOPowerStateAttribute: Int { get }
var kIOPowerAttribute: Int { get }
var kIODriverPowerAttribute: Int { get }
var kIOHardwareCursorAttribute: Int { get }
var kIOMirrorAttribute: Int { get }
var kIOMirrorDefaultAttribute: Int { get }
var kIOCapturedAttribute: Int { get }
var kIOCursorControlAttribute: Int { get }
var kIOSystemPowerAttribute: Int { get }
var kIOWindowServerActiveAttribute: Int { get }
var kIOVRAMSaveAttribute: Int { get }
var kIODeferCLUTSetAttribute: Int { get }
var kIOClamshellStateAttribute: Int { get }
var kIOFBDisplayPortTrainingAttribute: Int { get }
var kIOFBDisplayState: Int { get }
var kIOFBVariableRefreshRate: Int { get }
var kIOFBLimitHDCPAttribute: Int { get }
var kIOFBLimitHDCPStateAttribute: Int { get }
var kIOFBStop: Int { get }
var kIOFBRedGammaScaleAttribute: Int { get }
var kIOFBGreenGammaScaleAttribute: Int { get }
var kIOFBBlueGammaScaleAttribute: Int { get }
var kIOFBHDRMetaDataAttribute: Int { get }
var kIOBuiltinPanelPowerAttribute: Int { get }
var kIOFBHDCPLimit_AllowAll: Int { get }
var kIOFBHDCPLimit_NoHDCP1x: Int { get }
var kIOFBHDCPLimit_NoHDCP20Type0: Int { get }
var kIOFBHDCPLimit_NoHDCP20Type1: Int { get }
struct IOFBHDRMetaDataV1 {
  var displayPrimary_X0: UInt16
  var displayPrimary_Y0: UInt16
  var displayPrimary_X1: UInt16
  var displayPrimary_Y1: UInt16
  var displayPrimary_X2: UInt16
  var displayPrimary_Y2: UInt16
  var displayPrimary_X: UInt16
  var displayPrimary_Y: UInt16
  var desiredLuminance_Max: UInt16
  var desiredLuminance_Min: UInt16
  var desiredLightLevel_Avg: UInt16
  var desiredLightLevel_Max: UInt16
  var __reservedA: (UInt64, UInt64, UInt64, UInt64, UInt64)
  init()
  init(displayPrimary_X0: UInt16, displayPrimary_Y0: UInt16, displayPrimary_X1: UInt16, displayPrimary_Y1: UInt16, displayPrimary_X2: UInt16, displayPrimary_Y2: UInt16, displayPrimary_X: UInt16, displayPrimary_Y: UInt16, desiredLuminance_Max: UInt16, desiredLuminance_Min: UInt16, desiredLightLevel_Avg: UInt16, desiredLightLevel_Max: UInt16, __reservedA: (UInt64, UInt64, UInt64, UInt64, UInt64))
}
struct IOFBHDRMetaData {
  var v1: IOFBHDRMetaDataV1
  init(v1: IOFBHDRMetaDataV1)
  init()
}
var kIOFBDisplayState_AlreadyActive: Int { get }
var kIOFBDisplayState_RestoredProfile: Int { get }
var kIOFBDisplayState_PipelineBlack: Int { get }
var kIOFBDisplayState_Mask: Int { get }
var kIOWSAA_Unaccelerated: UInt32 { get }
var kIOWSAA_Accelerated: UInt32 { get }
var kIOWSAA_From_Accelerated: UInt32 { get }
var kIOWSAA_To_Accelerated: UInt32 { get }
var kIOWSAA_Sleep: UInt32 { get }
var kIOWSAA_Hibernate: UInt32 { get }
var kIOWSAA_DriverOpen: UInt32 { get }
var kIOWSAA_StateMask: UInt32 { get }
var kIOWSAA_Transactional: UInt32 { get }
var kIOWSAA_DeferStart: UInt32 { get }
var kIOWSAA_DeferEnd: UInt32 { get }
var kIOWSAA_NonConsoleDevice: UInt32 { get }
var kIOWSAA_Reserved: UInt32 { get }
var kIOFBNS_Rendezvous: UInt32 { get }
var kIOFBNS_MessageMask: UInt32 { get }
var kIOFBNS_Sleep: UInt32 { get }
var kIOFBNS_Wake: UInt32 { get }
var kIOFBNS_Doze: UInt32 { get }
var kIOFBNS_Dim: UInt32 { get }
var kIOFBNS_UnDim: UInt32 { get }
var kIOFBNS_DisplayStateMask: UInt32 { get }
var kIOFBNS_DisplayStateShift: UInt32 { get }
var kIOFBNS_GenerationMask: UInt32 { get }
var kIOFBNS_GenerationShift: UInt32 { get }
var kIOMirrorIsPrimary: UInt32 { get }
var kIOMirrorHWClipped: UInt32 { get }
var kIOMirrorIsMirrored: UInt32 { get }
var kIOMirrorDefault: Int { get }
var kIOMirrorForced: Int { get }
struct IODetailedTimingInformationV1 {
  var pixelClock: UInt32
  var horizontalActive: UInt32
  var horizontalBlanking: UInt32
  var horizontalBorder: UInt32
  var horizontalSyncOffset: UInt32
  var horizontalSyncWidth: UInt32
  var verticalActive: UInt32
  var verticalBlanking: UInt32
  var verticalBorder: UInt32
  var verticalSyncOffset: UInt32
  var verticalSyncWidth: UInt32
  init()
  init(pixelClock: UInt32, horizontalActive: UInt32, horizontalBlanking: UInt32, horizontalBorder: UInt32, horizontalSyncOffset: UInt32, horizontalSyncWidth: UInt32, verticalActive: UInt32, verticalBlanking: UInt32, verticalBorder: UInt32, verticalSyncOffset: UInt32, verticalSyncWidth: UInt32)
}
struct IODetailedTimingInformationV2 {
  var __reservedA: (UInt32, UInt32, UInt32)
  var horizontalScaledInset: UInt32
  var verticalScaledInset: UInt32
  var scalerFlags: UInt32
  var horizontalScaled: UInt32
  var verticalScaled: UInt32
  var signalConfig: UInt32
  var signalLevels: UInt32
  var pixelClock: UInt64
  var minPixelClock: UInt64
  var maxPixelClock: UInt64
  var horizontalActive: UInt32
  var horizontalBlanking: UInt32
  var horizontalSyncOffset: UInt32
  var horizontalSyncPulseWidth: UInt32
  var verticalActive: UInt32
  var verticalBlanking: UInt32
  var verticalSyncOffset: UInt32
  var verticalSyncPulseWidth: UInt32
  var horizontalBorderLeft: UInt32
  var horizontalBorderRight: UInt32
  var verticalBorderTop: UInt32
  var verticalBorderBottom: UInt32
  var horizontalSyncConfig: UInt32
  var horizontalSyncLevel: UInt32
  var verticalSyncConfig: UInt32
  var verticalSyncLevel: UInt32
  var numLinks: UInt32
  var verticalBlankingExtension: UInt32
  var pixelEncoding: UInt16
  var bitsPerColorComponent: UInt16
  var colorimetry: UInt16
  var dynamicRange: UInt16
  var dscCompressedBitsPerPixel: UInt16
  var dscSliceHeight: UInt16
  var dscSliceWidth: UInt16
  var __reservedB: (UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(__reservedA: (UInt32, UInt32, UInt32), horizontalScaledInset: UInt32, verticalScaledInset: UInt32, scalerFlags: UInt32, horizontalScaled: UInt32, verticalScaled: UInt32, signalConfig: UInt32, signalLevels: UInt32, pixelClock: UInt64, minPixelClock: UInt64, maxPixelClock: UInt64, horizontalActive: UInt32, horizontalBlanking: UInt32, horizontalSyncOffset: UInt32, horizontalSyncPulseWidth: UInt32, verticalActive: UInt32, verticalBlanking: UInt32, verticalSyncOffset: UInt32, verticalSyncPulseWidth: UInt32, horizontalBorderLeft: UInt32, horizontalBorderRight: UInt32, verticalBorderTop: UInt32, verticalBorderBottom: UInt32, horizontalSyncConfig: UInt32, horizontalSyncLevel: UInt32, verticalSyncConfig: UInt32, verticalSyncLevel: UInt32, numLinks: UInt32, verticalBlankingExtension: UInt32, pixelEncoding: UInt16, bitsPerColorComponent: UInt16, colorimetry: UInt16, dynamicRange: UInt16, dscCompressedBitsPerPixel: UInt16, dscSliceHeight: UInt16, dscSliceWidth: UInt16, __reservedB: (UInt16, UInt16, UInt16, UInt16, UInt16))
}
typealias IODetailedTimingInformation = IODetailedTimingInformationV2
struct IOTimingInformation {
  struct __Unnamed_union_detailedInfo {
    var v1: IODetailedTimingInformationV1
    var v2: IODetailedTimingInformationV2
    init(v1: IODetailedTimingInformationV1)
    init(v2: IODetailedTimingInformationV2)
    init()
  }
  var appleTimingID: IOAppleTimingID
  var flags: UInt32
  var detailedInfo: IOTimingInformation.__Unnamed_union_detailedInfo
  init()
  init(appleTimingID: IOAppleTimingID, flags: UInt32, detailedInfo: IOTimingInformation.__Unnamed_union_detailedInfo)
}
var kIODetailedTimingValid: UInt32 { get }
var kIOScalingInfoValid: UInt32 { get }
var kIOScaleStretchToFit: Int { get }
var kIOScaleRotateFlags: Int { get }
var kIOScaleSwapAxes: Int { get }
var kIOScaleInvertX: Int { get }
var kIOScaleInvertY: Int { get }
var kIOScaleRotate0: Int { get }
var kIOScaleRotate90: Int { get }
var kIOScaleRotate180: Int { get }
var kIOScaleRotate270: Int { get }
var kIOPixelEncodingNotSupported: Int { get }
var kIOPixelEncodingRGB444: Int { get }
var kIOPixelEncodingYCbCr444: Int { get }
var kIOPixelEncodingYCbCr422: Int { get }
var kIOPixelEncodingYCbCr420: Int { get }
var kIOBitsPerColorComponentNotSupported: Int { get }
var kIOBitsPerColorComponent6: Int { get }
var kIOBitsPerColorComponent8: Int { get }
var kIOBitsPerColorComponent10: Int { get }
var kIOBitsPerColorComponent12: Int { get }
var kIOBitsPerColorComponent16: Int { get }
var kIOColorimetryNotSupported: Int { get }
var kIOColorimetryNativeRGB: Int { get }
var kIOColorimetrysRGB: Int { get }
var kIOColorimetryDCIP3: Int { get }
var kIOColorimetryAdobeRGB: Int { get }
var kIOColorimetryxvYCC: Int { get }
var kIOColorimetryWGRGB: Int { get }
var kIOColorimetryBT601: Int { get }
var kIOColorimetryBT709: Int { get }
var kIOColorimetryBT2020: Int { get }
var kIOColorimetryBT2100: Int { get }
var kIODynamicRangeNotSupported: Int { get }
var kIODynamicRangeSDR: Int { get }
var kIODynamicRangeHDR10: Int { get }
var kIODynamicRangeDolbyNormalMode: Int { get }
var kIODynamicRangeDolbyTunnelMode: Int { get }
var kIODynamicRangeTraditionalGammaHDR: Int { get }
var kIODynamicRangeTraditionalGammaSDR: Int { get }
struct IOFBDisplayModeDescription {
  var info: IODisplayModeInformation
  var timingInfo: IOTimingInformation
  init()
  init(info: IODisplayModeInformation, timingInfo: IOTimingInformation)
}
struct IODisplayTimingRangeV1 {
  var __reservedA: (UInt32, UInt32)
  var version: UInt32
  var __reservedB: (UInt32, UInt32, UInt32, UInt32, UInt32)
  var minPixelClock: UInt64
  var maxPixelClock: UInt64
  var maxPixelError: UInt32
  var supportedSyncFlags: UInt32
  var supportedSignalLevels: UInt32
  var supportedSignalConfigs: UInt32
  var minFrameRate: UInt32
  var maxFrameRate: UInt32
  var minLineRate: UInt32
  var maxLineRate: UInt32
  var maxHorizontalTotal: UInt32
  var maxVerticalTotal: UInt32
  var __reservedD: (UInt32, UInt32)
  var charSizeHorizontalActive: UInt8
  var charSizeHorizontalBlanking: UInt8
  var charSizeHorizontalSyncOffset: UInt8
  var charSizeHorizontalSyncPulse: UInt8
  var charSizeVerticalActive: UInt8
  var charSizeVerticalBlanking: UInt8
  var charSizeVerticalSyncOffset: UInt8
  var charSizeVerticalSyncPulse: UInt8
  var charSizeHorizontalBorderLeft: UInt8
  var charSizeHorizontalBorderRight: UInt8
  var charSizeVerticalBorderTop: UInt8
  var charSizeVerticalBorderBottom: UInt8
  var charSizeHorizontalTotal: UInt8
  var charSizeVerticalTotal: UInt8
  var __reservedE: UInt16
  var minHorizontalActiveClocks: UInt32
  var maxHorizontalActiveClocks: UInt32
  var minHorizontalBlankingClocks: UInt32
  var maxHorizontalBlankingClocks: UInt32
  var minHorizontalSyncOffsetClocks: UInt32
  var maxHorizontalSyncOffsetClocks: UInt32
  var minHorizontalPulseWidthClocks: UInt32
  var maxHorizontalPulseWidthClocks: UInt32
  var minVerticalActiveClocks: UInt32
  var maxVerticalActiveClocks: UInt32
  var minVerticalBlankingClocks: UInt32
  var maxVerticalBlankingClocks: UInt32
  var minVerticalSyncOffsetClocks: UInt32
  var maxVerticalSyncOffsetClocks: UInt32
  var minVerticalPulseWidthClocks: UInt32
  var maxVerticalPulseWidthClocks: UInt32
  var minHorizontalBorderLeft: UInt32
  var maxHorizontalBorderLeft: UInt32
  var minHorizontalBorderRight: UInt32
  var maxHorizontalBorderRight: UInt32
  var minVerticalBorderTop: UInt32
  var maxVerticalBorderTop: UInt32
  var minVerticalBorderBottom: UInt32
  var maxVerticalBorderBottom: UInt32
  var maxNumLinks: UInt32
  var minLink0PixelClock: UInt32
  var maxLink0PixelClock: UInt32
  var minLink1PixelClock: UInt32
  var maxLink1PixelClock: UInt32
  var supportedPixelEncoding: UInt16
  var supportedBitsPerColorComponent: UInt16
  var supportedColorimetryModes: UInt16
  var supportedDynamicRangeModes: UInt16
  var __reservedF: (UInt32)
  init()
  init(__reservedA: (UInt32, UInt32), version: UInt32, __reservedB: (UInt32, UInt32, UInt32, UInt32, UInt32), minPixelClock: UInt64, maxPixelClock: UInt64, maxPixelError: UInt32, supportedSyncFlags: UInt32, supportedSignalLevels: UInt32, supportedSignalConfigs: UInt32, minFrameRate: UInt32, maxFrameRate: UInt32, minLineRate: UInt32, maxLineRate: UInt32, maxHorizontalTotal: UInt32, maxVerticalTotal: UInt32, __reservedD: (UInt32, UInt32), charSizeHorizontalActive: UInt8, charSizeHorizontalBlanking: UInt8, charSizeHorizontalSyncOffset: UInt8, charSizeHorizontalSyncPulse: UInt8, charSizeVerticalActive: UInt8, charSizeVerticalBlanking: UInt8, charSizeVerticalSyncOffset: UInt8, charSizeVerticalSyncPulse: UInt8, charSizeHorizontalBorderLeft: UInt8, charSizeHorizontalBorderRight: UInt8, charSizeVerticalBorderTop: UInt8, charSizeVerticalBorderBottom: UInt8, charSizeHorizontalTotal: UInt8, charSizeVerticalTotal: UInt8, __reservedE: UInt16, minHorizontalActiveClocks: UInt32, maxHorizontalActiveClocks: UInt32, minHorizontalBlankingClocks: UInt32, maxHorizontalBlankingClocks: UInt32, minHorizontalSyncOffsetClocks: UInt32, maxHorizontalSyncOffsetClocks: UInt32, minHorizontalPulseWidthClocks: UInt32, maxHorizontalPulseWidthClocks: UInt32, minVerticalActiveClocks: UInt32, maxVerticalActiveClocks: UInt32, minVerticalBlankingClocks: UInt32, maxVerticalBlankingClocks: UInt32, minVerticalSyncOffsetClocks: UInt32, maxVerticalSyncOffsetClocks: UInt32, minVerticalPulseWidthClocks: UInt32, maxVerticalPulseWidthClocks: UInt32, minHorizontalBorderLeft: UInt32, maxHorizontalBorderLeft: UInt32, minHorizontalBorderRight: UInt32, maxHorizontalBorderRight: UInt32, minVerticalBorderTop: UInt32, maxVerticalBorderTop: UInt32, minVerticalBorderBottom: UInt32, maxVerticalBorderBottom: UInt32, maxNumLinks: UInt32, minLink0PixelClock: UInt32, maxLink0PixelClock: UInt32, minLink1PixelClock: UInt32, maxLink1PixelClock: UInt32, supportedPixelEncoding: UInt16, supportedBitsPerColorComponent: UInt16, supportedColorimetryModes: UInt16, supportedDynamicRangeModes: UInt16, __reservedF: (UInt32))
}
struct IODisplayTimingRangeV2 {
  var __reservedA: (UInt32, UInt32)
  var version: UInt32
  var __reservedB: (UInt32, UInt32, UInt32, UInt32, UInt32)
  var minPixelClock: UInt64
  var maxPixelClock: UInt64
  var maxPixelError: UInt32
  var supportedSyncFlags: UInt32
  var supportedSignalLevels: UInt32
  var supportedSignalConfigs: UInt32
  var minFrameRate: UInt32
  var maxFrameRate: UInt32
  var minLineRate: UInt32
  var maxLineRate: UInt32
  var maxHorizontalTotal: UInt32
  var maxVerticalTotal: UInt32
  var __reservedD: (UInt32, UInt32)
  var charSizeHorizontalActive: UInt8
  var charSizeHorizontalBlanking: UInt8
  var charSizeHorizontalSyncOffset: UInt8
  var charSizeHorizontalSyncPulse: UInt8
  var charSizeVerticalActive: UInt8
  var charSizeVerticalBlanking: UInt8
  var charSizeVerticalSyncOffset: UInt8
  var charSizeVerticalSyncPulse: UInt8
  var charSizeHorizontalBorderLeft: UInt8
  var charSizeHorizontalBorderRight: UInt8
  var charSizeVerticalBorderTop: UInt8
  var charSizeVerticalBorderBottom: UInt8
  var charSizeHorizontalTotal: UInt8
  var charSizeVerticalTotal: UInt8
  var __reservedE: UInt16
  var minHorizontalActiveClocks: UInt32
  var maxHorizontalActiveClocks: UInt32
  var minHorizontalBlankingClocks: UInt32
  var maxHorizontalBlankingClocks: UInt32
  var minHorizontalSyncOffsetClocks: UInt32
  var maxHorizontalSyncOffsetClocks: UInt32
  var minHorizontalPulseWidthClocks: UInt32
  var maxHorizontalPulseWidthClocks: UInt32
  var minVerticalActiveClocks: UInt32
  var maxVerticalActiveClocks: UInt32
  var minVerticalBlankingClocks: UInt32
  var maxVerticalBlankingClocks: UInt32
  var minVerticalSyncOffsetClocks: UInt32
  var maxVerticalSyncOffsetClocks: UInt32
  var minVerticalPulseWidthClocks: UInt32
  var maxVerticalPulseWidthClocks: UInt32
  var minHorizontalBorderLeft: UInt32
  var maxHorizontalBorderLeft: UInt32
  var minHorizontalBorderRight: UInt32
  var maxHorizontalBorderRight: UInt32
  var minVerticalBorderTop: UInt32
  var maxVerticalBorderTop: UInt32
  var minVerticalBorderBottom: UInt32
  var maxVerticalBorderBottom: UInt32
  var maxNumLinks: UInt32
  var minLink0PixelClock: UInt32
  var maxLink0PixelClock: UInt32
  var minLink1PixelClock: UInt32
  var maxLink1PixelClock: UInt32
  var supportedPixelEncoding: UInt16
  var supportedBitsPerColorComponent: UInt16
  var supportedColorimetryModes: UInt16
  var supportedDynamicRangeModes: UInt16
  var __reservedF: (UInt32)
  var maxBandwidth: UInt64
  var dscMinSliceHeight: UInt32
  var dscMaxSliceHeight: UInt32
  var dscMinSliceWidth: UInt32
  var dscMaxSliceWidth: UInt32
  var dscMinSlicePerLine: UInt32
  var dscMaxSlicePerLine: UInt32
  var dscMinBPC: UInt16
  var dscMaxBPC: UInt16
  var dscMinBPP: UInt16
  var dscMaxBPP: UInt16
  var dscVBR: UInt8
  var dscBlockPredEnable: UInt8
  var __reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(__reservedA: (UInt32, UInt32), version: UInt32, __reservedB: (UInt32, UInt32, UInt32, UInt32, UInt32), minPixelClock: UInt64, maxPixelClock: UInt64, maxPixelError: UInt32, supportedSyncFlags: UInt32, supportedSignalLevels: UInt32, supportedSignalConfigs: UInt32, minFrameRate: UInt32, maxFrameRate: UInt32, minLineRate: UInt32, maxLineRate: UInt32, maxHorizontalTotal: UInt32, maxVerticalTotal: UInt32, __reservedD: (UInt32, UInt32), charSizeHorizontalActive: UInt8, charSizeHorizontalBlanking: UInt8, charSizeHorizontalSyncOffset: UInt8, charSizeHorizontalSyncPulse: UInt8, charSizeVerticalActive: UInt8, charSizeVerticalBlanking: UInt8, charSizeVerticalSyncOffset: UInt8, charSizeVerticalSyncPulse: UInt8, charSizeHorizontalBorderLeft: UInt8, charSizeHorizontalBorderRight: UInt8, charSizeVerticalBorderTop: UInt8, charSizeVerticalBorderBottom: UInt8, charSizeHorizontalTotal: UInt8, charSizeVerticalTotal: UInt8, __reservedE: UInt16, minHorizontalActiveClocks: UInt32, maxHorizontalActiveClocks: UInt32, minHorizontalBlankingClocks: UInt32, maxHorizontalBlankingClocks: UInt32, minHorizontalSyncOffsetClocks: UInt32, maxHorizontalSyncOffsetClocks: UInt32, minHorizontalPulseWidthClocks: UInt32, maxHorizontalPulseWidthClocks: UInt32, minVerticalActiveClocks: UInt32, maxVerticalActiveClocks: UInt32, minVerticalBlankingClocks: UInt32, maxVerticalBlankingClocks: UInt32, minVerticalSyncOffsetClocks: UInt32, maxVerticalSyncOffsetClocks: UInt32, minVerticalPulseWidthClocks: UInt32, maxVerticalPulseWidthClocks: UInt32, minHorizontalBorderLeft: UInt32, maxHorizontalBorderLeft: UInt32, minHorizontalBorderRight: UInt32, maxHorizontalBorderRight: UInt32, minVerticalBorderTop: UInt32, maxVerticalBorderTop: UInt32, minVerticalBorderBottom: UInt32, maxVerticalBorderBottom: UInt32, maxNumLinks: UInt32, minLink0PixelClock: UInt32, maxLink0PixelClock: UInt32, minLink1PixelClock: UInt32, maxLink1PixelClock: UInt32, supportedPixelEncoding: UInt16, supportedBitsPerColorComponent: UInt16, supportedColorimetryModes: UInt16, supportedDynamicRangeModes: UInt16, __reservedF: (UInt32), maxBandwidth: UInt64, dscMinSliceHeight: UInt32, dscMaxSliceHeight: UInt32, dscMinSliceWidth: UInt32, dscMaxSliceWidth: UInt32, dscMinSlicePerLine: UInt32, dscMaxSlicePerLine: UInt32, dscMinBPC: UInt16, dscMaxBPC: UInt16, dscMinBPP: UInt16, dscMaxBPP: UInt16, dscVBR: UInt8, dscBlockPredEnable: UInt8, __reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
typealias IODisplayTimingRange = IODisplayTimingRangeV2
var kIOTimingRangeV2: Int { get }
var kIOTimingRangeV1: Int { get }
var kIORangePixelEncodingNotSupported: Int { get }
var kIORangePixelEncodingRGB444: Int { get }
var kIORangePixelEncodingYCbCr444: Int { get }
var kIORangePixelEncodingYCbCr422: Int { get }
var kIORangePixelEncodingYCbCr420: Int { get }
var kIORangeBitsPerColorComponentNotSupported: Int { get }
var kIORangeBitsPerColorComponent6: Int { get }
var kIORangeBitsPerColorComponent8: Int { get }
var kIORangeBitsPerColorComponent10: Int { get }
var kIORangeBitsPerColorComponent12: Int { get }
var kIORangeBitsPerColorComponent16: Int { get }
var kIORangeColorimetryNotSupported: Int { get }
var kIORangeColorimetryNativeRGB: Int { get }
var kIORangeColorimetrysRGB: Int { get }
var kIORangeColorimetryDCIP3: Int { get }
var kIORangeColorimetryAdobeRGB: Int { get }
var kIORangeColorimetryxvYCC: Int { get }
var kIORangeColorimetryWGRGB: Int { get }
var kIORangeColorimetryBT601: Int { get }
var kIORangeColorimetryBT709: Int { get }
var kIORangeColorimetryBT2020: Int { get }
var kIORangeColorimetryBT2100: Int { get }
var kIORangeDynamicRangeNotSupported: Int { get }
var kIORangeDynamicRangeSDR: Int { get }
var kIORangeDynamicRangeHDR10: Int { get }
var kIORangeDynamicRangeDolbyNormalMode: Int { get }
var kIORangeDynamicRangeDolbyTunnelMode: Int { get }
var kIORangeDynamicRangeTraditionalGammaHDR: Int { get }
var kIORangeDynamicRangeTraditionalGammaSDR: Int { get }
var kIORangeSupportsSignal_0700_0300: Int { get }
var kIORangeSupportsSignal_0714_0286: Int { get }
var kIORangeSupportsSignal_1000_0400: Int { get }
var kIORangeSupportsSignal_0700_0000: Int { get }
var kIORangeSupportsSeparateSyncs: Int { get }
var kIORangeSupportsSyncOnGreen: Int { get }
var kIORangeSupportsCompositeSync: Int { get }
var kIORangeSupportsVSyncSerration: Int { get }
var kIORangeSupportsInterlacedCEATiming: Int { get }
var kIORangeSupportsInterlacedCEATimingWithConfirm: Int { get }
var kIODigitalSignal: Int { get }
var kIOAnalogSetupExpected: Int { get }
var kIOInterlacedCEATiming: Int { get }
var kIONTSCTiming: Int { get }
var kIOPALTiming: Int { get }
var kIODSCBlockPredEnable: Int { get }
var kIOAnalogSignalLevel_0700_0300: Int { get }
var kIOAnalogSignalLevel_0714_0286: Int { get }
var kIOAnalogSignalLevel_1000_0400: Int { get }
var kIOAnalogSignalLevel_0700_0000: Int { get }
var kIOSyncPositivePolarity: Int { get }
struct IODisplayScalerInformation {
  var __reservedA: (UInt32)
  var version: UInt32
  var __reservedB: (UInt32, UInt32)
  var scalerFeatures: IOOptionBits
  var maxHorizontalPixels: UInt32
  var maxVerticalPixels: UInt32
  var __reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(__reservedA: (UInt32), version: UInt32, __reservedB: (UInt32, UInt32), scalerFeatures: IOOptionBits, maxHorizontalPixels: UInt32, maxVerticalPixels: UInt32, __reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kIOScaleStretchOnly: Int { get }
var kIOScaleCanUpSamplePixels: Int { get }
var kIOScaleCanDownSamplePixels: Int { get }
var kIOScaleCanScaleInterlaced: Int { get }
var kIOScaleCanSupportInset: Int { get }
var kIOScaleCanRotate: Int { get }
var kIOScaleCanBorderInsetOnly: Int { get }
var kOrConnections: Int { get }
var kAndConnections: Int { get }
var kConnectionFlags: Int { get }
var kConnectionSyncEnable: Int { get }
var kConnectionSyncFlags: Int { get }
var kConnectionSupportsAppleSense: Int { get }
var kConnectionSupportsLLDDCSense: Int { get }
var kConnectionSupportsHLDDCSense: Int { get }
var kConnectionEnable: Int { get }
var kConnectionCheckEnable: Int { get }
var kConnectionProbe: Int { get }
var kConnectionIgnore: Int { get }
var kConnectionChanged: Int { get }
var kConnectionPower: Int { get }
var kConnectionPostWake: Int { get }
var kConnectionDisplayParameterCount: Int { get }
var kConnectionDisplayParameters: Int { get }
var kConnectionOverscan: Int { get }
var kConnectionVideoBest: Int { get }
var kConnectionRedGammaScale: Int { get }
var kConnectionGreenGammaScale: Int { get }
var kConnectionBlueGammaScale: Int { get }
var kConnectionGammaScale: Int { get }
var kConnectionFlushParameters: Int { get }
var kConnectionVBLMultiplier: Int { get }
var kConnectionHandleDisplayPortEvent: Int { get }
var kConnectionPanelTimingDisable: Int { get }
var kConnectionColorMode: Int { get }
var kConnectionColorModesSupported: Int { get }
var kConnectionColorDepthsSupported: Int { get }
var kConnectionControllerDepthsSupported: Int { get }
var kConnectionControllerColorDepth: Int { get }
var kConnectionControllerDitherControl: Int { get }
var kConnectionDisplayFlags: Int { get }
var kConnectionEnableAudio: Int { get }
var kConnectionAudioStreaming: Int { get }
var kConnectionStartOfFrameTime: Int { get }
var kIOConnectionBuiltIn: Int { get }
var kIOConnectionStereoSync: Int { get }
var kIOHSyncDisable: Int { get }
var kIOVSyncDisable: Int { get }
var kIOCSyncDisable: Int { get }
var kIONoSeparateSyncControl: Int { get }
var kIOTriStateSyncs: Int { get }
var kIOSyncOnBlue: Int { get }
var kIOSyncOnGreen: Int { get }
var kIOSyncOnRed: Int { get }
var kIODPEventStart: Int { get }
var kIODPEventIdle: Int { get }
var kIODPEventForceRetrain: Int { get }
var kIODPEventRemoteControlCommandPending: Int { get }
var kIODPEventAutomatedTestRequest: Int { get }
var kIODPEventContentProtection: Int { get }
var kIODPEventMCCS: Int { get }
var kIODPEventSinkSpecific: Int { get }
var kIODisplayAttributesKey: String { get }
var kIODisplaySupportsUnderscanKey: String { get }
var kIODisplaySupportsBasicAudioKey: String { get }
var kIODisplaySupportsYCbCr444Key: String { get }
var kIODisplaySupportsYCbCr422Key: String { get }
var kIODisplaySelectedColorModeKey: String { get }
var kIODisplayColorMode: Int { get }
var kIODisplayRGBColorComponentBitsUnknown: Int { get }
var kIODisplayRGBColorComponentBits6: Int { get }
var kIODisplayRGBColorComponentBits8: Int { get }
var kIODisplayRGBColorComponentBits10: Int { get }
var kIODisplayRGBColorComponentBits12: Int { get }
var kIODisplayRGBColorComponentBits14: Int { get }
var kIODisplayRGBColorComponentBits16: Int { get }
var kIODisplayYCbCr444ColorComponentBitsUnknown: Int { get }
var kIODisplayYCbCr444ColorComponentBits6: Int { get }
var kIODisplayYCbCr444ColorComponentBits8: Int { get }
var kIODisplayYCbCr444ColorComponentBits10: Int { get }
var kIODisplayYCbCr444ColorComponentBits12: Int { get }
var kIODisplayYCbCr444ColorComponentBits14: Int { get }
var kIODisplayYCbCr444ColorComponentBits16: Int { get }
var kIODisplayYCbCr422ColorComponentBitsUnknown: Int { get }
var kIODisplayYCbCr422ColorComponentBits6: Int { get }
var kIODisplayYCbCr422ColorComponentBits8: Int { get }
var kIODisplayYCbCr422ColorComponentBits10: Int { get }
var kIODisplayYCbCr422ColorComponentBits12: Int { get }
var kIODisplayYCbCr422ColorComponentBits14: Int { get }
var kIODisplayYCbCr422ColorComponentBits16: Int { get }
var kIODisplayDitherDisable: Int { get }
var kIODisplayDitherSpatial: Int { get }
var kIODisplayDitherTemporal: Int { get }
var kIODisplayDitherFrameRateControl: Int { get }
var kIODisplayDitherDefault: Int { get }
var kIODisplayDitherAll: Int { get }
var kIODisplayDitherRGBShift: Int { get }
var kIODisplayDitherYCbCr444Shift: Int { get }
var kIODisplayDitherYCbCr422Shift: Int { get }
var kIODisplayNeedsCEAUnderscan: Int { get }
var kIODisplayPowerStateOff: Int { get }
var kIODisplayPowerStateMinUsable: Int { get }
var kIODisplayPowerStateOn: Int { get }
var IO_DISPLAY_CAN_FILL: Int32 { get }
var IO_DISPLAY_CAN_BLIT: Int32 { get }
var IO_24BPP_TRANSFER_TABLE_SIZE: Int32 { get }
var IO_15BPP_TRANSFER_TABLE_SIZE: Int32 { get }
var IO_8BPP_TRANSFER_TABLE_SIZE: Int32 { get }
var IO_12BPP_TRANSFER_TABLE_SIZE: Int32 { get }
var IO_2BPP_TRANSFER_TABLE_SIZE: Int32 { get }
var STDFB_BM256_TO_BM38_MAP_SIZE: Int32 { get }
var STDFB_BM38_TO_BM256_MAP_SIZE: Int32 { get }
var STDFB_4BPS_TO_5BPS_MAP_SIZE: Int32 { get }
var STDFB_5BPS_TO_4BPS_MAP_SIZE: Int32 { get }
var kIOFBServerConnectType: Int { get }
var kIOFBSharedConnectType: Int { get }
var kIOGDiagnoseGTraceType: Int { get }
var kIOGDiagnoseConnectType: Int { get }
var kIOFBUserRequestProbe: Int { get }
struct IOGPoint {
  var x: Int16
  var y: Int16
  init()
  init(x: Int16, y: Int16)
}
struct IOGSize {
  var width: Int16
  var height: Int16
  init()
  init(width: Int16, height: Int16)
}
struct IOGBounds {
  var minx: Int16
  var maxx: Int16
  var miny: Int16
  var maxy: Int16
  init()
  init(minx: Int16, maxx: Int16, miny: Int16, maxy: Int16)
}
var kTransparentEncoding: Int { get }
var kInvertingEncoding: Int { get }
var kTransparentEncodingShift: Int { get }
var kTransparentEncodedPixel: Int { get }
var kInvertingEncodingShift: Int { get }
var kInvertingEncodedPixel: Int { get }
var kHardwareCursorDescriptorMajorVersion: Int { get }
var kHardwareCursorDescriptorMinorVersion: Int { get }
struct IOHardwareCursorDescriptor {
  var majorVersion: UInt16
  var minorVersion: UInt16
  var height: UInt32
  var width: UInt32
  var bitDepth: UInt32
  var maskBitDepth: UInt32
  var numColors: UInt32
  var colorEncodings: UnsafeMutablePointer<UInt32>!
  var flags: UInt32
  var supportedSpecialEncodings: UInt32
  var specialEncodings: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(majorVersion: UInt16, minorVersion: UInt16, height: UInt32, width: UInt32, bitDepth: UInt32, maskBitDepth: UInt32, numColors: UInt32, colorEncodings: UnsafeMutablePointer<UInt32>!, flags: UInt32, supportedSpecialEncodings: UInt32, specialEncodings: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kHardwareCursorInfoMajorVersion: Int { get }
var kHardwareCursorInfoMinorVersion: Int { get }
struct IOHardwareCursorInfo {
  var majorVersion: UInt16
  var minorVersion: UInt16
  var cursorHeight: UInt32
  var cursorWidth: UInt32
  var colorMap: UnsafeMutablePointer<IOColorEntry>!
  var hardwareCursorData: UnsafeMutablePointer<UInt8>!
  var cursorHotSpotX: UInt16
  var cursorHotSpotY: UInt16
  var reserved: (UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(majorVersion: UInt16, minorVersion: UInt16, cursorHeight: UInt32, cursorWidth: UInt32, colorMap: UnsafeMutablePointer<IOColorEntry>!, hardwareCursorData: UnsafeMutablePointer<UInt8>!, cursorHotSpotX: UInt16, cursorHotSpotY: UInt16, reserved: (UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kIOFBVBLInterruptType: Int { get }
var kIOFBHBLInterruptType: Int { get }
var kIOFBFrameInterruptType: Int { get }
var kIOFBConnectInterruptType: Int { get }
var kIOFBChangedInterruptType: Int { get }
var kIOFBOfflineInterruptType: Int { get }
var kIOFBOnlineInterruptType: Int { get }
var kIOFBDisplayPortInterruptType: Int { get }
var kIOFBDisplayPortLinkChangeInterruptType: Int { get }
var kIOFBMCCSInterruptType: Int { get }
var kIOFBWakeInterruptType: Int { get }
var kIOTimingIDInvalid: Int { get }
var kIOTimingIDApple_FixedRateLCD: Int { get }
var kIOTimingIDApple_512x384_60hz: Int { get }
var kIOTimingIDApple_560x384_60hz: Int { get }
var kIOTimingIDApple_640x480_67hz: Int { get }
var kIOTimingIDApple_640x400_67hz: Int { get }
var kIOTimingIDVESA_640x480_60hz: Int { get }
var kIOTimingIDVESA_640x480_72hz: Int { get }
var kIOTimingIDVESA_640x480_75hz: Int { get }
var kIOTimingIDVESA_640x480_85hz: Int { get }
var kIOTimingIDGTF_640x480_120hz: Int { get }
var kIOTimingIDApple_640x870_75hz: Int { get }
var kIOTimingIDApple_640x818_75hz: Int { get }
var kIOTimingIDApple_832x624_75hz: Int { get }
var kIOTimingIDVESA_800x600_56hz: Int { get }
var kIOTimingIDVESA_800x600_60hz: Int { get }
var kIOTimingIDVESA_800x600_72hz: Int { get }
var kIOTimingIDVESA_800x600_75hz: Int { get }
var kIOTimingIDVESA_800x600_85hz: Int { get }
var kIOTimingIDVESA_1024x768_60hz: Int { get }
var kIOTimingIDVESA_1024x768_70hz: Int { get }
var kIOTimingIDVESA_1024x768_75hz: Int { get }
var kIOTimingIDVESA_1024x768_85hz: Int { get }
var kIOTimingIDApple_1024x768_75hz: Int { get }
var kIOTimingIDVESA_1152x864_75hz: Int { get }
var kIOTimingIDApple_1152x870_75hz: Int { get }
var kIOTimingIDAppleNTSC_ST: Int { get }
var kIOTimingIDAppleNTSC_FF: Int { get }
var kIOTimingIDAppleNTSC_STconv: Int { get }
var kIOTimingIDAppleNTSC_FFconv: Int { get }
var kIOTimingIDApplePAL_ST: Int { get }
var kIOTimingIDApplePAL_FF: Int { get }
var kIOTimingIDApplePAL_STconv: Int { get }
var kIOTimingIDApplePAL_FFconv: Int { get }
var kIOTimingIDVESA_1280x960_75hz: Int { get }
var kIOTimingIDVESA_1280x960_60hz: Int { get }
var kIOTimingIDVESA_1280x960_85hz: Int { get }
var kIOTimingIDVESA_1280x1024_60hz: Int { get }
var kIOTimingIDVESA_1280x1024_75hz: Int { get }
var kIOTimingIDVESA_1280x1024_85hz: Int { get }
var kIOTimingIDVESA_1600x1200_60hz: Int { get }
var kIOTimingIDVESA_1600x1200_65hz: Int { get }
var kIOTimingIDVESA_1600x1200_70hz: Int { get }
var kIOTimingIDVESA_1600x1200_75hz: Int { get }
var kIOTimingIDVESA_1600x1200_80hz: Int { get }
var kIOTimingIDVESA_1600x1200_85hz: Int { get }
var kIOTimingIDVESA_1792x1344_60hz: Int { get }
var kIOTimingIDVESA_1792x1344_75hz: Int { get }
var kIOTimingIDVESA_1856x1392_60hz: Int { get }
var kIOTimingIDVESA_1856x1392_75hz: Int { get }
var kIOTimingIDVESA_1920x1440_60hz: Int { get }
var kIOTimingIDVESA_1920x1440_75hz: Int { get }
var kIOTimingIDSMPTE240M_60hz: Int { get }
var kIOTimingIDFilmRate_48hz: Int { get }
var kIOTimingIDSony_1600x1024_76hz: Int { get }
var kIOTimingIDSony_1920x1080_60hz: Int { get }
var kIOTimingIDSony_1920x1080_72hz: Int { get }
var kIOTimingIDSony_1920x1200_76hz: Int { get }
var kIOTimingIDApple_0x0_0hz_Offline: Int { get }
var kIOTimingIDVESA_848x480_60hz: Int { get }
var kIOTimingIDVESA_1360x768_60hz: Int { get }
var kIOFramebufferInfoKey: String { get }
var kIOFBWidthKey: String { get }
var kIOFBHeightKey: String { get }
var kIOFBRefreshRateKey: String { get }
var kIOFBFlagsKey: String { get }
var kIOFBBytesPerRowKey: String { get }
var kIOFBBytesPerPlaneKey: String { get }
var kIOFBBitsPerPixelKey: String { get }
var kIOFBComponentCountKey: String { get }
var kIOFBBitsPerComponentKey: String { get }
var kIOFBDetailedTimingsKey: String { get }
var kIOFBTimingRangeKey: String { get }
var kIOFBScalerInfoKey: String { get }
var kIOFBCursorInfoKey: String { get }
var kIOFBHDMIDongleROMKey: String { get }
var kIOFBHostAccessFlagsKey: String { get }
var kIOFBMemorySizeKey: String { get }
var kIOFBNeedsRefreshKey: String { get }
var kIOFBProbeOptionsKey: String { get }
var kIOFBGammaWidthKey: String { get }
var kIOFBGammaCountKey: String { get }
var kIOFBCLUTDeferKey: String { get }
var kIOFBDisplayPortConfigurationDataKey: String { get }
var kIOHibernatePreviewActiveKey: String { get }
var kIOHibernatePreviewActive: Int { get }
var kIOHibernatePreviewUpdates: Int { get }
var kIOHibernateEFIGfxStatusKey: String { get }
var kIOFBAVSignalTypeKey: String { get }
var kIOFBAVSignalTypeUnknown: Int { get }
var kIOFBAVSignalTypeVGA: Int { get }
var kIOFBAVSignalTypeDVI: Int { get }
var kIOFBAVSignalTypeHDMI: Int { get }
var kIOFBAVSignalTypeDP: Int { get }
struct IOFBDPLinkConfig {
  var version: UInt16
  var bitRate: UInt8
  var __reservedA: (UInt8)
  var t1Time: UInt16
  var t2Time: UInt16
  var t3Time: UInt16
  var idlePatterns: UInt8
  var laneCount: UInt8
  var voltage: UInt8
  var preEmphasis: UInt8
  var downspread: UInt8
  var scrambler: UInt8
  var maxBitRate: UInt8
  var maxLaneCount: UInt8
  var maxDownspread: UInt8
  var __reservedB: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(version: UInt16, bitRate: UInt8, __reservedA: (UInt8), t1Time: UInt16, t2Time: UInt16, t3Time: UInt16, idlePatterns: UInt8, laneCount: UInt8, voltage: UInt8, preEmphasis: UInt8, downspread: UInt8, scrambler: UInt8, maxBitRate: UInt8, maxLaneCount: UInt8, maxDownspread: UInt8, __reservedB: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
var kIOFBBitRateRBR: Int { get }
var kIOFBBitRateHBR: Int { get }
var kIOFBBitRateHBR2: Int { get }
var kIOFBLinkVoltageLevel0: Int { get }
var kIOFBLinkVoltageLevel1: Int { get }
var kIOFBLinkVoltageLevel2: Int { get }
var kIOFBLinkVoltageLevel3: Int { get }
var kIOFBLinkPreEmphasisLevel0: Int { get }
var kIOFBLinkPreEmphasisLevel1: Int { get }
var kIOFBLinkPreEmphasisLevel2: Int { get }
var kIOFBLinkPreEmphasisLevel3: Int { get }
var kIOFBLinkDownspreadNone: Int { get }
var kIOFBLinkDownspreadMax: Int { get }
var kIOFBLinkScramblerNormal: Int { get }
var kIOFBLinkScramblerAlternate: Int { get }
var kIOFBConfigKey: String { get }
var kIOFBModesKey: String { get }
var kIOFBModeIDKey: String { get }
var kIOFBModeDMKey: String { get }
var kIOFBModeTMKey: String { get }
var kIOFBModeAIDKey: String { get }
var kIOFBModeDFKey: String { get }
var kIOFBModePIKey: String { get }
var kIODisplayEDIDKey: String { get }
var kIODisplayEDIDOriginalKey: String { get }
var kIODisplayLocationKey: String { get }
var kIODisplayConnectFlagsKey: String { get }
var kIODisplayHasBacklightKey: String { get }
var kIODisplayIsDigitalKey: String { get }
var kDisplayBundleKey: String { get }
var kAppleDisplayTypeKey: String { get }
var kAppleSenseKey: String { get }
var kIODisplayMCCSVersionKey: String { get }
var kIODisplayTechnologyTypeKey: String { get }
var kIODisplayUsageTimeKey: String { get }
var kIODisplayFirmwareLevelKey: String { get }
var kDisplayVendorIDUnknown: Int { get }
var kDisplayProductIDGeneric: Int { get }
var kDisplayVendorID: String { get }
var kDisplayProductID: String { get }
var kDisplaySerialNumber: String { get }
var kDisplaySerialString: String { get }
var kDisplayWeekOfManufacture: String { get }
var kDisplayYearOfManufacture: String { get }
var kDisplayProductName: String { get }
var kDisplayWhitePointX: String { get }
var kDisplayWhitePointY: String { get }
var kDisplayRedPointX: String { get }
var kDisplayRedPointY: String { get }
var kDisplayGreenPointX: String { get }
var kDisplayGreenPointY: String { get }
var kDisplayBluePointX: String { get }
var kDisplayBluePointY: String { get }
var kDisplayWhiteGamma: String { get }
var kDisplayRedGamma: String { get }
var kDisplayGreenGamma: String { get }
var kDisplayBlueGamma: String { get }
var kDisplayGammaChannels: String { get }
var kDisplayGammaEntryCount: String { get }
var kDisplayGammaEntrySize: String { get }
var kDisplayGammaTable: String { get }
var kDisplayBrightnessAffectsGamma: String { get }
var kDisplayViewAngleAffectsGamma: String { get }
var kDisplayCSProfile: String { get }
var kDisplayHorizontalImageSize: String { get }
var kDisplayVerticalImageSize: String { get }
var kDisplayFixedPixelFormat: String { get }
var kDisplaySubPixelLayoutUndefined: Int { get }
var kDisplaySubPixelLayoutRGB: Int { get }
var kDisplaySubPixelLayoutBGR: Int { get }
var kDisplaySubPixelLayoutQuadGBL: Int { get }
var kDisplaySubPixelLayoutQuadGBR: Int { get }
var kDisplaySubPixelConfigurationUndefined: Int { get }
var kDisplaySubPixelConfigurationDelta: Int { get }
var kDisplaySubPixelConfigurationStripe: Int { get }
var kDisplaySubPixelConfigurationStripeOffset: Int { get }
var kDisplaySubPixelConfigurationQuad: Int { get }
var kDisplaySubPixelShapeUndefined: Int { get }
var kDisplaySubPixelShapeRound: Int { get }
var kDisplaySubPixelShapeSquare: Int { get }
var kDisplaySubPixelShapeRectangular: Int { get }
var kDisplaySubPixelShapeOval: Int { get }
var kDisplaySubPixelShapeElliptical: Int { get }
var kDisplaySubPixelLayout: String { get }
var kDisplaySubPixelConfiguration: String { get }
var kDisplaySubPixelShape: String { get }
var kIODisplayOverrideMatchingKey: String { get }
var kIODisplayParametersKey: String { get }
var kIODisplayGUIDKey: String { get }
var kIODisplayValueKey: String { get }
var kIODisplayMinValueKey: String { get }
var kIODisplayMaxValueKey: String { get }
var kIODisplayBrightnessProbeKey: String { get }
var kIODisplayLinearBrightnessProbeKey: String { get }
var kIODisplayBrightnessKey: String { get }
var kIODisplayLinearBrightnessKey: String { get }
var kIODisplayUsableLinearBrightnessKey: String { get }
var kIODisplayBrightnessFadeKey: String { get }
var kIODisplayContrastKey: String { get }
var kIODisplayHorizontalPositionKey: String { get }
var kIODisplayHorizontalSizeKey: String { get }
var kIODisplayVerticalPositionKey: String { get }
var kIODisplayVerticalSizeKey: String { get }
var kIODisplayTrapezoidKey: String { get }
var kIODisplayPincushionKey: String { get }
var kIODisplayParallelogramKey: String { get }
var kIODisplayRotationKey: String { get }
var kIODisplayTheatreModeKey: String { get }
var kIODisplayTheatreModeWindowKey: String { get }
var kIODisplayOverscanKey: String { get }
var kIODisplayVideoBestKey: String { get }
var kIODisplaySpeakerVolumeKey: String { get }
var kIODisplaySpeakerSelectKey: String { get }
var kIODisplayMicrophoneVolumeKey: String { get }
var kIODisplayAmbientLightSensorKey: String { get }
var kIODisplayAudioMuteAndScreenBlankKey: String { get }
var kIODisplayAudioTrebleKey: String { get }
var kIODisplayAudioBassKey: String { get }
var kIODisplayAudioBalanceLRKey: String { get }
var kIODisplayAudioProcessorModeKey: String { get }
var kIODisplayPowerModeKey: String { get }
var kIODisplayManufacturerSpecificKey: String { get }
var kIODisplayPowerStateKey: String { get }
var kIODisplayControllerIDKey: String { get }
var kIODisplayCapabilityStringKey: String { get }
var kIODisplayRedGammaScaleKey: String { get }
var kIODisplayGreenGammaScaleKey: String { get }
var kIODisplayBlueGammaScaleKey: String { get }
var kIODisplayGammaScaleKey: String { get }
var kIODisplayParametersCommitKey: String { get }
var kIODisplayParametersDefaultKey: String { get }
var kIODisplayParametersFlushKey: String { get }
var kIOFBNumCursorFrames: Int { get }
var kIOFBNumCursorFramesShift: Int { get }
var kIOFBMaxCursorDepth: Int { get }
var kIOFBMaxCursorWidth: Int { get }
var kIOFBMaxCursorFrames: Int { get }
var CURSORWIDTH: Int32 { get }
var CURSORHEIGHT: Int32 { get }
struct bm12Cursor {
  var image: ((UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
  var mask: ((UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
  var save: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(image: ((UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)), mask: ((UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)), save: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
struct bm18Cursor {
  var image: ((UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
  var mask: ((UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
  var save: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(image: ((UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)), mask: ((UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)), save: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct bm34Cursor {
  var image: ((UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
  var save: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(image: ((UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)), save: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
struct bm38Cursor {
  var image: ((UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
  var save: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(image: ((UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)), save: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kIOFBCursorImageNew: Int { get }
var kIOFBCursorHWCapable: Int { get }
var kIOFBHardwareCursorActive: Int { get }
var kIOFBHardwareCursorInVRAM: Int { get }
struct StdFBShmem_t {
  struct __Unnamed_union_cursor {
    var bw: bm12Cursor
    var bw8: bm18Cursor
    var rgb: bm34Cursor
    var rgb24: bm38Cursor
    init(bw: bm12Cursor)
    init(bw8: bm18Cursor)
    init(rgb: bm34Cursor)
    init(rgb24: bm38Cursor)
    init()
  }
  var cursorSema: OSSpinLock
  var frame: Int32
  var cursorShow: CChar
  var cursorObscured: CChar
  var shieldFlag: CChar
  var shielded: CChar
  var saveRect: IOGBounds
  var shieldRect: IOGBounds
  var cursorLoc: IOGPoint
  var cursorRect: IOGBounds
  var oldCursorRect: IOGBounds
  var screenBounds: IOGBounds
  var version: Int32
  var structSize: Int32
  var vblTime: AbsoluteTime
  var vblDelta: AbsoluteTime
  var vblCount: UInt64
  var reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  var hardwareCursorFlags: (UInt8, UInt8, UInt8, UInt8)
  var hardwareCursorCapable: UInt8
  var hardwareCursorActive: UInt8
  var hardwareCursorShields: UInt8
  var reservedB: (UInt8)
  var cursorSize: (IOGSize, IOGSize, IOGSize, IOGSize)
  var hotSpot: (IOGPoint, IOGPoint, IOGPoint, IOGPoint)
  var cursor: StdFBShmem_t.__Unnamed_union_cursor
  init()
  init(cursorSema: OSSpinLock, frame: Int32, cursorShow: CChar, cursorObscured: CChar, shieldFlag: CChar, shielded: CChar, saveRect: IOGBounds, shieldRect: IOGBounds, cursorLoc: IOGPoint, cursorRect: IOGBounds, oldCursorRect: IOGBounds, screenBounds: IOGBounds, version: Int32, structSize: Int32, vblTime: AbsoluteTime, vblDelta: AbsoluteTime, vblCount: UInt64, reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), hardwareCursorFlags: (UInt8, UInt8, UInt8, UInt8), hardwareCursorCapable: UInt8, hardwareCursorActive: UInt8, hardwareCursorShields: UInt8, reservedB: (UInt8), cursorSize: (IOGSize, IOGSize, IOGSize, IOGSize), hotSpot: (IOGPoint, IOGPoint, IOGPoint, IOGPoint), cursor: StdFBShmem_t.__Unnamed_union_cursor)
}
var kIOFBShmemVersionMask: Int { get }
var kIOFBTenPtOneShmemVersion: Int { get }
var kIOFBTenPtTwoShmemVersion: Int { get }
var kIOFBCurrentShmemVersion: Int { get }
var kIOFBShmemCursorNumFramesMask: Int { get }
var kIOFBShmemCursorNumFramesShift: Int { get }
var kIOFBCursorMemory: Int { get }
var IOFRAMEBUFFER_CONFORMSTO: String { get }
func IOFramebufferOpen(_ service: io_service_t, _ owningTask: task_port_t, _ type: UInt32, _ connect: UnsafeMutablePointer<io_connect_t>!) -> kern_return_t
var kIODisplayMatchingInfo: Int { get }
var kIODisplayOnlyPreferredName: Int { get }
var kIODisplayNoProductName: Int { get }
func IODisplayCreateInfoDictionary(_ framebuffer: io_service_t, _ options: IOOptionBits) -> Unmanaged<CFDictionary>!
func IODisplayMatchDictionaries(_ matching1: CFDictionary!, _ matching2: CFDictionary!, _ options: IOOptionBits) -> Int32
func IODisplayForFramebuffer(_ framebuffer: io_service_t, _ options: IOOptionBits) -> io_service_t
func IODisplaySetParameters(_ service: io_service_t, _ options: IOOptionBits, _ params: CFDictionary!) -> IOReturn
func IODisplaySetFloatParameter(_ service: io_service_t, _ options: IOOptionBits, _ parameterName: CFString!, _ value: Float) -> IOReturn
func IODisplaySetIntegerParameter(_ service: io_service_t, _ options: IOOptionBits, _ parameterName: CFString!, _ value: Int32) -> IOReturn
func IODisplayCopyParameters(_ service: io_service_t, _ options: IOOptionBits, _ params: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!) -> IOReturn
func IODisplayCopyFloatParameters(_ service: io_service_t, _ options: IOOptionBits, _ params: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!) -> IOReturn
func IODisplayGetFloatParameter(_ service: io_service_t, _ options: IOOptionBits, _ parameterName: CFString!, _ value: UnsafeMutablePointer<Float>!) -> IOReturn
func IODisplayGetIntegerRangeParameter(_ service: io_service_t, _ options: IOOptionBits, _ parameterName: CFString!, _ value: UnsafeMutablePointer<Int32>!, _ min: UnsafeMutablePointer<Int32>!, _ max: UnsafeMutablePointer<Int32>!) -> IOReturn
func IODisplayCommitParameters(_ service: io_service_t, _ options: IOOptionBits) -> IOReturn
struct IOGraphicsEngineContext {
  var contextLock: OSSpinLock
  var state: IOOptionBits
  var owner: UnsafeMutableRawPointer!
  var version: UInt32
  var structSize: IOByteCount
  var reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(contextLock: OSSpinLock, state: IOOptionBits, owner: UnsafeMutableRawPointer!, version: UInt32, structSize: IOByteCount, reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kIOGraphicsEngineContext: Int { get }
var kIOGraphicsEngineContextVersion: Int { get }
