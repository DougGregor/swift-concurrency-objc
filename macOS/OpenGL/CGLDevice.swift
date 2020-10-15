
@available(macOS 10.6, *)
typealias CGLShareGroupObj = OpaquePointer
@available(macOS 10.6, *)
func CGLGetShareGroup(_ ctx: CGLContextObj) -> CGLShareGroupObj?
@available(macOS 10.10, *)
typealias cl_device_id = OpaquePointer
@available(macOS 10.10, *)
func CGLGetDeviceFromGLRenderer(_ rendererID: GLint) -> cl_device_id
