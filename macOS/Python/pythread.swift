
typealias PyThread_type_lock = UnsafeMutableRawPointer
typealias PyThread_type_sema = UnsafeMutableRawPointer
func PyThread_init_thread()
func PyThread_start_new_thread(_: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, _: UnsafeMutableRawPointer!) -> Int
func PyThread_exit_thread()
func PyThread_get_thread_ident() -> Int
func PyThread_allocate_lock() -> PyThread_type_lock!
func PyThread_free_lock(_: PyThread_type_lock!)
func PyThread_acquire_lock(_: PyThread_type_lock!, _: Int32) -> Int32
var WAIT_LOCK: Int32 { get }
var NOWAIT_LOCK: Int32 { get }
func PyThread_release_lock(_: PyThread_type_lock!)
func PyThread_get_stacksize() -> Int
func PyThread_set_stacksize(_: Int) -> Int32
func PyThread_create_key() -> Int32
func PyThread_delete_key(_: Int32)
func PyThread_set_key_value(_: Int32, _: UnsafeMutableRawPointer!) -> Int32
func PyThread_get_key_value(_: Int32) -> UnsafeMutableRawPointer!
func PyThread_delete_key_value(_ key: Int32)
func PyThread_ReInitTLS()
