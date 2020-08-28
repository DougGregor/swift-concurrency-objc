
struct CFStreamError {
  var domain: CFIndex
  var error: Int32
  init()
  init(domain: CFIndex, error: Int32)
}
struct CFStreamPropertyKey : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
enum CFStreamStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case notOpen
  case opening
  case open
  case reading
  case writing
  case atEnd
  case closed
  case error
}
struct CFStreamEventType : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var openCompleted: CFStreamEventType { get }
  static var hasBytesAvailable: CFStreamEventType { get }
  static var canAcceptBytes: CFStreamEventType { get }
  static var errorOccurred: CFStreamEventType { get }
  static var endEncountered: CFStreamEventType { get }
}
struct CFStreamClientContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  var release: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!, release: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFString>?)!)
}
class CFReadStream : _CFObject {
}
class CFWriteStream : _CFObject {
}
typealias CFReadStreamClientCallBack = @convention(c) (CFReadStream?, CFStreamEventType, UnsafeMutableRawPointer?) -> Void
typealias CFWriteStreamClientCallBack = @convention(c) (CFWriteStream?, CFStreamEventType, UnsafeMutableRawPointer?) -> Void
func CFReadStreamGetTypeID() -> CFTypeID
func CFWriteStreamGetTypeID() -> CFTypeID
extension CFStreamPropertyKey {
  static let dataWritten: CFStreamPropertyKey!
  static let appendToFile: CFStreamPropertyKey!
  static let fileCurrentOffset: CFStreamPropertyKey!
  static let socketNativeHandle: CFStreamPropertyKey!
  static let socketRemoteHostName: CFStreamPropertyKey!
  static let socketRemotePortNumber: CFStreamPropertyKey!
}
func CFReadStreamCreateWithBytesNoCopy(_ alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>!, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFReadStream!
func CFWriteStreamCreateWithBuffer(_ alloc: CFAllocator!, _ buffer: UnsafeMutablePointer<UInt8>!, _ bufferCapacity: CFIndex) -> CFWriteStream!
func CFWriteStreamCreateWithAllocatedBuffers(_ alloc: CFAllocator!, _ bufferAllocator: CFAllocator!) -> CFWriteStream!
func CFReadStreamCreateWithFile(_ alloc: CFAllocator!, _ fileURL: CFURL!) -> CFReadStream!
func CFWriteStreamCreateWithFile(_ alloc: CFAllocator!, _ fileURL: CFURL!) -> CFWriteStream!
func CFStreamCreateBoundPair(_ alloc: CFAllocator!, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>!, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>!, _ transferBufferSize: CFIndex)
@available(macOS 10.0, *)
let kCFStreamErrorDomainSOCKS: Int32
@available(macOS 10.2, *)
let kCFStreamPropertySOCKSProxy: CFString
@available(macOS 10.2, *)
let kCFStreamPropertySOCKSProxyHost: CFString
@available(macOS 10.2, *)
let kCFStreamPropertySOCKSProxyPort: CFString
@available(macOS 10.2, *)
let kCFStreamPropertySOCKSVersion: CFString
@available(macOS 10.2, *)
let kCFStreamSocketSOCKSVersion4: CFString
@available(macOS 10.2, *)
let kCFStreamSocketSOCKSVersion5: CFString
@available(macOS 10.2, *)
let kCFStreamPropertySOCKSUser: CFString
@available(macOS 10.2, *)
let kCFStreamPropertySOCKSPassword: CFString
@available(macOS 10.2, *)
let kCFStreamErrorDomainSSL: Int32
@available(macOS 10.2, *)
let kCFStreamPropertySocketSecurityLevel: CFString
@available(macOS 10.2, *)
let kCFStreamSocketSecurityLevelNone: CFString
@available(macOS, introduced: 10.2, deprecated: 10.12)
let kCFStreamSocketSecurityLevelSSLv2: CFString
@available(macOS, introduced: 10.2, deprecated: 10.12)
let kCFStreamSocketSecurityLevelSSLv3: CFString
@available(macOS 10.2, *)
let kCFStreamSocketSecurityLevelTLSv1: CFString
@available(macOS 10.2, *)
let kCFStreamSocketSecurityLevelNegotiatedSSL: CFString
@available(macOS 10.2, *)
let kCFStreamPropertyShouldCloseNativeSocket: CFString
func CFStreamCreatePairWithSocket(_ alloc: CFAllocator!, _ sock: CFSocketNativeHandle, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>!, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>!)
func CFStreamCreatePairWithSocketToHost(_ alloc: CFAllocator!, _ host: CFString!, _ port: UInt32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>!, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>!)
func CFStreamCreatePairWithPeerSocketSignature(_ alloc: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>!, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>!, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>!)
func CFReadStreamGetStatus(_ stream: CFReadStream!) -> CFStreamStatus
func CFWriteStreamGetStatus(_ stream: CFWriteStream!) -> CFStreamStatus
@available(macOS 10.5, *)
func CFReadStreamCopyError(_ stream: CFReadStream!) -> CFError!
@available(macOS 10.5, *)
func CFWriteStreamCopyError(_ stream: CFWriteStream!) -> CFError!
func CFReadStreamOpen(_ stream: CFReadStream!) -> Bool
func CFWriteStreamOpen(_ stream: CFWriteStream!) -> Bool
func CFReadStreamClose(_ stream: CFReadStream!)
func CFWriteStreamClose(_ stream: CFWriteStream!)
func CFReadStreamHasBytesAvailable(_ stream: CFReadStream!) -> Bool
func CFReadStreamRead(_ stream: CFReadStream!, _ buffer: UnsafeMutablePointer<UInt8>!, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamGetBuffer(_ stream: CFReadStream!, _ maxBytesToRead: CFIndex, _ numBytesRead: UnsafeMutablePointer<CFIndex>!) -> UnsafePointer<UInt8>!
func CFWriteStreamCanAcceptBytes(_ stream: CFWriteStream!) -> Bool
func CFWriteStreamWrite(_ stream: CFWriteStream!, _ buffer: UnsafePointer<UInt8>!, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamCopyProperty(_ stream: CFReadStream!, _ propertyName: CFStreamPropertyKey!) -> CFTypeRef!
func CFWriteStreamCopyProperty(_ stream: CFWriteStream!, _ propertyName: CFStreamPropertyKey!) -> CFTypeRef!
func CFReadStreamSetProperty(_ stream: CFReadStream!, _ propertyName: CFStreamPropertyKey!, _ propertyValue: CFTypeRef!) -> Bool
func CFWriteStreamSetProperty(_ stream: CFWriteStream!, _ propertyName: CFStreamPropertyKey!, _ propertyValue: CFTypeRef!) -> Bool
func CFReadStreamSetClient(_ stream: CFReadStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFReadStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>!) -> Bool
func CFWriteStreamSetClient(_ stream: CFWriteStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFWriteStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>!) -> Bool
func CFReadStreamScheduleWithRunLoop(_ stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFRunLoopMode!)
func CFWriteStreamScheduleWithRunLoop(_ stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFRunLoopMode!)
func CFReadStreamUnscheduleFromRunLoop(_ stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFRunLoopMode!)
func CFWriteStreamUnscheduleFromRunLoop(_ stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFRunLoopMode!)
@available(macOS 10.9, *)
func CFReadStreamSetDispatchQueue(_ stream: CFReadStream!, _ q: DispatchQueue!)
@available(macOS 10.9, *)
func CFWriteStreamSetDispatchQueue(_ stream: CFWriteStream!, _ q: DispatchQueue!)
@available(macOS 10.9, *)
func CFReadStreamCopyDispatchQueue(_ stream: CFReadStream!) -> DispatchQueue!
@available(macOS 10.9, *)
func CFWriteStreamCopyDispatchQueue(_ stream: CFWriteStream!) -> DispatchQueue!
enum CFStreamErrorDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case custom
  case POSIX
  case macOSStatus
}
func CFReadStreamGetError(_ stream: CFReadStream!) -> CFStreamError
func CFWriteStreamGetError(_ stream: CFWriteStream!) -> CFStreamError
