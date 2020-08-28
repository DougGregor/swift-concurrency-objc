
func _Py_VaBuildValue_SizeT(_: UnsafePointer<CChar>!, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>!
func _PyArg_NoKeywords(_ funcname: UnsafePointer<CChar>!, _ kw: UnsafeMutablePointer<PyObject>!) -> Int32
func PyArg_VaParse(_: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32
func PyArg_VaParseTupleAndKeywords(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _: CVaListPointer) -> Int32
func Py_VaBuildValue(_: UnsafePointer<CChar>!, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>!
func PyModule_AddObject(_: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyObject>!) -> Int32
func PyModule_AddIntConstant(_: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!, _: Int) -> Int32
func PyModule_AddStringConstant(_: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!) -> Int32
var PYTHON_API_VERSION: Int32 { get }
var PYTHON_API_STRING: String { get }
func Py_InitModule4_64(_ name: UnsafePointer<CChar>!, _ methods: UnsafeMutablePointer<PyMethodDef>!, _ doc: UnsafePointer<CChar>!, _ self: UnsafeMutablePointer<PyObject>!, _ apiver: Int32) -> UnsafeMutablePointer<PyObject>!
var _Py_PackageContext: UnsafeMutablePointer<CChar>!
