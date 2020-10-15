
protocol NSCopying {
  func copy(with zone: NSZone? = nil) -> Any
}
protocol NSMutableCopying {
  func mutableCopy(with zone: NSZone? = nil) -> Any
}
protocol NSCoding {
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
protocol NSSecureCoding : NSCoding {
  static var supportsSecureCoding: Bool { get }
}
extension NSObject {
  class func version() -> Int
  class func setVersion(_ aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObject(for coder: NSCoder) -> Any?
  func replacementObject(for coder: NSCoder) -> Any?
  class func awakeAfter(using coder: NSCoder) -> Any?
  func awakeAfter(using coder: NSCoder) -> Any?
  class func classForCoder() -> AnyClass
}
protocol NSDiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension NSObject {
  @available(tvOS 9.0, *)
  var autoContentAccessingProxy: Any { get }
  class func autoContentAccessingProxy() -> Any
}
func CFBridgingRetain(_ X: Any?) -> CFTypeRef?
