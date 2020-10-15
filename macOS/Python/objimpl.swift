
func PyObject_Malloc(_: Int) -> UnsafeMutableRawPointer!
func PyObject_Realloc(_: UnsafeMutableRawPointer!, _: Int) -> UnsafeMutableRawPointer!
func PyObject_Free(_: UnsafeMutableRawPointer!)
func PyObject_Init(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyTypeObject>!) -> UnsafeMutablePointer<PyObject>!
func PyObject_InitVar(_: UnsafeMutablePointer<PyVarObject>!, _: UnsafeMutablePointer<PyTypeObject>!, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>!
func _PyObject_New(_: UnsafeMutablePointer<PyTypeObject>!) -> UnsafeMutablePointer<PyObject>!
func _PyObject_NewVar(_: UnsafeMutablePointer<PyTypeObject>!, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>!
func PyGC_Collect() -> Py_ssize_t
func _PyObject_GC_Resize(_: UnsafeMutablePointer<PyVarObject>!, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>!
struct _gc_head_old {
  struct __Unnamed_struct_gc {
    var gc_next: UnsafeMutablePointer<_gc_head_old>!
    var gc_prev: UnsafeMutablePointer<_gc_head_old>!
    var gc_refs: Py_ssize_t
    init()
    init(gc_next: UnsafeMutablePointer<_gc_head_old>!, gc_prev: UnsafeMutablePointer<_gc_head_old>!, gc_refs: Py_ssize_t)
  }
  var gc: _gc_head_old.__Unnamed_struct_gc
  var dummy: Float80
  init(gc: _gc_head_old.__Unnamed_struct_gc)
  init(dummy: Float80)
  init()
}
struct _gc_head {
  struct __Unnamed_struct_gc {
    var gc_next: UnsafeMutablePointer<_gc_head>!
    var gc_prev: UnsafeMutablePointer<_gc_head>!
    var gc_refs: Py_ssize_t
    init()
    init(gc_next: UnsafeMutablePointer<_gc_head>!, gc_prev: UnsafeMutablePointer<_gc_head>!, gc_refs: Py_ssize_t)
  }
  var gc: _gc_head.__Unnamed_struct_gc
  var dummy: Double
  var dummy_padding: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  init(gc: _gc_head.__Unnamed_struct_gc)
  init(dummy: Double)
  init(dummy_padding: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar))
  init()
}
typealias PyGC_Head = _gc_head
var _PyGC_generation0: UnsafeMutablePointer<PyGC_Head>!
var _PyGC_REFS_UNTRACKED: Int32 { get }
var _PyGC_REFS_REACHABLE: Int32 { get }
var _PyGC_REFS_TENTATIVELY_UNREACHABLE: Int32 { get }
func _PyObject_GC_Malloc(_: Int) -> UnsafeMutablePointer<PyObject>!
func _PyObject_GC_New(_: UnsafeMutablePointer<PyTypeObject>!) -> UnsafeMutablePointer<PyObject>!
func _PyObject_GC_NewVar(_: UnsafeMutablePointer<PyTypeObject>!, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>!
func PyObject_GC_Track(_: UnsafeMutableRawPointer!)
func PyObject_GC_UnTrack(_: UnsafeMutableRawPointer!)
func PyObject_GC_Del(_: UnsafeMutableRawPointer!)
var PyGC_HEAD_SIZE: Int32 { get }
