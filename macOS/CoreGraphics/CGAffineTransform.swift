
struct CGAffineTransform {
  var a: CGFloat
  var b: CGFloat
  var c: CGFloat
  var d: CGFloat
  var tx: CGFloat
  var ty: CGFloat
  init()
  init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat, tx: CGFloat, ty: CGFloat)
}

extension CGAffineTransform : Equatable {
}

extension CGAffineTransform {
  static var identity: CGAffineTransform { get }
}

extension CGAffineTransform : Codable {
}
extension CGAffineTransform {
  @available(macOS 10.0, *)
  /*not inherited*/ init(translationX tx: CGFloat, y ty: CGFloat)
  @available(macOS 10.0, *)
  /*not inherited*/ init(scaleX sx: CGFloat, y sy: CGFloat)
  @available(macOS 10.0, *)
  /*not inherited*/ init(rotationAngle angle: CGFloat)
  @available(macOS 10.4, *)
  var isIdentity: Bool { get }
  @available(macOS 10.0, *)
  func translatedBy(x tx: CGFloat, y ty: CGFloat) -> CGAffineTransform
  @available(macOS 10.0, *)
  func scaledBy(x sx: CGFloat, y sy: CGFloat) -> CGAffineTransform
  @available(macOS 10.0, *)
  func rotated(by angle: CGFloat) -> CGAffineTransform
  @available(macOS 10.0, *)
  func inverted() -> CGAffineTransform
  @available(macOS 10.0, *)
  func concatenating(_ t2: CGAffineTransform) -> CGAffineTransform
  @available(macOS 10.4, *)
  func __equalTo(_ t2: CGAffineTransform) -> Bool
}
extension CGPoint {
  @available(macOS 10.0, *)
  func applying(_ t: CGAffineTransform) -> CGPoint
}
extension CGSize {
  @available(macOS 10.0, *)
  func applying(_ t: CGAffineTransform) -> CGSize
}
extension CGRect {
  @available(macOS 10.4, *)
  func applying(_ t: CGAffineTransform) -> CGRect
}
func __CGAffineTransformMake(_ a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(_ point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(_ size: CGSize, _ t: CGAffineTransform) -> CGSize
