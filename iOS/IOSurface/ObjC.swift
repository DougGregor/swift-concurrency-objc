
struct IOSurfacePropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension IOSurfacePropertyKey {
  @available(iOS 12.0, *)
  static let allocSize: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let width: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let height: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let bytesPerRow: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let bytesPerElement: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let elementWidth: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let elementHeight: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let offset: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeInfo: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeWidth: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeHeight: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeBytesPerRow: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeOffset: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeSize: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeBase: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeBytesPerElement: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeElementWidth: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let planeElementHeight: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let cacheMode: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let pixelFormat: IOSurfacePropertyKey
  @available(iOS 11.0, *)
  static let pixelSizeCastingAllowed: IOSurfacePropertyKey
  @available(iOS, introduced: 11.0, deprecated: 12.0, renamed: "IOSurfacePropertyKey.allocSize")
  static let allocSizeKey: IOSurfacePropertyKey
}
@available(iOS 11.0, *)
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
  @available(iOS 11.0, *)
  func setPurgeable(_ newState: IOSurfacePurgeabilityState, oldState: UnsafeMutablePointer<IOSurfacePurgeabilityState>?) -> kern_return_t
}
