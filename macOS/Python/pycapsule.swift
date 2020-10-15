
var PyCapsule_Type: PyTypeObject
typealias PyCapsule_Destructor = @convention(c) (UnsafeMutablePointer<PyObject>?) -> Void
func PyCapsule_New(_ pointer: UnsafeMutableRawPointer!, _ name: UnsafePointer<CChar>!, _ destructor: PyCapsule_Destructor!) -> UnsafeMutablePointer<PyObject>!
func PyCapsule_GetPointer(_ capsule: UnsafeMutablePointer<PyObject>!, _ name: UnsafePointer<CChar>!) -> UnsafeMutableRawPointer!
func PyCapsule_GetDestructor(_ capsule: UnsafeMutablePointer<PyObject>!) -> PyCapsule_Destructor!
func PyCapsule_GetName(_ capsule: UnsafeMutablePointer<PyObject>!) -> UnsafePointer<CChar>!
func PyCapsule_GetContext(_ capsule: UnsafeMutablePointer<PyObject>!) -> UnsafeMutableRawPointer!
func PyCapsule_IsValid(_ capsule: UnsafeMutablePointer<PyObject>!, _ name: UnsafePointer<CChar>!) -> Int32
func PyCapsule_SetPointer(_ capsule: UnsafeMutablePointer<PyObject>!, _ pointer: UnsafeMutableRawPointer!) -> Int32
func PyCapsule_SetDestructor(_ capsule: UnsafeMutablePointer<PyObject>!, _ destructor: PyCapsule_Destructor!) -> Int32
func PyCapsule_SetName(_ capsule: UnsafeMutablePointer<PyObject>!, _ name: UnsafePointer<CChar>!) -> Int32
func PyCapsule_SetContext(_ capsule: UnsafeMutablePointer<PyObject>!, _ context: UnsafeMutableRawPointer!) -> Int32
func PyCapsule_Import(_ name: UnsafePointer<CChar>!, _ no_block: Int32) -> UnsafeMutableRawPointer!
