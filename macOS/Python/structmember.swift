
struct memberlist {
  var name: UnsafeMutablePointer<CChar>!
  var type: Int32
  var offset: Int32
  var flags: Int32
  init()
  init(name: UnsafeMutablePointer<CChar>!, type: Int32, offset: Int32, flags: Int32)
}
struct PyMemberDef {
  var name: UnsafeMutablePointer<CChar>!
  var type: Int32
  var offset: Py_ssize_t
  var flags: Int32
  var doc: UnsafeMutablePointer<CChar>!
  init()
  init(name: UnsafeMutablePointer<CChar>!, type: Int32, offset: Py_ssize_t, flags: Int32, doc: UnsafeMutablePointer<CChar>!)
}
var T_SHORT: Int32 { get }
var T_INT: Int32 { get }
var T_LONG: Int32 { get }
var T_FLOAT: Int32 { get }
var T_DOUBLE: Int32 { get }
var T_STRING: Int32 { get }
var T_OBJECT: Int32 { get }
var T_CHAR: Int32 { get }
var T_BYTE: Int32 { get }
var T_UBYTE: Int32 { get }
var T_USHORT: Int32 { get }
var T_UINT: Int32 { get }
var T_ULONG: Int32 { get }
var T_STRING_INPLACE: Int32 { get }
var T_BOOL: Int32 { get }
var T_OBJECT_EX: Int32 { get }
var T_LONGLONG: Int32 { get }
var T_ULONGLONG: Int32 { get }
var T_PYSSIZET: Int32 { get }
var READONLY: Int32 { get }
var RO: Int32 { get }
var READ_RESTRICTED: Int32 { get }
var PY_WRITE_RESTRICTED: Int32 { get }
var RESTRICTED: Int32 { get }
func PyMember_Get(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<memberlist>!, _: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyMember_Set(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<memberlist>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyObject>!) -> Int32
func PyMember_GetOne(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyMemberDef>!) -> UnsafeMutablePointer<PyObject>!
func PyMember_SetOne(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<PyMemberDef>!, _: UnsafeMutablePointer<PyObject>!) -> Int32
