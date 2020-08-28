
var CL_DEVICE_DOUBLE_FP_CONFIG: Int32 { get }
var CL_DEVICE_HALF_FP_CONFIG: Int32 { get }
@available(macOS 10.6, *)
func clLogMessagesToSystemLogAPPLE(_: UnsafePointer<CChar>!, _: UnsafeRawPointer!, _: Int, _: UnsafeMutableRawPointer!)
@available(macOS 10.6, *)
func clLogMessagesToStdoutAPPLE(_: UnsafePointer<CChar>!, _: UnsafeRawPointer!, _: Int, _: UnsafeMutableRawPointer!)
@available(macOS 10.6, *)
func clLogMessagesToStderrAPPLE(_: UnsafePointer<CChar>!, _: UnsafeRawPointer!, _: Int, _: UnsafeMutableRawPointer!)
@available(macOS 10.7, *)
func clCreateContextAndCommandQueueAPPLE(_: UnsafePointer<cl_context_properties>!, _: cl_uint, _: UnsafePointer<cl_device_id?>!, _: (@convention(c) (UnsafePointer<CChar>?, UnsafeRawPointer?, Int, UnsafeMutableRawPointer?) -> Void)!, _: UnsafeMutableRawPointer!, _: cl_command_queue_properties, _: UnsafeMutablePointer<cl_context?>!, _: UnsafeMutablePointer<cl_command_queue?>!) -> cl_int
@available(macOS 10.7, *)
func clCreateProgramAndKernelsWithSourceAPPLE(_: cl_context!, _: cl_uint, _: UnsafeMutablePointer<UnsafePointer<CChar>?>!, _: UnsafePointer<Int>!, _: cl_uint, _: UnsafePointer<cl_device_id?>!, _: UnsafePointer<CChar>!, _: cl_uint, _: UnsafeMutablePointer<UnsafePointer<CChar>?>!, _: UnsafeMutablePointer<cl_program?>!, _: UnsafeMutablePointer<cl_kernel?>!) -> cl_int
@available(macOS 10.7, *)
func clSetKernelArgsVaListAPPLE(_: cl_kernel!, _: cl_uint, _: CVaListPointer) -> cl_int
var CL_INVALID_ARG_NAME_APPLE: Int32 { get }
@available(macOS 10.7, *)
func clSetKernelArgByNameAPPLE(_: cl_kernel!, _: UnsafePointer<CChar>!, _: Int, _: UnsafeRawPointer!) -> cl_int
var CL_PROGRAM_NUM_KERNELS_APPLE: Int32 { get }
var CL_PROGRAM_KERNEL_NAMES_APPLE: Int32 { get }
var CL_1RGB_APPLE: Int32 { get }
var CL_BGR1_APPLE: Int32 { get }
var CL_SFIXED14_APPLE: Int32 { get }
var CL_BIASED_HALF_APPLE: Int32 { get }
var CL_YCbYCr_APPLE: Int32 { get }
var CL_CbYCrY_APPLE: Int32 { get }
var CL_ABGR_APPLE: Int32 { get }
typealias cl_dag = OpaquePointer
typealias cl_dag_node = Int32
@available(macOS 10.8, *)
func clCreateDAGAPPLE(_ c: cl_context!) -> cl_dag!
@available(macOS 10.8, *)
func clReleaseDAGAPPLE(_ dag: cl_dag!)
@available(macOS 10.8, *)
func clGetDAGNodeAPPLE(_ d: cl_dag!, _ f: cl_kernel!, _ args: UnsafeMutablePointer<cl_dag_node>!, _ arg_indices: UnsafeMutablePointer<UInt32>!, _ nargs: UInt32) -> cl_dag_node
@available(macOS 10.8, *)
func clCreateKernelFromDAGAPPLE(_ d: cl_dag!, _ n: cl_uint, _ list: UnsafePointer<cl_device_id?>!) -> cl_kernel!
var cl_APPLE_command_queue_priority: Int32 { get }
var cl_APPLE_command_queue_select_compute_units: Int32 { get }
typealias cl_queue_properties_APPLE = Int
@available(macOS 10.8, *)
func clCreateCommandQueueWithPropertiesAPPLE(_: cl_context!, _: cl_device_id!, _: UnsafePointer<cl_queue_properties_APPLE>!, _: UnsafeMutablePointer<cl_int>!) -> cl_command_queue!
var CL_QUEUE_PRIORITY_APPLE: Int32 { get }
var CL_QUEUE_NUM_COMPUTE_UNITS_APPLE: Int32 { get }
var CL_QUEUE_PRIORITY_BACKGROUND_APPLE: Int32 { get }
var CL_QUEUE_PRIORITY_DEFAULT_APPLE: Int32 { get }
var CL_OBJECT_NAME_APPLE: Int32 { get }
var CL_DEVICE_REGISTRY_ID_APPLE: Int32 { get }
var CL_DEVICE_REMOVABLE_APPLE: Int32 { get }
