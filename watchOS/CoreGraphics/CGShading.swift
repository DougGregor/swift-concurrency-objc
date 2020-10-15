
class CGShading : _CFObject {
}
extension CGShading {
  @available(watchOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(axialSpace space: CGColorSpace, start: CGPoint, end: CGPoint, function: CGFunction, extendStart: Bool, extendEnd: Bool)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(radialSpace space: CGColorSpace, start: CGPoint, startRadius: CGFloat, end: CGPoint, endRadius: CGFloat, function: CGFunction, extendStart: Bool, extendEnd: Bool)
}
