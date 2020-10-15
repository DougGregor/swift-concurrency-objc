
var X: Int { get }
var Y: Int { get }
var Z: Int { get }
struct _STXY {
  var s: GLfloat
  var t: GLfloat
  var x: GLfloat
  var y: GLfloat
  init()
  init(s: GLfloat, t: GLfloat, x: GLfloat, y: GLfloat)
}
struct _SphereMapMesh {
  var refcnt: Int32
  var steps: Int32
  var rings: Int32
  var edgeExtend: Int32
  var face: UnsafeMutablePointer<_STXY>!
  var back: UnsafeMutablePointer<_STXY>!
  init()
  init(refcnt: Int32, steps: Int32, rings: Int32, edgeExtend: Int32, face: UnsafeMutablePointer<_STXY>!, back: UnsafeMutablePointer<_STXY>!)
}
