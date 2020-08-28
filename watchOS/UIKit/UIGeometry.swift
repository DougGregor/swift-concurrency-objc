
struct UIEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}

extension UIEdgeInsets : Equatable {
}

extension UIEdgeInsets : Codable {
}

extension UIEdgeInsets : _ObjectiveCBridgeable {
}
@available(watchOS 4.0, *)
struct NSDirectionalEdgeInsets {
  var top: CGFloat
  var leading: CGFloat
  var bottom: CGFloat
  var trailing: CGFloat
  init()
  init(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Equatable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Codable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : _ObjectiveCBridgeable {
}
struct UIOffset {
  var horizontal: CGFloat
  var vertical: CGFloat
  init()
  init(horizontal: CGFloat, vertical: CGFloat)
}

extension UIOffset : Equatable {
}

extension UIOffset : Codable {
}

extension UIOffset : _ObjectiveCBridgeable {
}
@available(watchOS 2.0, *)
struct UIRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var top: UIRectEdge { get }
  static var left: UIRectEdge { get }
  static var bottom: UIRectEdge { get }
  static var right: UIRectEdge { get }
  static var all: UIRectEdge { get }
}
struct UIRectCorner : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var topLeft: UIRectCorner { get }
  static var topRight: UIRectCorner { get }
  static var bottomLeft: UIRectCorner { get }
  static var bottomRight: UIRectCorner { get }
  static var allCorners: UIRectCorner { get }
}
@available(watchOS 6.4, *)
struct UIAxis : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var horizontal: UIAxis { get }
  static var vertical: UIAxis { get }
  static var both: UIAxis { get }
}
@available(watchOS 6.0, *)
struct NSDirectionalRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var top: NSDirectionalRectEdge { get }
  static var leading: NSDirectionalRectEdge { get }
  static var bottom: NSDirectionalRectEdge { get }
  static var trailing: NSDirectionalRectEdge { get }
  static var all: NSDirectionalRectEdge { get }
}
@available(watchOS, introduced: 6.0, deprecated: 6.0, renamed: "NSDirectionalRectEdge")
struct UIDirectionalRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var top: UIDirectionalRectEdge { get }
  static var leading: UIDirectionalRectEdge { get }
  static var bottom: UIDirectionalRectEdge { get }
  static var trailing: UIDirectionalRectEdge { get }
  static var all: UIDirectionalRectEdge { get }
}
@available(watchOS 6.0, *)
enum NSRectAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case top
  case topLeading
  case leading
  case bottomLeading
  case bottom
  case bottomTrailing
  case trailing
  case topTrailing
}
extension UIEdgeInsets {
  /*not inherited*/ init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
  static let zero: UIEdgeInsets
}
extension NSDirectionalEdgeInsets {
  @available(watchOS 4.0, *)
  /*not inherited*/ init(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)
  @available(watchOS 4.0, *)
  static let zero: NSDirectionalEdgeInsets
}
extension CGRect {
  func inset(by insets: UIEdgeInsets) -> CGRect
}
extension UIOffset {
  /*not inherited*/ init(horizontal: CGFloat, vertical: CGFloat)
  static let zero: UIOffset
}
func __UIEdgeInsetsEqualToEdgeInsets(_ insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool
@available(watchOS 4.0, *)
func __NSDirectionalEdgeInsetsEqualToDirectionalEdgeInsets(_ insets1: NSDirectionalEdgeInsets, _ insets2: NSDirectionalEdgeInsets) -> Bool
func __UIOffsetEqualToOffset(_ offset1: UIOffset, _ offset2: UIOffset) -> Bool
extension NSCoder {
  class func string(for point: CGPoint) -> String
  class func string(for vector: CGVector) -> String
  class func string(for size: CGSize) -> String
  class func string(for rect: CGRect) -> String
  class func string(for transform: CGAffineTransform) -> String
  class func string(for insets: UIEdgeInsets) -> String
  @available(watchOS 4.0, *)
  class func string(for insets: NSDirectionalEdgeInsets) -> String
  class func string(for offset: UIOffset) -> String
  class func cgPoint(for string: String) -> CGPoint
  class func cgVector(for string: String) -> CGVector
  class func cgSize(for string: String) -> CGSize
  class func cgRect(for string: String) -> CGRect
  class func cgAffineTransform(for string: String) -> CGAffineTransform
  class func uiEdgeInsets(for string: String) -> UIEdgeInsets
  @available(watchOS 4.0, *)
  class func nsDirectionalEdgeInsets(for string: String) -> NSDirectionalEdgeInsets
  class func uiOffset(for string: String) -> UIOffset
}
extension NSValue {
  /*not inherited*/ init(cgPoint point: CGPoint)
  /*not inherited*/ init(cgVector vector: CGVector)
  /*not inherited*/ init(cgSize size: CGSize)
  /*not inherited*/ init(cgRect rect: CGRect)
  /*not inherited*/ init(cgAffineTransform transform: CGAffineTransform)
  /*not inherited*/ init(uiEdgeInsets insets: UIEdgeInsets)
  @available(watchOS 4.0, *)
  /*not inherited*/ init(directionalEdgeInsets insets: NSDirectionalEdgeInsets)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(uiOffset insets: UIOffset)
  var cgPointValue: CGPoint { get }
  var cgVectorValue: CGVector { get }
  var cgSizeValue: CGSize { get }
  var cgRectValue: CGRect { get }
  var cgAffineTransformValue: CGAffineTransform { get }
  var uiEdgeInsetsValue: UIEdgeInsets { get }
  @available(watchOS 4.0, *)
  var directionalEdgeInsetsValue: NSDirectionalEdgeInsets { get }
  @available(watchOS 2.0, *)
  var uiOffsetValue: UIOffset { get }
}
extension NSCoder {
  func encode(_ point: CGPoint, forKey key: String)
  func encode(_ vector: CGVector, forKey key: String)
  func encode(_ size: CGSize, forKey key: String)
  func encode(_ rect: CGRect, forKey key: String)
  func encode(_ transform: CGAffineTransform, forKey key: String)
  func encode(_ insets: UIEdgeInsets, forKey key: String)
  @available(watchOS 4.0, *)
  func encode(_ insets: NSDirectionalEdgeInsets, forKey key: String)
  @available(watchOS 2.0, *)
  func encode(_ offset: UIOffset, forKey key: String)
  func decodeCGPoint(forKey key: String) -> CGPoint
  func decodeCGVector(forKey key: String) -> CGVector
  func decodeCGSize(forKey key: String) -> CGSize
  func decodeCGRect(forKey key: String) -> CGRect
  func decodeCGAffineTransform(forKey key: String) -> CGAffineTransform
  func decodeUIEdgeInsets(forKey key: String) -> UIEdgeInsets
  @available(watchOS 4.0, *)
  func decodeDirectionalEdgeInsets(forKey key: String) -> NSDirectionalEdgeInsets
  @available(watchOS 2.0, *)
  func decodeUIOffset(forKey key: String) -> UIOffset
}
