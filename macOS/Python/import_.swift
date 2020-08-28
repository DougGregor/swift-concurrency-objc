
func PyImport_GetMagicNumber() -> Int
func PyImport_ExecCodeModule(_ name: UnsafeMutablePointer<CChar>!, _ co: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_ExecCodeModuleEx(_ name: UnsafeMutablePointer<CChar>!, _ co: UnsafeMutablePointer<PyObject>!, _ pathname: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_GetModuleDict() -> UnsafeMutablePointer<PyObject>!
func PyImport_AddModule(_ name: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_ImportModule(_ name: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_ImportModuleNoBlock(_: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_ImportModuleLevel(_ name: UnsafeMutablePointer<CChar>!, _ globals: UnsafeMutablePointer<PyObject>!, _ locals: UnsafeMutablePointer<PyObject>!, _ fromlist: UnsafeMutablePointer<PyObject>!, _ level: Int32) -> UnsafeMutablePointer<PyObject>!
func PyImport_GetImporter(_ path: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_Import(_ name: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_ReloadModule(_ m: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyImport_Cleanup()
func PyImport_ImportFrozenModule(_: UnsafeMutablePointer<CChar>!) -> Int32
func _PyImport_AcquireLock()
func _PyImport_ReleaseLock() -> Int32
func _PyImport_FindModule(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<CChar>!, _: Int, _: UnsafeMutablePointer<UnsafeMutablePointer<FILE>?>!, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!) -> OpaquePointer!
func _PyImport_IsScript(_: OpaquePointer!) -> Int32
func _PyImport_ReInitLock()
func _PyImport_FindExtension(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _PyImport_FixupExtension(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
struct _inittab {
  var name: UnsafeMutablePointer<CChar>!
  var initfunc: (@convention(c) () -> Void)!
  init()
  init(name: UnsafeMutablePointer<CChar>!, initfunc: (@convention(c) () -> Void)!)
}
var PyNullImporter_Type: PyTypeObject
var PyImport_Inittab: UnsafeMutablePointer<_inittab>!
func PyImport_AppendInittab(_ name: UnsafePointer<CChar>!, _ initfunc: (@convention(c) () -> Void)!) -> Int32
func PyImport_ExtendInittab(_ newtab: UnsafeMutablePointer<_inittab>!) -> Int32
struct _frozen {
  var name: UnsafeMutablePointer<CChar>!
  var code: UnsafeMutablePointer<UInt8>!
  var size: Int32
  init()
  init(name: UnsafeMutablePointer<CChar>!, code: UnsafeMutablePointer<UInt8>!, size: Int32)
}
var PyImport_FrozenModules: UnsafeMutablePointer<_frozen>!
