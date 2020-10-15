
func PyArena_New() -> OpaquePointer!
func PyArena_Free(_: OpaquePointer!)
func PyArena_Malloc(_: OpaquePointer!, _ size: Int) -> UnsafeMutableRawPointer!
func PyArena_AddPyObject(_: OpaquePointer!, _: UnsafeMutablePointer<PyObject>!) -> Int32
