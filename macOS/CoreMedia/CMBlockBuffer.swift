
var kCMBlockBufferNoErr: OSStatus { get }
var kCMBlockBufferStructureAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBlockAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBadCustomBlockSourceErr: OSStatus { get }
var kCMBlockBufferBadOffsetParameterErr: OSStatus { get }
var kCMBlockBufferBadLengthParameterErr: OSStatus { get }
var kCMBlockBufferBadPointerParameterErr: OSStatus { get }
var kCMBlockBufferEmptyBBufErr: OSStatus { get }
var kCMBlockBufferUnallocatedBlockErr: OSStatus { get }
var kCMBlockBufferInsufficientSpaceErr: OSStatus { get }
@available(macOS 10.7, *)
typealias CMBlockBufferFlags = UInt32
var kCMBlockBufferAssureMemoryNowFlag: CMBlockBufferFlags { get }
var kCMBlockBufferAlwaysCopyDataFlag: CMBlockBufferFlags { get }
var kCMBlockBufferDontOptimizeDepthFlag: CMBlockBufferFlags { get }
var kCMBlockBufferPermitEmptyReferenceFlag: CMBlockBufferFlags { get }
@available(macOS 10.7, *)
class CMBlockBuffer : _CFObject {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer : CMAttachmentBearerProtocol {
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Slice {
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer : CMBlockBufferProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  typealias CustomBlockAllocator = (Int) -> UnsafeMutableRawPointer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  typealias CustomBlockDeallocator = (UnsafeMutableRawPointer, Int) -> Void
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer : _CMBlockBufferInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let structureAllocationFailed: NSError
    static let blockAllocationFailed: NSError
    static let badCustomBlockSource: NSError
    static let badOffsetParameter: NSError
    static let badLengthParameter: NSError
    static let badPointerParameter: NSError
    static let emptyBlockBuffer: NSError
    static let unallocatedBlock: NSError
    static let insufficientSpace: NSError
  }
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Flags : OptionSet {
    static let assureMemoryNow: CMBlockBuffer.Flags
    static let alwaysCopyData: CMBlockBuffer.Flags
    static let dontOptimizeDepth: CMBlockBuffer.Flags
    static let permitEmptyReference: CMBlockBuffer.Flags
  }
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(length: Int, allocator: CFAllocator? = kCFAllocatorDefault, range: Range<Int>? = nil, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: UnsafeMutableRawBufferPointer, allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: Slice<UnsafeMutableRawBufferPointer>, allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(length: Int, allocator: @escaping CMBlockBuffer.CustomBlockAllocator, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, range: Range<Int>? = nil, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: UnsafeMutableRawBufferPointer, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: Slice<UnsafeMutableRawBufferPointer>, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append<T>(bufferReference: T, flags: CMBlockBuffer.Flags = []) throws where T : CMBlockBufferProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func assureBlockMemory() throws
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withUnsafeMutableBytes<R>(atOffset offset: Int = 0, _ body: (UnsafeMutableRawBufferPointer) throws -> R) throws -> R
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isEmpty: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  class var typeID: CFTypeID { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer.Slice : CMBlockBufferProtocol {
}
@available(macOS 10.7, *)
struct CMBlockBufferCustomBlockSource {
  var version: UInt32
  var AllocateBlock: (@convention(c) (UnsafeMutableRawPointer?, Int) -> UnsafeMutableRawPointer?)?
  var FreeBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer, Int) -> Void)?
  var refCon: UnsafeMutableRawPointer?
  init()
  init(version: UInt32, AllocateBlock: (@convention(c) (UnsafeMutableRawPointer?, Int) -> UnsafeMutableRawPointer?)?, FreeBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer, Int) -> Void)?, refCon: UnsafeMutableRawPointer?)
}
var kCMBlockBufferCustomBlockSourceVersion: UInt32 { get }
@available(macOS 10.7, *)
func CMBlockBufferCreateEmpty(allocator structureAllocator: CFAllocator?, capacity subBlockCapacity: UInt32, flags: CMBlockBufferFlags, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferCreateWithMemoryBlock(allocator structureAllocator: CFAllocator?, memoryBlock: UnsafeMutableRawPointer?, blockLength: Int, blockAllocator: CFAllocator?, customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>?, offsetToData: Int, dataLength: Int, flags: CMBlockBufferFlags, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferCreateWithBufferReference(allocator structureAllocator: CFAllocator?, referenceBuffer bufferReference: CMBlockBuffer, offsetToData: Int, dataLength: Int, flags: CMBlockBufferFlags, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferCreateContiguous(allocator structureAllocator: CFAllocator?, sourceBuffer: CMBlockBuffer, blockAllocator: CFAllocator?, customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>?, offsetToData: Int, dataLength: Int, flags: CMBlockBufferFlags, blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func CMBlockBufferAppendMemoryBlock(_ theBuffer: CMBlockBuffer, memoryBlock: UnsafeMutableRawPointer?, length blockLength: Int, blockAllocator: CFAllocator?, customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>?, offsetToData: Int, dataLength: Int, flags: CMBlockBufferFlags) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferAppendBufferReference(_ theBuffer: CMBlockBuffer, targetBBuf: CMBlockBuffer, offsetToData: Int, dataLength: Int, flags: CMBlockBufferFlags) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferAssureBlockMemory(_ theBuffer: CMBlockBuffer) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferAccessDataBytes(_ theBuffer: CMBlockBuffer, atOffset offset: Int, length: Int, temporaryBlock: UnsafeMutableRawPointer, returnedPointerOut: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferCopyDataBytes(_ theSourceBuffer: CMBlockBuffer, atOffset offsetToData: Int, dataLength: Int, destination: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferReplaceDataBytes(with sourceBytes: UnsafeRawPointer, blockBuffer destinationBuffer: CMBlockBuffer, offsetIntoDestination: Int, dataLength: Int) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferFillDataBytes(with fillByte: CChar, blockBuffer destinationBuffer: CMBlockBuffer, offsetIntoDestination: Int, dataLength: Int) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferGetDataPointer(_ theBuffer: CMBlockBuffer, atOffset offset: Int, lengthAtOffsetOut: UnsafeMutablePointer<Int>?, totalLengthOut: UnsafeMutablePointer<Int>?, dataPointerOut: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?) -> OSStatus
@available(macOS 10.7, *)
func CMBlockBufferGetDataLength(_ theBuffer: CMBlockBuffer) -> Int
@available(macOS 10.7, *)
func CMBlockBufferIsRangeContiguous(_ theBuffer: CMBlockBuffer, atOffset offset: Int, length: Int) -> Bool
@available(macOS 10.7, *)
func CMBlockBufferIsEmpty(_ theBuffer: CMBlockBuffer) -> Bool
