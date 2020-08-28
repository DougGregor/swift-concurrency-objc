
enum operating_modes_t : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case VMNET_HOST_MODE
  case VMNET_SHARED_MODE
  @available(macOS 10.15, *)
  case VMNET_BRIDGED_MODE
}
struct interface_event_t : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var VMNET_INTERFACE_PACKETS_AVAILABLE: interface_event_t { get }
}
enum vmnet_return_t : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case VMNET_SUCCESS
  case VMNET_FAILURE
  case VMNET_MEM_FAILURE
  case VMNET_INVALID_ARGUMENT
  case VMNET_SETUP_INCOMPLETE
  case VMNET_INVALID_ACCESS
  case VMNET_PACKET_TOO_BIG
  case VMNET_BUFFER_EXHAUSTED
  case VMNET_TOO_MANY_PACKETS
  case VMNET_SHARING_SERVICE_BUSY
}
struct vmpktdesc {
  var vm_pkt_size: Int
  var vm_pkt_iov: UnsafeMutablePointer<iovec>
  var vm_pkt_iovcnt: UInt32
  var vm_flags: UInt32
  init(vm_pkt_size: Int, vm_pkt_iov: UnsafeMutablePointer<iovec>, vm_pkt_iovcnt: UInt32, vm_flags: UInt32)
}
typealias interface_ref = OpaquePointer
@available(macOS 10.10, *)
var vmnet_operation_mode_key: UnsafePointer<CChar>
@available(macOS 10.15, *)
var vmnet_shared_interface_name_key: UnsafePointer<CChar>
@available(macOS 10.10, *)
var vmnet_mac_address_key: UnsafePointer<CChar>
@available(macOS 10.15, *)
var vmnet_allocate_mac_address_key: UnsafePointer<CChar>
@available(macOS 10.10, *)
var vmnet_mtu_key: UnsafePointer<CChar>
@available(macOS 10.10, *)
var vmnet_max_packet_size_key: UnsafePointer<CChar>
@available(macOS 10.10, *)
var vmnet_interface_id_key: UnsafePointer<CChar>
@available(macOS 10.15, *)
var vmnet_start_address_key: UnsafePointer<CChar>
@available(macOS 10.15, *)
var vmnet_end_address_key: UnsafePointer<CChar>
@available(macOS 10.15, *)
var vmnet_subnet_mask_key: UnsafePointer<CChar>
@available(macOS 10.15, *)
var vmnet_nat66_prefix_key: UnsafePointer<CChar>
@available(macOS, introduced: 10.15, deprecated: 11.0, message: "No longer supported")
var vmnet_nat66_prefix_length_key: UnsafePointer<CChar>
@available(macOS 10.10, *)
var vmnet_estimated_packets_available_key: UnsafePointer<CChar>
@available(macOS 11.0, *)
var vmnet_network_identifier_key: UnsafePointer<CChar>
@available(macOS 11.0, *)
var vmnet_host_ip_address_key: UnsafePointer<CChar>
@available(macOS 11.0, *)
var vmnet_host_subnet_mask_key: UnsafePointer<CChar>
@available(macOS 11.0, *)
var vmnet_host_ipv6_address_key: UnsafePointer<CChar>
@available(macOS 11.0, *)
var vmnet_enable_tso_key: UnsafePointer<CChar>
@available(macOS 11.0, *)
var vmnet_enable_isolation_key: UnsafePointer<CChar>
typealias vmnet_start_interface_completion_handler_t = (vmnet_return_t, xpc_object_t?) -> Void
@available(macOS 10.10, *)
func vmnet_start_interface(_ interface_desc: xpc_object_t, _ queue: DispatchQueue, _ handler: @escaping vmnet_start_interface_completion_handler_t) -> interface_ref?
typealias vmnet_interface_event_callback_t = (interface_event_t, xpc_object_t) -> Void
@available(macOS 10.10, *)
func vmnet_interface_set_event_callback(_ interface: interface_ref, _ event_mask: interface_event_t, _ queue: DispatchQueue?, _ callback: vmnet_interface_event_callback_t?) -> vmnet_return_t
@available(macOS 10.10, *)
func vmnet_write(_ interface: interface_ref, _ packets: UnsafeMutablePointer<vmpktdesc>, _ pktcnt: UnsafeMutablePointer<Int32>) -> vmnet_return_t
@available(macOS 10.10, *)
func vmnet_read(_ interface: interface_ref, _ packets: UnsafeMutablePointer<vmpktdesc>, _ pktcnt: UnsafeMutablePointer<Int32>) -> vmnet_return_t
typealias vmnet_interface_completion_handler_t = (vmnet_return_t) -> Void
@available(macOS 10.10, *)
func vmnet_stop_interface(_ interface: interface_ref, _ queue: DispatchQueue, _ handler: @escaping vmnet_interface_completion_handler_t) -> vmnet_return_t
@available(macOS 10.15, *)
func vmnet_interface_add_port_forwarding_rule(_ interface: interface_ref, _ protocol: UInt8, _ external_port: UInt16, _ internal_address: in_addr, _ internal_port: UInt16, _ handler: vmnet_interface_completion_handler_t?) -> vmnet_return_t
@available(macOS 10.15, *)
func vmnet_interface_remove_port_forwarding_rule(_ interface: interface_ref, _ protocol: UInt8, _ external_port: UInt16, _ handler: vmnet_interface_completion_handler_t?) -> vmnet_return_t
typealias vmnet_interface_get_port_forwarding_rules_handler_t = (xpc_object_t?) -> Void
@available(macOS 10.15, *)
func vmnet_port_forwarding_rule_get_details(_ rule: xpc_object_t, _ protocol: UnsafeMutablePointer<UInt8>, _ external_port: UnsafeMutablePointer<UInt16>, _ internal_address: UnsafeMutablePointer<in_addr>, _ internal_port: UnsafeMutablePointer<UInt16>) -> vmnet_return_t
@available(macOS 10.15, *)
func vmnet_interface_get_port_forwarding_rules(_ interface: interface_ref, _ handler: @escaping vmnet_interface_get_port_forwarding_rules_handler_t) -> vmnet_return_t
@available(macOS 10.15, *)
func vmnet_copy_shared_interface_list() -> xpc_object_t?
