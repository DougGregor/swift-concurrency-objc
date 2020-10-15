
struct IOSurfacePropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension IOSurfacePropertyKey {
  @available(macOS 10.14, *)
  static let allocSize: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let width: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let height: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let bytesPerRow: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let bytesPerElement: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let elementWidth: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let elementHeight: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let offset: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeInfo: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeWidth: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeHeight: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeBytesPerRow: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeOffset: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeSize: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeBase: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeBytesPerElement: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeElementWidth: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let planeElementHeight: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let cacheMode: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let pixelFormat: IOSurfacePropertyKey
  @available(macOS 10.12, *)
  static let pixelSizeCastingAllowed: IOSurfacePropertyKey
  @available(macOS, introduced: 10.12, deprecated: 10.14, renamed: "IOSurfacePropertyKey.allocSize")
  static let allocSizeKey: IOSurfacePropertyKey
}
@available(macOS 10.12, *)
class IOSurface : NSObject, NSSecureCoding {
  init?(properties: [IOSurfacePropertyKey : Any])
  func lock(options: IOSurfaceLockOptions = [], seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
  func unlock(options: IOSurfaceLockOptions = [], seed: UnsafeMutablePointer<UInt32>?) -> kern_return_t
  var allocationSize: Int { get }
  var width: Int { get }
  var height: Int { get }
  var baseAddress: UnsafeMutableRawPointer { get }
  var pixelFormat: OSType { get }
  var bytesPerRow: Int { get }
  var bytesPerElement: Int { get }
  var elementWidth: Int { get }
  var elementHeight: Int { get }
  var seed: UInt32 { get }
  var planeCount: Int { get }
  func widthOfPlane(at planeIndex: Int) -> Int
  func heightOfPlane(at planeIndex: Int) -> Int
  func bytesPerRowOfPlane(at planeIndex: Int) -> Int
  func bytesPerElementOfPlane(at planeIndex: Int) -> Int
  func elementWidthOfPlane(at planeIndex: Int) -> Int
  func elementHeightOfPlane(at planeIndex: Int) -> Int
  func baseAddressOfPlane(at planeIndex: Int) -> UnsafeMutableRawPointer
  func setAttachment(_ anObject: Any, forKey key: String)
  func attachment(forKey key: String) -> Any?
  func removeAttachment(forKey key: String)
  func setAllAttachments(_ dict: [String : Any])
  func allAttachments() -> [String : Any]?
  func removeAllAttachments()
  var isInUse: Bool { get }
  func incrementUseCount()
  func decrementUseCount()
  var localUseCount: Int32 { get }
  var allowsPixelSizeCasting: Bool { get }
  @available(macOS 10.13, *)
  func setPurgeable(_ newState: IOSurfacePurgeabilityState, oldState: UnsafeMutablePointer<IOSurfacePurgeabilityState>?) -> kern_return_t
}
