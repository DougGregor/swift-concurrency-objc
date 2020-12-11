
struct CGPoint {
  var x: CGFloat
  var y: CGFloat
  init()
  init(x: CGFloat, y: CGFloat)
}

extension CGPoint {
  static var zero: CGPoint { get }
  @_transparent init(x: Int, y: Int)
  @_transparent init(x: Double, y: Double)
  init?(dictionaryRepresentation dict: CFDictionary)
}

extension CGPoint : CustomReflectable {
}

extension CGPoint : _CustomPlaygroundQuickLookable {
}

extension CGPoint : CustomDebugStringConvertible {
}

extension CGPoint : Equatable {
}

extension CGPoint : Codable {
}
struct CGSize {
  var width: CGFloat
  var height: CGFloat
  init()
  init(width: CGFloat, height: CGFloat)
}

extension CGSize {
  static var zero: CGSize { get }
  @_transparent init(width: Int, height: Int)
  @_transparent init(width: Double, height: Double)
  init?(dictionaryRepresentation dict: CFDictionary)
}

extension CGSize : CustomReflectable {
}

extension CGSize : _CustomPlaygroundQuickLookable {
}

extension CGSize : CustomDebugStringConvertible {
}

extension CGSize : Equatable {
}

extension CGSize : Codable {
}
struct CGVector {
  var dx: CGFloat
  var dy: CGFloat
  init()
  init(dx: CGFloat, dy: CGFloat)
}

extension CGVector {
  static var zero: CGVector { get }
  @_transparent init(dx: Int, dy: Int)
  @_transparent init(dx: Double, dy: Double)
}

extension CGVector : Equatable {
}

extension CGVector : CustomDebugStringConvertible {
}

extension CGVector : Codable {
}
struct CGRect {
  var origin: CGPoint
  var size: CGSize
  init()
  init(origin: CGPoint, size: CGSize)
}

extension CGRect {
  static var zero: CGRect { get }
  @_transparent init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)
  @_transparent init(x: Double, y: Double, width: Double, height: Double)
  @_transparent init(x: Int, y: Int, width: Int, height: Int)
  init?(dictionaryRepresentation dict: CFDictionary)
  @_transparent func divided(atDistance: CGFloat, from fromEdge: CGRectEdge) -> (slice: CGRect, remainder: CGRect)
}

extension CGRect : CustomReflectable {
}

extension CGRect : _CustomPlaygroundQuickLookable {
}

extension CGRect : CustomDebugStringConvertible {
}

extension CGRect : Equatable {
}

extension CGRect : Codable {
}
@frozen enum CGRectEdge : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case minXEdge
  case minYEdge
  case maxXEdge
  case maxYEdge
}
extension CGPoint {
  @available(iOS 2.0, *)
  func equalTo(_ point2: CGPoint) -> Bool
  @available(iOS 2.0, *)
  var dictionaryRepresentation: CFDictionary { get }
  @available(iOS 2.0, *)
  static func __setFromDictionaryRepresentation(_ dict: CFDictionary, _ point: UnsafeMutablePointer<CGPoint>) -> Bool
}
extension CGSize {
  @available(iOS 2.0, *)
  func equalTo(_ size2: CGSize) -> Bool
  @available(iOS 2.0, *)
  var dictionaryRepresentation: CFDictionary { get }
  @available(iOS 2.0, *)
  static func __setFromDictionaryRepresentation(_ dict: CFDictionary, _ size: UnsafeMutablePointer<CGSize>) -> Bool
}
extension CGRect {
  @available(iOS 2.0, *)
  static let null: CGRect
  @available(iOS 2.0, *)
  static let infinite: CGRect
  @available(iOS 2.0, *)
  var minX: CGFloat { get }
  @available(iOS 2.0, *)
  var midX: CGFloat { get }
  @available(iOS 2.0, *)
  var maxX: CGFloat { get }
  @available(iOS 2.0, *)
  var minY: CGFloat { get }
  @available(iOS 2.0, *)
  var midY: CGFloat { get }
  @available(iOS 2.0, *)
  var maxY: CGFloat { get }
  @available(iOS 2.0, *)
  var width: CGFloat { get }
  @available(iOS 2.0, *)
  var height: CGFloat { get }
  @available(iOS 2.0, *)
  func equalTo(_ rect2: CGRect) -> Bool
  @available(iOS 2.0, *)
  var standardized: CGRect { get }
  @available(iOS 2.0, *)
  var isEmpty: Bool { get }
  @available(iOS 2.0, *)
  var isNull: Bool { get }
  @available(iOS 2.0, *)
  var isInfinite: Bool { get }
  @available(iOS 2.0, *)
  func insetBy(dx: CGFloat, dy: CGFloat) -> CGRect
  @available(iOS 2.0, *)
  var integral: CGRect { get }
  @available(iOS 2.0, *)
  func union(_ r2: CGRect) -> CGRect
  @available(iOS 2.0, *)
  func intersection(_ r2: CGRect) -> CGRect
  @available(iOS 2.0, *)
  func offsetBy(dx: CGFloat, dy: CGFloat) -> CGRect
  @available(iOS 2.0, *)
  func __divided(slice: UnsafeMutablePointer<CGRect>, remainder: UnsafeMutablePointer<CGRect>, atDistance amount: CGFloat, from edge: CGRectEdge)
  @available(iOS 2.0, *)
  func contains(_ point: CGPoint) -> Bool
  @available(iOS 2.0, *)
  func contains(_ rect2: CGRect) -> Bool
  @available(iOS 2.0, *)
  func intersects(_ rect2: CGRect) -> Bool
  @available(iOS 2.0, *)
  var dictionaryRepresentation: CFDictionary { get }
  @available(iOS 2.0, *)
  static func __setFromDictionaryRepresentation(_ dict: CFDictionary, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
}
extension CGVector {
}
func __CGPointEqualToPoint(_ point1: CGPoint, _ point2: CGPoint) -> Bool
func __CGSizeEqualToSize(_ size1: CGSize, _ size2: CGSize) -> Bool
