
struct _node {
  var n_type: Int16
  var n_str: UnsafeMutablePointer<CChar>!
  var n_lineno: Int32
  var n_col_offset: Int32
  var n_nchildren: Int32
  var n_child: UnsafeMutablePointer<_node>!
  init()
  init(n_type: Int16, n_str: UnsafeMutablePointer<CChar>!, n_lineno: Int32, n_col_offset: Int32, n_nchildren: Int32, n_child: UnsafeMutablePointer<_node>!)
}
typealias node = _node
func PyNode_New(_ type: Int32) -> UnsafeMutablePointer<node>!
func PyNode_AddChild(_ n: UnsafeMutablePointer<node>!, _ type: Int32, _ str: UnsafeMutablePointer<CChar>!, _ lineno: Int32, _ col_offset: Int32) -> Int32
func PyNode_Free(_ n: UnsafeMutablePointer<node>!)
func _PyNode_SizeOf(_ n: UnsafeMutablePointer<node>!) -> Py_ssize_t
func PyNode_ListTree(_: UnsafeMutablePointer<node>!)
