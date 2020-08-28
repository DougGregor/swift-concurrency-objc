
class CGLayer : _CFObject {
}
extension CGLayer {
  @available(macOS 10.4, *)
  /*not inherited*/ init?(_ context: CGContext, size: CGSize, auxiliaryInfo: CFDictionary?)
  @available(macOS 10.4, *)
  var size: CGSize { get }
  @available(macOS 10.4, *)
  var context: CGContext? { get }
  @available(macOS 10.4, *)
  class var typeID: CFTypeID { get }
}
extension CGContext {
  @available(macOS 10.4, *)
  func __draw(in rect: CGRect, layer: CGLayer)
  @available(macOS 10.4, *)
  func __draw(at point: CGPoint, layer: CGLayer)
}
