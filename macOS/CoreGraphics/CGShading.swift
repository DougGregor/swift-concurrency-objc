
class CGShading : _CFObject {
}
extension CGShading {
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.2, *)
  /*not inherited*/ init?(axialSpace space: CGColorSpace, start: CGPoint, end: CGPoint, function: CGFunction, extendStart: Bool, extendEnd: Bool)
  @available(macOS 10.2, *)
  /*not inherited*/ init?(radialSpace space: CGColorSpace, start: CGPoint, startRadius: CGFloat, end: CGPoint, endRadius: CGFloat, function: CGFunction, extendStart: Bool, extendEnd: Bool)
}
