
var NCURSES_OPAQUE: Int32 { get }
var PyCurses_API_pointers: Int32 { get }
struct PyCursesWindowObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var win: OpaquePointer!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, win: OpaquePointer!)
}
var PyCurses_CAPSULE_NAME: String { get }
var PyCurses_API: UnsafeMutablePointer<UnsafeMutableRawPointer?>!
var catchall_ERR: UnsafeMutablePointer<CChar>!
var catchall_NULL: UnsafeMutablePointer<CChar>!
