
var CL_CONTEXT_PROPERTY_USE_CGL_SHAREGROUP_APPLE: Int32 { get }
@available(macOS 10.6, *)
func clGetGLContextInfoAPPLE(_: cl_context, _: UnsafeMutableRawPointer, _: cl_gl_platform_info, _: Int, _: UnsafeMutableRawPointer?, _: UnsafeMutablePointer<Int>?) -> cl_int
var CL_CGL_DEVICE_FOR_CURRENT_VIRTUAL_SCREEN_APPLE: Int32 { get }
var CL_CGL_DEVICES_FOR_SUPPORTED_VIRTUAL_SCREENS_APPLE: Int32 { get }
var CL_INVALID_GL_CONTEXT_APPLE: Int32 { get }
var CL_COMMAND_GL_FENCE_SYNC_OBJECT_KHR: Int32 { get }
@available(macOS 10.7, *)
func clCreateEventFromGLsyncKHR(_: cl_context, _: cl_GLsync, _: UnsafeMutablePointer<cl_int>?) -> cl_event?
@available(macOS 10.7, *)
func clCreateImageFromIOSurface2DAPPLE(_: cl_context, _: cl_mem_flags, _: UnsafePointer<cl_image_format>, _: Int, _: Int, _: IOSurfaceRef, _: UnsafeMutablePointer<cl_int>?) -> cl_mem?
typealias cl_iosurface_properties_APPLE = Int
var CL_IOSURFACE_REF_APPLE: Int32 { get }
var CL_IOSURFACE_PLANE_APPLE: Int32 { get }
@available(macOS 10.8, *)
func clCreateImageFromIOSurfaceWithPropertiesAPPLE(_: cl_context, _: cl_mem_flags, _: UnsafePointer<cl_image_format>, _: UnsafePointer<cl_image_desc>, _: UnsafeMutablePointer<cl_iosurface_properties_APPLE>, _: UnsafeMutablePointer<cl_int>?) -> cl_mem?
var CL_IMAGE_IOSURFACE_APPLE: Int32 { get }
var CL_IMAGE_IOSURFACE_PLANE_APPLE: Int32 { get }
