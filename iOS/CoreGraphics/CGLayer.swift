
class CGLayer : _CFObject {
}
extension CGLayer {
  @available(iOS 2.0, *)
  /*not inherited*/ init?(_ context: CGContext, size: CGSize, auxiliaryInfo: CFDictionary?)
  @available(iOS 2.0, *)
  var size: CGSize { get }
  @available(iOS 2.0, *)
  var context: CGContext? { get }
  @available(iOS 2.0, *)
  class var typeID: CFTypeID { get }
}
extension CGContext {
  @available(iOS 2.0, *)
  func __draw(in rect: CGRect, layer: CGLayer)
  @available(iOS 2.0, *)
  func __draw(at point: CGPoint, layer: CGLayer)
}
