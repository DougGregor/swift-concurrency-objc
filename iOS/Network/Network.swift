
var NW_NOT_i386_MAC: Int32 { get }
protocol OS_nw_object : NSObjectProtocol {
}
typealias nw_object_t = OS_nw_object
protocol OS_nw_txt_record : NSObjectProtocol {
}
typealias nw_txt_record_t = OS_nw_txt_record
struct nw_txt_record_find_key_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_txt_record_find_key_invalid: nw_txt_record_find_key_t { get }
var nw_txt_record_find_key_not_present: nw_txt_record_find_key_t { get }
var nw_txt_record_find_key_no_value: nw_txt_record_find_key_t { get }
var nw_txt_record_find_key_empty_value: nw_txt_record_find_key_t { get }
var nw_txt_record_find_key_non_empty_value: nw_txt_record_find_key_t { get }
@available(iOS 13.0, *)
func nw_txt_record_create_with_bytes(_ txt_bytes: UnsafePointer<UInt8>, _ txt_len: Int) -> nw_txt_record_t
@available(iOS 13.0, *)
func nw_txt_record_create_dictionary() -> nw_txt_record_t
@available(iOS 13.0, *)
func nw_txt_record_copy(_ txt_record: nw_txt_record_t?) -> nw_txt_record_t?
@available(iOS 13.0, *)
func nw_txt_record_find_key(_ txt_record: nw_txt_record_t, _ key: UnsafePointer<CChar>) -> nw_txt_record_find_key_t
typealias nw_txt_record_access_key_t = (UnsafePointer<CChar>, nw_txt_record_find_key_t, UnsafePointer<UInt8>?, Int) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_access_key(_ txt_record: nw_txt_record_t, _ key: UnsafePointer<CChar>, _ access_value: @escaping nw_txt_record_access_key_t) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_set_key(_ txt_record: nw_txt_record_t, _ key: UnsafePointer<CChar>, _ value: UnsafePointer<UInt8>?, _ value_len: Int) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_remove_key(_ txt_record: nw_txt_record_t, _ key: UnsafePointer<CChar>) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_get_key_count(_ txt_record: nw_txt_record_t?) -> Int
typealias nw_txt_record_access_bytes_t = (UnsafePointer<UInt8>, Int) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_access_bytes(_ txt_record: nw_txt_record_t, _ access_bytes: @escaping nw_txt_record_access_bytes_t) -> Bool
typealias nw_txt_record_applier_t = (UnsafePointer<CChar>, nw_txt_record_find_key_t, UnsafePointer<UInt8>, Int) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_apply(_ txt_record: nw_txt_record_t, _ applier: @escaping nw_txt_record_applier_t) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_is_equal(_ left: nw_txt_record_t?, _ right: nw_txt_record_t?) -> Bool
@available(iOS 13.0, *)
func nw_txt_record_is_dictionary(_ txt_record: nw_txt_record_t) -> Bool
protocol OS_nw_advertise_descriptor : NSObjectProtocol {
}
typealias nw_advertise_descriptor_t = OS_nw_advertise_descriptor
@available(iOS 12.0, *)
func nw_advertise_descriptor_create_bonjour_service(_ name: UnsafePointer<CChar>?, _ type: UnsafePointer<CChar>, _ domain: UnsafePointer<CChar>?) -> nw_advertise_descriptor_t?
@available(iOS 12.0, *)
func nw_advertise_descriptor_set_txt_record(_ advertise_descriptor: nw_advertise_descriptor_t, _ txt_record: UnsafeRawPointer?, _ txt_length: Int)
@available(iOS 12.0, *)
func nw_advertise_descriptor_set_no_auto_rename(_ advertise_descriptor: nw_advertise_descriptor_t, _ no_auto_rename: Bool)
@available(iOS 12.0, *)
func nw_advertise_descriptor_get_no_auto_rename(_ advertise_descriptor: nw_advertise_descriptor_t) -> Bool
@available(iOS 13.0, *)
func nw_advertise_descriptor_set_txt_record_object(_ advertise_descriptor: nw_advertise_descriptor_t, _ txt_record: nw_txt_record_t?)
@available(iOS 13.0, *)
func nw_advertise_descriptor_copy_txt_record_object(_ advertise_descriptor: nw_advertise_descriptor_t) -> nw_txt_record_t?
protocol OS_nw_protocol_definition : NSObjectProtocol {
}
typealias nw_protocol_definition_t = OS_nw_protocol_definition
@available(iOS 12.0, *)
func nw_protocol_definition_is_equal(_ definition1: nw_protocol_definition_t, _ definition2: nw_protocol_definition_t) -> Bool
protocol OS_nw_protocol_options : NSObjectProtocol {
}
typealias nw_protocol_options_t = OS_nw_protocol_options
@available(iOS 12.0, *)
func nw_protocol_options_copy_definition(_ options: nw_protocol_options_t) -> nw_protocol_definition_t
protocol OS_nw_protocol_metadata : NSObjectProtocol {
}
typealias nw_protocol_metadata_t = OS_nw_protocol_metadata
@available(iOS 12.0, *)
func nw_protocol_metadata_copy_definition(_ metadata: nw_protocol_metadata_t) -> nw_protocol_definition_t
protocol OS_nw_interface : NSObjectProtocol {
}
typealias nw_interface_t = OS_nw_interface
struct nw_interface_type_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_interface_type_other: nw_interface_type_t { get }
var nw_interface_type_wifi: nw_interface_type_t { get }
var nw_interface_type_cellular: nw_interface_type_t { get }
var nw_interface_type_wired: nw_interface_type_t { get }
var nw_interface_type_loopback: nw_interface_type_t { get }
@available(iOS 12.0, *)
func nw_interface_get_type(_ interface: nw_interface_t) -> nw_interface_type_t
@available(iOS 12.0, *)
func nw_interface_get_name(_ interface: nw_interface_t) -> UnsafePointer<CChar>
@available(iOS 12.0, *)
func nw_interface_get_index(_ interface: nw_interface_t) -> UInt32
protocol OS_nw_endpoint : NSObjectProtocol {
}
typealias nw_endpoint_t = OS_nw_endpoint
struct nw_endpoint_type_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_endpoint_type_invalid: nw_endpoint_type_t { get }
var nw_endpoint_type_address: nw_endpoint_type_t { get }
var nw_endpoint_type_host: nw_endpoint_type_t { get }
var nw_endpoint_type_bonjour_service: nw_endpoint_type_t { get }
var nw_endpoint_type_url: nw_endpoint_type_t { get }
@available(iOS 12.0, *)
func nw_endpoint_get_type(_ endpoint: nw_endpoint_t) -> nw_endpoint_type_t
@available(iOS 12.0, *)
func nw_endpoint_create_host(_ hostname: UnsafePointer<CChar>, _ port: UnsafePointer<CChar>) -> nw_endpoint_t
@available(iOS 12.0, *)
func nw_endpoint_get_hostname(_ endpoint: nw_endpoint_t) -> UnsafePointer<CChar>
@available(iOS 12.0, *)
func nw_endpoint_copy_port_string(_ endpoint: nw_endpoint_t) -> UnsafeMutablePointer<CChar>
@available(iOS 12.0, *)
func nw_endpoint_get_port(_ endpoint: nw_endpoint_t) -> UInt16
@available(iOS 12.0, *)
func nw_endpoint_create_address(_ address: UnsafePointer<sockaddr>) -> nw_endpoint_t
@available(iOS 12.0, *)
func nw_endpoint_copy_address_string(_ endpoint: nw_endpoint_t) -> UnsafeMutablePointer<CChar>
@available(iOS 12.0, *)
func nw_endpoint_get_address(_ endpoint: nw_endpoint_t) -> UnsafePointer<sockaddr>
@available(iOS 12.0, *)
func nw_endpoint_create_bonjour_service(_ name: UnsafePointer<CChar>, _ type: UnsafePointer<CChar>, _ domain: UnsafePointer<CChar>) -> nw_endpoint_t
@available(iOS 12.0, *)
func nw_endpoint_get_bonjour_service_name(_ endpoint: nw_endpoint_t) -> UnsafePointer<CChar>
@available(iOS 12.0, *)
func nw_endpoint_get_bonjour_service_type(_ endpoint: nw_endpoint_t) -> UnsafePointer<CChar>
@available(iOS 12.0, *)
func nw_endpoint_get_bonjour_service_domain(_ endpoint: nw_endpoint_t) -> UnsafePointer<CChar>
@available(iOS 13.0, *)
func nw_endpoint_create_url(_ url: UnsafePointer<CChar>) -> nw_endpoint_t
@available(iOS 13.0, *)
func nw_endpoint_get_url(_ endpoint: nw_endpoint_t) -> UnsafePointer<CChar>
protocol OS_nw_resolver_config : NSObjectProtocol {
}
typealias nw_resolver_config_t = OS_nw_resolver_config
@available(iOS 14.0, *)
func nw_resolver_config_create_https(_ url_endpoint: nw_endpoint_t) -> nw_resolver_config_t
@available(iOS 14.0, *)
func nw_resolver_config_create_tls(_ server_endpoint: nw_endpoint_t) -> nw_resolver_config_t
@available(iOS 14.0, *)
func nw_resolver_config_add_server_address(_ config: nw_resolver_config_t, _ server_address: nw_endpoint_t)
protocol OS_nw_privacy_context : NSObjectProtocol {
}
typealias nw_privacy_context_t = OS_nw_privacy_context
@available(iOS 14.0, *)
func nw_privacy_context_create(_ description: UnsafePointer<CChar>) -> nw_privacy_context_t
@available(iOS 14.0, *)
let _nw_privacy_context_default_context: nw_privacy_context_t
@available(iOS 14.0, *)
func nw_privacy_context_flush_cache(_ privacy_context: nw_privacy_context_t)
@available(iOS 14.0, *)
func nw_privacy_context_disable_logging(_ privacy_context: nw_privacy_context_t)
@available(iOS 14.0, *)
func nw_privacy_context_require_encrypted_name_resolution(_ privacy_context: nw_privacy_context_t, _ require_encrypted_name_resolution: Bool, _ fallback_resolver_config: nw_resolver_config_t?)
protocol OS_nw_parameters : NSObjectProtocol {
}
typealias nw_parameters_t = OS_nw_parameters
protocol OS_nw_protocol_stack : NSObjectProtocol {
}
typealias nw_protocol_stack_t = OS_nw_protocol_stack
typealias nw_parameters_configure_protocol_block_t = (nw_protocol_options_t) -> Void
@available(iOS 12.0, *)
let _nw_parameters_configure_protocol_default_configuration: @convention(block) (nw_protocol_options_t) -> Void
@available(iOS 12.0, *)
let _nw_parameters_configure_protocol_disable: @convention(block) (nw_protocol_options_t) -> Void
@available(iOS 12.0, *)
func nw_parameters_create_secure_tcp(_ configure_tls: @escaping nw_parameters_configure_protocol_block_t, _ configure_tcp: @escaping nw_parameters_configure_protocol_block_t) -> nw_parameters_t
@available(iOS 12.0, *)
func nw_parameters_create_secure_udp(_ configure_dtls: @escaping nw_parameters_configure_protocol_block_t, _ configure_udp: @escaping nw_parameters_configure_protocol_block_t) -> nw_parameters_t
func nw_parameters_create_custom_ip(_ custom_ip_protocol_number: UInt8, _ configure_ip: @escaping nw_parameters_configure_protocol_block_t) -> nw_parameters_t
@available(iOS 12.0, *)
func nw_parameters_create() -> nw_parameters_t
@available(iOS 12.0, *)
func nw_parameters_copy(_ parameters: nw_parameters_t) -> nw_parameters_t
@available(iOS 14.0, *)
func nw_parameters_set_privacy_context(_ parameters: nw_parameters_t, _ privacy_context: nw_privacy_context_t)
@available(iOS 12.0, *)
func nw_parameters_require_interface(_ parameters: nw_parameters_t, _ interface: nw_interface_t?)
@available(iOS 12.0, *)
func nw_parameters_copy_required_interface(_ parameters: nw_parameters_t) -> nw_interface_t?
@available(iOS 12.0, *)
func nw_parameters_prohibit_interface(_ parameters: nw_parameters_t, _ interface: nw_interface_t)
@available(iOS 12.0, *)
func nw_parameters_clear_prohibited_interfaces(_ parameters: nw_parameters_t)
typealias nw_parameters_iterate_interfaces_block_t = (nw_interface_t) -> Bool
@available(iOS 12.0, *)
func nw_parameters_iterate_prohibited_interfaces(_ parameters: nw_parameters_t, _ iterate_block: (nw_interface_t) -> Bool)
@available(iOS 12.0, *)
func nw_parameters_set_required_interface_type(_ parameters: nw_parameters_t, _ interface_type: nw_interface_type_t)
@available(iOS 12.0, *)
func nw_parameters_get_required_interface_type(_ parameters: nw_parameters_t) -> nw_interface_type_t
@available(iOS 12.0, *)
func nw_parameters_prohibit_interface_type(_ parameters: nw_parameters_t, _ interface_type: nw_interface_type_t)
@available(iOS 12.0, *)
func nw_parameters_clear_prohibited_interface_types(_ parameters: nw_parameters_t)
typealias nw_parameters_iterate_interface_types_block_t = (nw_interface_type_t) -> Bool
@available(iOS 12.0, *)
func nw_parameters_iterate_prohibited_interface_types(_ parameters: nw_parameters_t, _ iterate_block: (nw_interface_type_t) -> Bool)
@available(iOS 12.0, *)
func nw_parameters_set_prohibit_expensive(_ parameters: nw_parameters_t, _ prohibit_expensive: Bool)
@available(iOS 12.0, *)
func nw_parameters_get_prohibit_expensive(_ parameters: nw_parameters_t) -> Bool
@available(iOS 13.0, *)
func nw_parameters_set_prohibit_constrained(_ parameters: nw_parameters_t, _ prohibit_constrained: Bool)
@available(iOS 13.0, *)
func nw_parameters_get_prohibit_constrained(_ parameters: nw_parameters_t) -> Bool
@available(iOS 12.0, *)
func nw_parameters_set_reuse_local_address(_ parameters: nw_parameters_t, _ reuse_local_address: Bool)
@available(iOS 12.0, *)
func nw_parameters_get_reuse_local_address(_ parameters: nw_parameters_t) -> Bool
@available(iOS 12.0, *)
func nw_parameters_set_local_endpoint(_ parameters: nw_parameters_t, _ local_endpoint: nw_endpoint_t?)
@available(iOS 12.0, *)
func nw_parameters_copy_local_endpoint(_ parameters: nw_parameters_t) -> nw_endpoint_t?
@available(iOS 12.0, *)
func nw_parameters_set_include_peer_to_peer(_ parameters: nw_parameters_t, _ include_peer_to_peer: Bool)
@available(iOS 12.0, *)
func nw_parameters_get_include_peer_to_peer(_ parameters: nw_parameters_t) -> Bool
@available(iOS 12.0, *)
func nw_parameters_set_fast_open_enabled(_ parameters: nw_parameters_t, _ fast_open_enabled: Bool)
@available(iOS 12.0, *)
func nw_parameters_get_fast_open_enabled(_ parameters: nw_parameters_t) -> Bool
struct nw_service_class_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_service_class_best_effort: nw_service_class_t { get }
var nw_service_class_background: nw_service_class_t { get }
var nw_service_class_interactive_video: nw_service_class_t { get }
var nw_service_class_interactive_voice: nw_service_class_t { get }
var nw_service_class_responsive_data: nw_service_class_t { get }
var nw_service_class_signaling: nw_service_class_t { get }
@available(iOS 12.0, *)
func nw_parameters_set_service_class(_ parameters: nw_parameters_t, _ service_class: nw_service_class_t)
@available(iOS 12.0, *)
func nw_parameters_get_service_class(_ parameters: nw_parameters_t) -> nw_service_class_t
struct nw_multipath_service_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_multipath_service_disabled: nw_multipath_service_t { get }
var nw_multipath_service_handover: nw_multipath_service_t { get }
var nw_multipath_service_interactive: nw_multipath_service_t { get }
var nw_multipath_service_aggregate: nw_multipath_service_t { get }
@available(iOS 12.0, *)
func nw_parameters_set_multipath_service(_ parameters: nw_parameters_t, _ multipath_service: nw_multipath_service_t)
@available(iOS 12.0, *)
func nw_parameters_get_multipath_service(_ parameters: nw_parameters_t) -> nw_multipath_service_t
@available(iOS 12.0, *)
func nw_parameters_copy_default_protocol_stack(_ parameters: nw_parameters_t) -> nw_protocol_stack_t
@available(iOS 12.0, *)
func nw_protocol_stack_prepend_application_protocol(_ stack: nw_protocol_stack_t, _ protocol: nw_protocol_options_t)
@available(iOS 12.0, *)
func nw_protocol_stack_clear_application_protocols(_ stack: nw_protocol_stack_t)
typealias nw_protocol_stack_iterate_protocols_block_t = (nw_protocol_options_t) -> Void
@available(iOS 12.0, *)
func nw_protocol_stack_iterate_application_protocols(_ stack: nw_protocol_stack_t, _ iterate_block: (nw_protocol_options_t) -> Void)
@available(iOS 12.0, *)
func nw_protocol_stack_copy_transport_protocol(_ stack: nw_protocol_stack_t) -> nw_protocol_options_t?
@available(iOS 12.0, *)
func nw_protocol_stack_set_transport_protocol(_ stack: nw_protocol_stack_t, _ protocol: nw_protocol_options_t)
@available(iOS 12.0, *)
func nw_protocol_stack_copy_internet_protocol(_ stack: nw_protocol_stack_t) -> nw_protocol_options_t?
@available(iOS 12.0, *)
func nw_parameters_set_local_only(_ parameters: nw_parameters_t, _ local_only: Bool)
@available(iOS 12.0, *)
func nw_parameters_get_local_only(_ parameters: nw_parameters_t) -> Bool
@available(iOS 12.0, *)
func nw_parameters_set_prefer_no_proxy(_ parameters: nw_parameters_t, _ prefer_no_proxy: Bool)
@available(iOS 12.0, *)
func nw_parameters_get_prefer_no_proxy(_ parameters: nw_parameters_t) -> Bool
struct nw_parameters_expired_dns_behavior_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_parameters_expired_dns_behavior_default: nw_parameters_expired_dns_behavior_t { get }
var nw_parameters_expired_dns_behavior_allow: nw_parameters_expired_dns_behavior_t { get }
var nw_parameters_expired_dns_behavior_prohibit: nw_parameters_expired_dns_behavior_t { get }
@available(iOS 12.0, *)
func nw_parameters_set_expired_dns_behavior(_ parameters: nw_parameters_t, _ expired_dns_behavior: nw_parameters_expired_dns_behavior_t)
@available(iOS 12.0, *)
func nw_parameters_get_expired_dns_behavior(_ parameters: nw_parameters_t) -> nw_parameters_expired_dns_behavior_t
protocol OS_nw_browse_descriptor : NSObjectProtocol {
}
typealias nw_browse_descriptor_t = OS_nw_browse_descriptor
@available(iOS 13.0, *)
func nw_browse_descriptor_create_bonjour_service(_ type: UnsafePointer<CChar>, _ domain: UnsafePointer<CChar>?) -> nw_browse_descriptor_t
@available(iOS 13.0, *)
func nw_browse_descriptor_get_bonjour_service_type(_ descriptor: nw_browse_descriptor_t) -> UnsafePointer<CChar>
@available(iOS 13.0, *)
func nw_browse_descriptor_get_bonjour_service_domain(_ descriptor: nw_browse_descriptor_t) -> UnsafePointer<CChar>?
@available(iOS 13.0, *)
func nw_browse_descriptor_set_include_txt_record(_ descriptor: nw_browse_descriptor_t, _ include_txt_record: Bool)
@available(iOS 13.0, *)
func nw_browse_descriptor_get_include_txt_record(_ descriptor: nw_browse_descriptor_t) -> Bool
protocol OS_nw_browse_result : NSObjectProtocol {
}
typealias nw_browse_result_t = OS_nw_browse_result
typealias nw_browse_result_change_t = UInt64
var nw_browse_result_change_invalid: Int { get }
var nw_browse_result_change_identical: Int { get }
var nw_browse_result_change_result_added: Int { get }
var nw_browse_result_change_result_removed: Int { get }
var nw_browse_result_change_interface_added: Int { get }
var nw_browse_result_change_interface_removed: Int { get }
var nw_browse_result_change_txt_record_changed: Int { get }
@available(iOS 13.0, *)
func nw_browse_result_copy_endpoint(_ result: nw_browse_result_t) -> nw_endpoint_t
@available(iOS 13.0, *)
func nw_browse_result_get_changes(_ old_result: nw_browse_result_t?, _ new_result: nw_browse_result_t?) -> nw_browse_result_change_t
@available(iOS 13.0, *)
func nw_browse_result_get_interfaces_count(_ result: nw_browse_result_t) -> Int
@available(iOS 13.0, *)
func nw_browse_result_copy_txt_record_object(_ result: nw_browse_result_t) -> nw_txt_record_t?
typealias nw_browse_result_enumerate_interface_t = (nw_interface_t) -> Bool
@available(iOS 13.0, *)
func nw_browse_result_enumerate_interfaces(_ result: nw_browse_result_t, _ enumerator: (nw_interface_t) -> Bool)
protocol OS_nw_error : NSObjectProtocol {
}
typealias nw_error_t = OS_nw_error
struct nw_error_domain_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_error_domain_invalid: nw_error_domain_t { get }
var nw_error_domain_posix: nw_error_domain_t { get }
var nw_error_domain_dns: nw_error_domain_t { get }
var nw_error_domain_tls: nw_error_domain_t { get }
@available(iOS 12.0, *)
func nw_error_get_error_domain(_ error: nw_error_t) -> nw_error_domain_t
@available(iOS 12.0, *)
func nw_error_get_error_code(_ error: nw_error_t) -> Int32
@available(iOS 12.0, *)
let kNWErrorDomainPOSIX: CFString
@available(iOS 12.0, *)
let kNWErrorDomainDNS: CFString
@available(iOS 12.0, *)
let kNWErrorDomainTLS: CFString
@available(iOS 12.0, *)
func nw_error_copy_cf_error(_ error: nw_error_t) -> Unmanaged<CFError>
protocol OS_nw_browser : NSObjectProtocol {
}
typealias nw_browser_t = OS_nw_browser
struct nw_browser_state_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_browser_state_invalid: nw_browser_state_t { get }
var nw_browser_state_ready: nw_browser_state_t { get }
var nw_browser_state_failed: nw_browser_state_t { get }
var nw_browser_state_cancelled: nw_browser_state_t { get }
var nw_browser_state_waiting: nw_browser_state_t { get }
@available(iOS 13.0, *)
func nw_browser_create(_ descriptor: nw_browse_descriptor_t, _ parameters: nw_parameters_t?) -> nw_browser_t
@available(iOS 13.0, *)
func nw_browser_set_queue(_ browser: nw_browser_t, _ queue: DispatchQueue)
typealias nw_browser_browse_results_changed_handler_t = (nw_browse_result_t, nw_browse_result_t, Bool) -> Void
@available(iOS 13.0, *)
func nw_browser_set_browse_results_changed_handler(_ browser: nw_browser_t, _ handler: nw_browser_browse_results_changed_handler_t?)
typealias nw_browser_state_changed_handler_t = (nw_browser_state_t, nw_error_t?) -> Void
@available(iOS 13.0, *)
func nw_browser_set_state_changed_handler(_ browser: nw_browser_t, _ state_changed_handler: nw_browser_state_changed_handler_t?)
@available(iOS 13.0, *)
func nw_browser_start(_ browser: nw_browser_t)
@available(iOS 13.0, *)
func nw_browser_cancel(_ browser: nw_browser_t)
@available(iOS 13.0, *)
func nw_browser_copy_parameters(_ browser: nw_browser_t) -> nw_parameters_t
@available(iOS 13.0, *)
func nw_browser_copy_browse_descriptor(_ browser: nw_browser_t) -> nw_browse_descriptor_t
protocol OS_nw_path : NSObjectProtocol {
}
typealias nw_path_t = OS_nw_path
struct nw_path_status_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_path_status_invalid: nw_path_status_t { get }
var nw_path_status_satisfied: nw_path_status_t { get }
var nw_path_status_unsatisfied: nw_path_status_t { get }
var nw_path_status_satisfiable: nw_path_status_t { get }
@available(iOS 12.0, *)
func nw_path_get_status(_ path: nw_path_t) -> nw_path_status_t
typealias nw_path_enumerate_interfaces_block_t = (nw_interface_t) -> Bool
@available(iOS 12.0, *)
func nw_path_enumerate_interfaces(_ path: nw_path_t, _ enumerate_block: (nw_interface_t) -> Bool)
@available(iOS 12.0, *)
func nw_path_is_equal(_ path: nw_path_t, _ other_path: nw_path_t) -> Bool
@available(iOS 12.0, *)
func nw_path_is_expensive(_ path: nw_path_t) -> Bool
@available(iOS 13.0, *)
func nw_path_is_constrained(_ path: nw_path_t) -> Bool
@available(iOS 12.0, *)
func nw_path_has_ipv4(_ path: nw_path_t) -> Bool
@available(iOS 12.0, *)
func nw_path_has_ipv6(_ path: nw_path_t) -> Bool
@available(iOS 12.0, *)
func nw_path_has_dns(_ path: nw_path_t) -> Bool
@available(iOS 12.0, *)
func nw_path_uses_interface_type(_ path: nw_path_t, _ interface_type: nw_interface_type_t) -> Bool
@available(iOS 12.0, *)
func nw_path_copy_effective_local_endpoint(_ path: nw_path_t) -> nw_endpoint_t?
@available(iOS 12.0, *)
func nw_path_copy_effective_remote_endpoint(_ path: nw_path_t) -> nw_endpoint_t?
typealias nw_path_enumerate_gateways_block_t = (nw_endpoint_t) -> Bool
@available(iOS 13.0, *)
func nw_path_enumerate_gateways(_ path: nw_path_t, _ enumerate_block: (nw_endpoint_t) -> Bool)
protocol OS_nw_content_context : NSObjectProtocol {
}
typealias nw_content_context_t = OS_nw_content_context
@available(iOS 12.0, *)
func nw_content_context_create(_ context_identifier: UnsafePointer<CChar>) -> nw_content_context_t
@available(iOS 12.0, *)
func nw_content_context_get_identifier(_ context: nw_content_context_t) -> UnsafePointer<CChar>
@available(iOS 12.0, *)
func nw_content_context_get_is_final(_ context: nw_content_context_t) -> Bool
@available(iOS 12.0, *)
func nw_content_context_set_is_final(_ context: nw_content_context_t, _ is_final: Bool)
@available(iOS 12.0, *)
func nw_content_context_get_expiration_milliseconds(_ context: nw_content_context_t) -> UInt64
@available(iOS 12.0, *)
func nw_content_context_set_expiration_milliseconds(_ context: nw_content_context_t, _ expiration_milliseconds: UInt64)
@available(iOS 12.0, *)
func nw_content_context_get_relative_priority(_ context: nw_content_context_t) -> Double
@available(iOS 12.0, *)
func nw_content_context_set_relative_priority(_ context: nw_content_context_t, _ relative_priority: Double)
@available(iOS 12.0, *)
func nw_content_context_set_antecedent(_ context: nw_content_context_t, _ antecendent_context: nw_content_context_t?)
@available(iOS 12.0, *)
func nw_content_context_copy_antecedent(_ context: nw_content_context_t) -> nw_content_context_t?
@available(iOS 12.0, *)
func nw_content_context_set_metadata_for_protocol(_ context: nw_content_context_t, _ protocol_metadata: nw_protocol_metadata_t)
@available(iOS 12.0, *)
func nw_content_context_copy_protocol_metadata(_ context: nw_content_context_t, _ protocol: nw_protocol_definition_t) -> nw_protocol_metadata_t?
@available(iOS 12.0, *)
func nw_content_context_foreach_protocol_metadata(_ context: nw_content_context_t, _ foreach_block: @escaping (nw_protocol_definition_t, nw_protocol_metadata_t) -> Void)
protocol OS_nw_connection : NSObjectProtocol {
}
typealias nw_connection_t = OS_nw_connection
struct nw_connection_state_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_connection_state_invalid: nw_connection_state_t { get }
var nw_connection_state_waiting: nw_connection_state_t { get }
var nw_connection_state_preparing: nw_connection_state_t { get }
var nw_connection_state_ready: nw_connection_state_t { get }
var nw_connection_state_failed: nw_connection_state_t { get }
var nw_connection_state_cancelled: nw_connection_state_t { get }
@available(iOS 12.0, *)
func nw_connection_create(_ endpoint: nw_endpoint_t, _ parameters: nw_parameters_t) -> nw_connection_t
@available(iOS 12.0, *)
func nw_connection_copy_endpoint(_ connection: nw_connection_t) -> nw_endpoint_t
@available(iOS 12.0, *)
func nw_connection_copy_parameters(_ connection: nw_connection_t) -> nw_parameters_t
typealias nw_connection_state_changed_handler_t = (nw_connection_state_t, nw_error_t?) -> Void
@available(iOS 12.0, *)
func nw_connection_set_state_changed_handler(_ connection: nw_connection_t, _ handler: nw_connection_state_changed_handler_t?)
typealias nw_connection_boolean_event_handler_t = (Bool) -> Void
@available(iOS 12.0, *)
func nw_connection_set_viability_changed_handler(_ connection: nw_connection_t, _ handler: nw_connection_boolean_event_handler_t?)
@available(iOS 12.0, *)
func nw_connection_set_better_path_available_handler(_ connection: nw_connection_t, _ handler: nw_connection_boolean_event_handler_t?)
typealias nw_connection_path_event_handler_t = (nw_path_t) -> Void
@available(iOS 12.0, *)
func nw_connection_set_path_changed_handler(_ connection: nw_connection_t, _ handler: nw_connection_path_event_handler_t?)
@available(iOS 12.0, *)
func nw_connection_set_queue(_ connection: nw_connection_t, _ queue: DispatchQueue)
@available(iOS 12.0, *)
func nw_connection_start(_ connection: nw_connection_t)
@available(iOS 12.0, *)
func nw_connection_restart(_ connection: nw_connection_t)
@available(iOS 12.0, *)
func nw_connection_cancel(_ connection: nw_connection_t)
@available(iOS 12.0, *)
func nw_connection_force_cancel(_ connection: nw_connection_t)
@available(iOS 12.0, *)
func nw_connection_cancel_current_endpoint(_ connection: nw_connection_t)
typealias nw_connection_receive_completion_t = (__DispatchData?, nw_content_context_t?, Bool, nw_error_t?) -> Void
@available(iOS 12.0, *)
func nw_connection_receive(_ connection: nw_connection_t, _ minimum_incomplete_length: UInt32, _ maximum_length: UInt32, _ completion: @escaping nw_connection_receive_completion_t)
@available(iOS 12.0, *)
func nw_connection_receive_message(_ connection: nw_connection_t, _ completion: @escaping nw_connection_receive_completion_t)
typealias nw_connection_send_completion_t = (nw_error_t?) -> Void
@available(iOS 12.0, *)
let _nw_connection_send_idempotent_content: @convention(block) (nw_error_t?) -> Void
@available(iOS 12.0, *)
let _nw_content_context_default_message: nw_content_context_t
@available(iOS 12.0, *)
let _nw_content_context_final_send: nw_content_context_t
@available(iOS 12.0, *)
let _nw_content_context_default_stream: nw_content_context_t
@available(iOS 12.0, *)
func nw_connection_send(_ connection: nw_connection_t, _ content: __DispatchData?, _ context: nw_content_context_t, _ is_complete: Bool, _ completion: @escaping nw_connection_send_completion_t)
@available(iOS 12.0, *)
func nw_connection_batch(_ connection: nw_connection_t, _ batch_block: () -> Void)
@available(iOS 12.0, *)
func nw_connection_copy_description(_ connection: nw_connection_t) -> UnsafeMutablePointer<CChar>
@available(iOS 12.0, *)
func nw_connection_copy_current_path(_ connection: nw_connection_t) -> nw_path_t?
@available(iOS 12.0, *)
func nw_connection_copy_protocol_metadata(_ connection: nw_connection_t, _ definition: nw_protocol_definition_t) -> nw_protocol_metadata_t?
@available(iOS 12.0, *)
func nw_connection_get_maximum_datagram_size(_ connection: nw_connection_t) -> UInt32
protocol OS_nw_group_descriptor : NSObjectProtocol {
}
typealias nw_group_descriptor_t = OS_nw_group_descriptor
func nw_group_descriptor_create_multicast(_ multicast_group: nw_endpoint_t) -> nw_group_descriptor_t
func nw_group_descriptor_add_endpoint(_ descriptor: nw_group_descriptor_t, _ endpoint: nw_endpoint_t) -> Bool
typealias nw_group_descriptor_enumerate_endpoints_block_t = (nw_endpoint_t) -> Bool
func nw_group_descriptor_enumerate_endpoints(_ descriptor: nw_group_descriptor_t, _ enumerate_block: (nw_endpoint_t) -> Bool)
func nw_multicast_group_descriptor_set_specific_source(_ multicast_descriptor: nw_group_descriptor_t, _ source: nw_endpoint_t)
func nw_multicast_group_descriptor_set_disable_unicast_traffic(_ multicast_descriptor: nw_group_descriptor_t, _ disable_unicast_traffic: Bool)
func nw_multicast_group_descriptor_get_disable_unicast_traffic(_ multicast_descriptor: nw_group_descriptor_t) -> Bool
protocol OS_nw_connection_group : NSObjectProtocol {
}
typealias nw_connection_group_t = OS_nw_connection_group
struct nw_connection_group_state_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_connection_group_state_invalid: nw_connection_group_state_t { get }
var nw_connection_group_state_waiting: nw_connection_group_state_t { get }
var nw_connection_group_state_ready: nw_connection_group_state_t { get }
var nw_connection_group_state_failed: nw_connection_group_state_t { get }
var nw_connection_group_state_cancelled: nw_connection_group_state_t { get }
@available(iOS 14.0, *)
func nw_connection_group_create(_ group_descriptor: nw_group_descriptor_t, _ parameters: nw_parameters_t) -> nw_connection_group_t
@available(iOS 14.0, *)
func nw_connection_group_copy_descriptor(_ group: nw_connection_group_t) -> nw_group_descriptor_t
@available(iOS 14.0, *)
func nw_connection_group_copy_parameters(_ group: nw_connection_group_t) -> nw_parameters_t
@available(iOS 14.0, *)
func nw_connection_group_set_queue(_ group: nw_connection_group_t, _ queue: DispatchQueue)
typealias nw_connection_group_state_changed_handler_t = (nw_connection_group_state_t, nw_error_t?) -> Void
@available(iOS 14.0, *)
func nw_connection_group_set_state_changed_handler(_ group: nw_connection_group_t, _ state_changed_handler: nw_connection_group_state_changed_handler_t?)
typealias nw_connection_group_receive_handler_t = (__DispatchData?, nw_content_context_t, Bool) -> Void
@available(iOS 14.0, *)
func nw_connection_group_set_receive_handler(_ group: nw_connection_group_t, _ maximum_message_size: UInt32, _ reject_oversized_messages: Bool, _ receive_handler: nw_connection_group_receive_handler_t?)
@available(iOS 14.0, *)
func nw_connection_group_start(_ group: nw_connection_group_t)
@available(iOS 14.0, *)
func nw_connection_group_cancel(_ group: nw_connection_group_t)
@available(iOS 14.0, *)
func nw_connection_group_copy_remote_endpoint_for_message(_ group: nw_connection_group_t, _ context: nw_content_context_t) -> nw_endpoint_t?
@available(iOS 14.0, *)
func nw_connection_group_copy_local_endpoint_for_message(_ group: nw_connection_group_t, _ context: nw_content_context_t) -> nw_endpoint_t?
@available(iOS 14.0, *)
func nw_connection_group_copy_path_for_message(_ group: nw_connection_group_t, _ context: nw_content_context_t) -> nw_path_t?
@available(iOS 14.0, *)
func nw_connection_group_reply(_ group: nw_connection_group_t, _ inbound_message: nw_content_context_t, _ outbound_message: nw_content_context_t, _ content: __DispatchData?)
@available(iOS 14.0, *)
func nw_connection_group_extract_connection_for_message(_ group: nw_connection_group_t, _ context: nw_content_context_t) -> nw_connection_t?
typealias nw_connection_group_send_completion_t = (nw_error_t?) -> Void
@available(iOS 14.0, *)
func nw_connection_group_send_message(_ group: nw_connection_group_t, _ content: __DispatchData?, _ endpoint: nw_endpoint_t?, _ context: nw_content_context_t, _ completion: @escaping nw_connection_group_send_completion_t)
protocol OS_nw_establishment_report : NSObjectProtocol {
}
typealias nw_establishment_report_t = OS_nw_establishment_report
typealias nw_establishment_report_access_block_t = (nw_establishment_report_t?) -> Void
@available(iOS 13.0, *)
func nw_connection_access_establishment_report(_ connection: nw_connection_t, _ queue: DispatchQueue, _ access_block: @escaping nw_establishment_report_access_block_t)
@available(iOS 13.0, *)
func nw_establishment_report_get_duration_milliseconds(_ report: nw_establishment_report_t) -> UInt64
@available(iOS 13.0, *)
func nw_establishment_report_get_attempt_started_after_milliseconds(_ report: nw_establishment_report_t) -> UInt64
@available(iOS 13.0, *)
func nw_establishment_report_get_previous_attempt_count(_ report: nw_establishment_report_t) -> UInt32
@available(iOS 13.0, *)
func nw_establishment_report_get_used_proxy(_ report: nw_establishment_report_t) -> Bool
@available(iOS 13.0, *)
func nw_establishment_report_get_proxy_configured(_ report: nw_establishment_report_t) -> Bool
@available(iOS 13.0, *)
func nw_establishment_report_copy_proxy_endpoint(_ report: nw_establishment_report_t) -> nw_endpoint_t?
protocol OS_nw_resolution_report : NSObjectProtocol {
}
typealias nw_resolution_report_t = OS_nw_resolution_report
struct nw_report_resolution_source_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_report_resolution_source_query: nw_report_resolution_source_t { get }
var nw_report_resolution_source_cache: nw_report_resolution_source_t { get }
var nw_report_resolution_source_expired_cache: nw_report_resolution_source_t { get }
@available(iOS 14.0, *)
func nw_resolution_report_get_source(_ resolution_report: nw_resolution_report_t) -> nw_report_resolution_source_t
@available(iOS 14.0, *)
func nw_resolution_report_get_milliseconds(_ resolution_report: nw_resolution_report_t) -> UInt64
@available(iOS 14.0, *)
func nw_resolution_report_get_endpoint_count(_ resolution_report: nw_resolution_report_t) -> UInt32
@available(iOS 14.0, *)
func nw_resolution_report_copy_successful_endpoint(_ resolution_report: nw_resolution_report_t) -> nw_endpoint_t
@available(iOS 14.0, *)
func nw_resolution_report_copy_preferred_endpoint(_ resolution_report: nw_resolution_report_t) -> nw_endpoint_t
struct nw_report_resolution_protocol_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_report_resolution_protocol_unknown: nw_report_resolution_protocol_t { get }
var nw_report_resolution_protocol_udp: nw_report_resolution_protocol_t { get }
var nw_report_resolution_protocol_tcp: nw_report_resolution_protocol_t { get }
var nw_report_resolution_protocol_tls: nw_report_resolution_protocol_t { get }
var nw_report_resolution_protocol_https: nw_report_resolution_protocol_t { get }
@available(iOS 14.0, *)
func nw_resolution_report_get_protocol(_ resolution_report: nw_resolution_report_t) -> nw_report_resolution_protocol_t
typealias nw_report_resolution_enumerator_t = (nw_report_resolution_source_t, UInt64, UInt32, nw_endpoint_t, nw_endpoint_t) -> Bool
@available(iOS 13.0, *)
func nw_establishment_report_enumerate_resolutions(_ report: nw_establishment_report_t, _ enumerate_block: (nw_report_resolution_source_t, UInt64, UInt32, nw_endpoint_t, nw_endpoint_t) -> Bool)
typealias nw_report_resolution_report_enumerator_t = (nw_resolution_report_t) -> Bool
@available(iOS 14.0, *)
func nw_establishment_report_enumerate_resolution_reports(_ report: nw_establishment_report_t, _ enumerate_block: (nw_resolution_report_t) -> Bool)
typealias nw_report_protocol_enumerator_t = (nw_protocol_definition_t, UInt64, UInt64) -> Bool
@available(iOS 13.0, *)
func nw_establishment_report_enumerate_protocols(_ report: nw_establishment_report_t, _ enumerate_block: (nw_protocol_definition_t, UInt64, UInt64) -> Bool)
protocol OS_nw_data_transfer_report : NSObjectProtocol {
}
typealias nw_data_transfer_report_t = OS_nw_data_transfer_report
@available(iOS 13.0, *)
func nw_connection_create_new_data_transfer_report(_ connection: nw_connection_t) -> nw_data_transfer_report_t
struct nw_data_transfer_report_state_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_data_transfer_report_state_collecting: nw_data_transfer_report_state_t { get }
var nw_data_transfer_report_state_collected: nw_data_transfer_report_state_t { get }
@available(iOS 13.0, *)
func nw_data_transfer_report_get_state(_ report: nw_data_transfer_report_t) -> nw_data_transfer_report_state_t
typealias nw_data_transfer_report_collect_block_t = (nw_data_transfer_report_t) -> Void
@available(iOS 13.0, *)
func nw_data_transfer_report_collect(_ report: nw_data_transfer_report_t, _ queue: DispatchQueue, _ collect_block: @escaping nw_data_transfer_report_collect_block_t)
let _nw_data_transfer_report_all_paths: UInt32
@available(iOS 13.0, *)
func nw_data_transfer_report_get_duration_milliseconds(_ report: nw_data_transfer_report_t) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_path_count(_ report: nw_data_transfer_report_t) -> UInt32
@available(iOS 13.0, *)
func nw_data_transfer_report_get_received_ip_packet_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_sent_ip_packet_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_received_transport_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_received_transport_duplicate_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_received_transport_out_of_order_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_sent_transport_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_transport_rtt_variance(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_received_application_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_get_sent_application_byte_count(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> UInt64
@available(iOS 13.0, *)
func nw_data_transfer_report_copy_path_interface(_ report: nw_data_transfer_report_t, _ path_index: UInt32) -> nw_interface_t
protocol OS_nw_ethernet_channel : NSObjectProtocol {
}
typealias nw_ethernet_channel_t = OS_nw_ethernet_channel
struct nw_ethernet_channel_state_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ethernet_channel_state_invalid: nw_ethernet_channel_state_t { get }
var nw_ethernet_channel_state_waiting: nw_ethernet_channel_state_t { get }
var nw_ethernet_channel_state_preparing: nw_ethernet_channel_state_t { get }
var nw_ethernet_channel_state_ready: nw_ethernet_channel_state_t { get }
var nw_ethernet_channel_state_failed: nw_ethernet_channel_state_t { get }
var nw_ethernet_channel_state_cancelled: nw_ethernet_channel_state_t { get }
func nw_ethernet_channel_create(_ ether_type: UInt16, _ interface: nw_interface_t) -> nw_ethernet_channel_t
typealias nw_ethernet_channel_state_changed_handler_t = (nw_ethernet_channel_state_t, nw_error_t?) -> Void
func nw_ethernet_channel_set_state_changed_handler(_ ethernet_channel: nw_ethernet_channel_t, _ handler: nw_ethernet_channel_state_changed_handler_t?)
func nw_ethernet_channel_set_queue(_ ethernet_channel: nw_ethernet_channel_t, _ queue: DispatchQueue)
func nw_ethernet_channel_start(_ ethernet_channel: nw_ethernet_channel_t)
func nw_ethernet_channel_cancel(_ ethernet_channel: nw_ethernet_channel_t)
typealias nw_ethernet_address_t = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias nw_ethernet_channel_receive_handler_t = (__DispatchData, UInt16, UnsafeMutablePointer<UInt8>, UnsafeMutablePointer<UInt8>) -> Void
func nw_ethernet_channel_set_receive_handler(_ ethernet_channel: nw_ethernet_channel_t, _ handler: nw_ethernet_channel_receive_handler_t?)
typealias nw_ethernet_channel_send_completion_t = (nw_error_t?) -> Void
func nw_ethernet_channel_send(_ ethernet_channel: nw_ethernet_channel_t, _ content: __DispatchData, _ vlan_tag: UInt16, _ remote_address: UnsafeMutablePointer<UInt8>, _ completion: @escaping nw_ethernet_channel_send_completion_t)
protocol OS_nw_framer : NSObjectProtocol {
}
typealias nw_framer_t = OS_nw_framer
typealias nw_framer_message_t = nw_protocol_metadata_t
@available(iOS 13.0, *)
func nw_framer_protocol_create_message(_ definition: nw_protocol_definition_t) -> nw_framer_message_t
@available(iOS 13.0, *)
func nw_protocol_metadata_is_framer_message(_ metadata: nw_protocol_metadata_t) -> Bool
@available(iOS 13.0, *)
func nw_framer_message_create(_ framer: nw_framer_t) -> nw_framer_message_t
typealias nw_framer_message_dispose_value_t = (UnsafeMutableRawPointer) -> Void
@available(iOS 13.0, *)
func nw_framer_message_set_value(_ message: nw_framer_message_t, _ key: UnsafePointer<CChar>, _ value: UnsafeMutableRawPointer?, _ dispose_value: nw_framer_message_dispose_value_t?)
@available(iOS 13.0, *)
func nw_framer_message_access_value(_ message: nw_framer_message_t, _ key: UnsafePointer<CChar>, _ access_value: (UnsafeRawPointer?) -> Bool) -> Bool
@available(iOS 13.0, *)
func nw_framer_message_set_object_value(_ message: nw_framer_message_t, _ key: UnsafePointer<CChar>, _ value: Any?)
@available(iOS 13.0, *)
func nw_framer_message_copy_object_value(_ message: nw_framer_message_t, _ key: UnsafePointer<CChar>) -> Any?
struct nw_framer_start_result_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_framer_start_result_ready: nw_framer_start_result_t { get }
var nw_framer_start_result_will_mark_ready: nw_framer_start_result_t { get }
typealias nw_framer_start_handler_t = (nw_framer_t) -> nw_framer_start_result_t
var NW_FRAMER_CREATE_FLAGS_DEFAULT: Int32 { get }
@available(iOS 13.0, *)
func nw_framer_create_definition(_ identifier: UnsafePointer<CChar>, _ flags: UInt32, _ start_handler: @escaping nw_framer_start_handler_t) -> nw_protocol_definition_t
@available(iOS 13.0, *)
func nw_framer_create_options(_ framer_definition: nw_protocol_definition_t) -> nw_protocol_options_t
typealias nw_framer_input_handler_t = (nw_framer_t) -> Int
@available(iOS 13.0, *)
func nw_framer_set_input_handler(_ framer: nw_framer_t, _ input_handler: @escaping nw_framer_input_handler_t)
typealias nw_framer_output_handler_t = (nw_framer_t, nw_framer_message_t, Int, Bool) -> Void
@available(iOS 13.0, *)
func nw_framer_set_output_handler(_ framer: nw_framer_t, _ output_handler: @escaping nw_framer_output_handler_t)
typealias nw_framer_wakeup_handler_t = (nw_framer_t) -> Void
@available(iOS 13.0, *)
func nw_framer_set_wakeup_handler(_ framer: nw_framer_t, _ wakeup_handler: @escaping nw_framer_wakeup_handler_t)
typealias nw_framer_stop_handler_t = (nw_framer_t) -> Bool
@available(iOS 13.0, *)
func nw_framer_set_stop_handler(_ framer: nw_framer_t, _ stop_handler: @escaping nw_framer_stop_handler_t)
typealias nw_framer_cleanup_handler_t = (nw_framer_t) -> Void
@available(iOS 13.0, *)
func nw_framer_set_cleanup_handler(_ framer: nw_framer_t, _ cleanup_handler: @escaping nw_framer_cleanup_handler_t)
@available(iOS 13.0, *)
func nw_framer_mark_ready(_ framer: nw_framer_t)
@available(iOS 13.0, *)
func nw_framer_prepend_application_protocol(_ framer: nw_framer_t, _ protocol_options: nw_protocol_options_t) -> Bool
@available(iOS 13.0, *)
func nw_framer_mark_failed_with_error(_ framer: nw_framer_t, _ error_code: Int32)
typealias nw_framer_parse_completion_t = (UnsafeMutablePointer<UInt8>?, Int, Bool) -> Int
@available(iOS 13.0, *)
func nw_framer_parse_input(_ framer: nw_framer_t, _ minimum_incomplete_length: Int, _ maximum_length: Int, _ temp_buffer: UnsafeMutablePointer<UInt8>?, _ parse: (UnsafeMutablePointer<UInt8>?, Int, Bool) -> Int) -> Bool
@available(iOS 13.0, *)
func nw_framer_deliver_input(_ framer: nw_framer_t, _ input_buffer: UnsafePointer<UInt8>, _ input_length: Int, _ message: nw_framer_message_t, _ is_complete: Bool)
@available(iOS 13.0, *)
func nw_framer_deliver_input_no_copy(_ framer: nw_framer_t, _ input_length: Int, _ message: nw_framer_message_t, _ is_complete: Bool) -> Bool
@available(iOS 13.0, *)
func nw_framer_pass_through_input(_ framer: nw_framer_t)
@available(iOS 13.0, *)
func nw_framer_parse_output(_ framer: nw_framer_t, _ minimum_incomplete_length: Int, _ maximum_length: Int, _ temp_buffer: UnsafeMutablePointer<UInt8>?, _ parse: (UnsafeMutablePointer<UInt8>?, Int, Bool) -> Int) -> Bool
@available(iOS 13.0, *)
func nw_framer_write_output(_ framer: nw_framer_t, _ output_buffer: UnsafePointer<UInt8>, _ output_length: Int)
@available(iOS 13.0, *)
func nw_framer_write_output_data(_ framer: nw_framer_t, _ output_data: __DispatchData)
@available(iOS 13.0, *)
func nw_framer_write_output_no_copy(_ framer: nw_framer_t, _ output_length: Int) -> Bool
@available(iOS 13.0, *)
func nw_framer_pass_through_output(_ framer: nw_framer_t)
var NW_FRAMER_WAKEUP_TIME_FOREVER: UInt64 { get }
@available(iOS 13.0, *)
func nw_framer_schedule_wakeup(_ framer: nw_framer_t, _ milliseconds: UInt64)
typealias nw_framer_block_t = () -> Void
@available(iOS 13.0, *)
func nw_framer_async(_ framer: nw_framer_t, _ async_block: @escaping nw_framer_block_t)
@available(iOS 13.0, *)
func nw_framer_copy_remote_endpoint(_ framer: nw_framer_t) -> nw_endpoint_t
@available(iOS 13.0, *)
func nw_framer_copy_local_endpoint(_ framer: nw_framer_t) -> nw_endpoint_t
@available(iOS 13.0, *)
func nw_framer_copy_parameters(_ framer: nw_framer_t) -> nw_parameters_t
@available(iOS 12.0, *)
func nw_protocol_copy_ip_definition() -> nw_protocol_definition_t
struct nw_ip_version_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ip_version_any: nw_ip_version_t { get }
var nw_ip_version_4: nw_ip_version_t { get }
var nw_ip_version_6: nw_ip_version_t { get }
@available(iOS 12.0, *)
func nw_ip_options_set_version(_ options: nw_protocol_options_t, _ version: nw_ip_version_t)
@available(iOS 12.0, *)
func nw_ip_options_set_hop_limit(_ options: nw_protocol_options_t, _ hop_limit: UInt8)
@available(iOS 12.0, *)
func nw_ip_options_set_use_minimum_mtu(_ options: nw_protocol_options_t, _ use_minimum_mtu: Bool)
@available(iOS 12.0, *)
func nw_ip_options_set_disable_fragmentation(_ options: nw_protocol_options_t, _ disable_fragmentation: Bool)
@available(iOS 12.0, *)
func nw_ip_options_set_calculate_receive_time(_ options: nw_protocol_options_t, _ calculate_receive_time: Bool)
struct nw_ip_local_address_preference_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ip_local_address_preference_default: nw_ip_local_address_preference_t { get }
var nw_ip_local_address_preference_temporary: nw_ip_local_address_preference_t { get }
var nw_ip_local_address_preference_stable: nw_ip_local_address_preference_t { get }
@available(iOS 13.0, *)
func nw_ip_options_set_local_address_preference(_ options: nw_protocol_options_t, _ preference: nw_ip_local_address_preference_t)
@available(iOS 14.0, *)
func nw_ip_options_set_disable_multicast_loopback(_ options: nw_protocol_options_t, _ disable_multicast_loopback: Bool)
@available(iOS 12.0, *)
func nw_ip_create_metadata() -> nw_protocol_metadata_t
@available(iOS 12.0, *)
func nw_protocol_metadata_is_ip(_ metadata: nw_protocol_metadata_t) -> Bool
struct nw_ip_ecn_flag_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ip_ecn_flag_non_ect: nw_ip_ecn_flag_t { get }
var nw_ip_ecn_flag_ect_0: nw_ip_ecn_flag_t { get }
var nw_ip_ecn_flag_ect_1: nw_ip_ecn_flag_t { get }
var nw_ip_ecn_flag_ce: nw_ip_ecn_flag_t { get }
@available(iOS 12.0, *)
func nw_ip_metadata_set_ecn_flag(_ metadata: nw_protocol_metadata_t, _ ecn_flag: nw_ip_ecn_flag_t)
@available(iOS 12.0, *)
func nw_ip_metadata_get_ecn_flag(_ metadata: nw_protocol_metadata_t) -> nw_ip_ecn_flag_t
@available(iOS 12.0, *)
func nw_ip_metadata_set_service_class(_ metadata: nw_protocol_metadata_t, _ service_class: nw_service_class_t)
@available(iOS 12.0, *)
func nw_ip_metadata_get_service_class(_ metadata: nw_protocol_metadata_t) -> nw_service_class_t
@available(iOS 12.0, *)
func nw_ip_metadata_get_receive_time(_ metadata: nw_protocol_metadata_t) -> UInt64
protocol OS_nw_listener : NSObjectProtocol {
}
typealias nw_listener_t = OS_nw_listener
struct nw_listener_state_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_listener_state_invalid: nw_listener_state_t { get }
var nw_listener_state_waiting: nw_listener_state_t { get }
var nw_listener_state_ready: nw_listener_state_t { get }
var nw_listener_state_failed: nw_listener_state_t { get }
var nw_listener_state_cancelled: nw_listener_state_t { get }
@available(iOS 12.0, *)
func nw_listener_create_with_port(_ port: UnsafePointer<CChar>, _ parameters: nw_parameters_t) -> nw_listener_t?
@available(iOS 12.0, *)
func nw_listener_create(_ parameters: nw_parameters_t) -> nw_listener_t?
@available(iOS 12.0, *)
func nw_listener_create_with_connection(_ connection: nw_connection_t, _ parameters: nw_parameters_t) -> nw_listener_t?
@available(iOS 12.0, *)
func nw_listener_set_queue(_ listener: nw_listener_t, _ queue: DispatchQueue)
typealias nw_listener_state_changed_handler_t = (nw_listener_state_t, nw_error_t?) -> Void
@available(iOS 12.0, *)
func nw_listener_set_state_changed_handler(_ listener: nw_listener_t, _ handler: nw_listener_state_changed_handler_t?)
typealias nw_listener_new_connection_handler_t = (nw_connection_t) -> Void
@available(iOS 12.0, *)
func nw_listener_set_new_connection_handler(_ listener: nw_listener_t, _ handler: nw_listener_new_connection_handler_t?)
var NW_LISTENER_INFINITE_CONNECTION_LIMIT: UInt32 { get }
@available(iOS 12.0, *)
func nw_listener_get_new_connection_limit(_ listener: nw_listener_t) -> UInt32
@available(iOS 12.0, *)
func nw_listener_set_new_connection_limit(_ listener: nw_listener_t, _ new_connection_limit: UInt32)
@available(iOS 12.0, *)
func nw_listener_set_advertise_descriptor(_ listener: nw_listener_t, _ advertise_descriptor: nw_advertise_descriptor_t?)
typealias nw_listener_advertised_endpoint_changed_handler_t = (nw_endpoint_t, Bool) -> Void
@available(iOS 12.0, *)
func nw_listener_set_advertised_endpoint_changed_handler(_ listener: nw_listener_t, _ handler: nw_listener_advertised_endpoint_changed_handler_t?)
@available(iOS 12.0, *)
func nw_listener_get_port(_ listener: nw_listener_t) -> UInt16
@available(iOS 12.0, *)
func nw_listener_start(_ listener: nw_listener_t)
@available(iOS 12.0, *)
func nw_listener_cancel(_ listener: nw_listener_t)
protocol OS_nw_path_monitor : NSObjectProtocol {
}
typealias nw_path_monitor_t = OS_nw_path_monitor
@available(iOS 12.0, *)
func nw_path_monitor_create() -> nw_path_monitor_t
@available(iOS 12.0, *)
func nw_path_monitor_create_with_type(_ required_interface_type: nw_interface_type_t) -> nw_path_monitor_t
@available(iOS 14.0, *)
func nw_path_monitor_prohibit_interface_type(_ monitor: nw_path_monitor_t, _ interface_type: nw_interface_type_t)
typealias nw_path_monitor_cancel_handler_t = () -> Void
@available(iOS 12.0, *)
func nw_path_monitor_set_cancel_handler(_ monitor: nw_path_monitor_t, _ cancel_handler: @escaping nw_path_monitor_cancel_handler_t)
typealias nw_path_monitor_update_handler_t = (nw_path_t) -> Void
@available(iOS 12.0, *)
func nw_path_monitor_set_update_handler(_ monitor: nw_path_monitor_t, _ update_handler: @escaping nw_path_monitor_update_handler_t)
@available(iOS 12.0, *)
func nw_path_monitor_set_queue(_ monitor: nw_path_monitor_t, _ queue: DispatchQueue)
@available(iOS 12.0, *)
func nw_path_monitor_start(_ monitor: nw_path_monitor_t)
@available(iOS 12.0, *)
func nw_path_monitor_cancel(_ monitor: nw_path_monitor_t)
@available(iOS 12.0, *)
func nw_protocol_copy_tcp_definition() -> nw_protocol_definition_t
@available(iOS 12.0, *)
func nw_tcp_create_options() -> nw_protocol_options_t
@available(iOS 12.0, *)
func nw_tcp_options_set_no_delay(_ options: nw_protocol_options_t, _ no_delay: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_no_push(_ options: nw_protocol_options_t, _ no_push: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_no_options(_ options: nw_protocol_options_t, _ no_options: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_enable_keepalive(_ options: nw_protocol_options_t, _ enable_keepalive: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_keepalive_count(_ options: nw_protocol_options_t, _ keepalive_count: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_keepalive_idle_time(_ options: nw_protocol_options_t, _ keepalive_idle_time: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_keepalive_interval(_ options: nw_protocol_options_t, _ keepalive_interval: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_maximum_segment_size(_ options: nw_protocol_options_t, _ maximum_segment_size: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_connection_timeout(_ options: nw_protocol_options_t, _ connection_timeout: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_persist_timeout(_ options: nw_protocol_options_t, _ persist_timeout: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_retransmit_connection_drop_time(_ options: nw_protocol_options_t, _ retransmit_connection_drop_time: UInt32)
@available(iOS 12.0, *)
func nw_tcp_options_set_retransmit_fin_drop(_ options: nw_protocol_options_t, _ retransmit_fin_drop: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_disable_ack_stretching(_ options: nw_protocol_options_t, _ disable_ack_stretching: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_enable_fast_open(_ options: nw_protocol_options_t, _ enable_fast_open: Bool)
@available(iOS 12.0, *)
func nw_tcp_options_set_disable_ecn(_ options: nw_protocol_options_t, _ disable_ecn: Bool)
@available(iOS 12.0, *)
func nw_protocol_metadata_is_tcp(_ metadata: nw_protocol_metadata_t) -> Bool
@available(iOS 12.0, *)
func nw_tcp_get_available_receive_buffer(_ metadata: nw_protocol_metadata_t) -> UInt32
@available(iOS 12.0, *)
func nw_tcp_get_available_send_buffer(_ metadata: nw_protocol_metadata_t) -> UInt32
@available(iOS 12.0, *)
func nw_protocol_copy_tls_definition() -> nw_protocol_definition_t
@available(iOS 12.0, *)
func nw_tls_create_options() -> nw_protocol_options_t
@available(iOS 12.0, *)
func nw_tls_copy_sec_protocol_options(_ options: nw_protocol_options_t) -> sec_protocol_options_t
@available(iOS 12.0, *)
func nw_protocol_metadata_is_tls(_ metadata: nw_protocol_metadata_t) -> Bool
@available(iOS 12.0, *)
func nw_tls_copy_sec_protocol_metadata(_ metadata: nw_protocol_metadata_t) -> sec_protocol_metadata_t
@available(iOS 12.0, *)
func nw_protocol_copy_udp_definition() -> nw_protocol_definition_t
@available(iOS 12.0, *)
func nw_udp_create_options() -> nw_protocol_options_t
@available(iOS 12.0, *)
func nw_udp_options_set_prefer_no_checksum(_ options: nw_protocol_options_t, _ prefer_no_checksum: Bool)
@available(iOS 12.0, *)
func nw_udp_create_metadata() -> nw_protocol_metadata_t
@available(iOS 12.0, *)
func nw_protocol_metadata_is_udp(_ metadata: nw_protocol_metadata_t) -> Bool
struct nw_ws_opcode_t : Equatable, RawRepresentable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var nw_ws_opcode_invalid: nw_ws_opcode_t { get }
var nw_ws_opcode_cont: nw_ws_opcode_t { get }
var nw_ws_opcode_text: nw_ws_opcode_t { get }
var nw_ws_opcode_binary: nw_ws_opcode_t { get }
var nw_ws_opcode_close: nw_ws_opcode_t { get }
var nw_ws_opcode_ping: nw_ws_opcode_t { get }
var nw_ws_opcode_pong: nw_ws_opcode_t { get }
struct nw_ws_close_code_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ws_close_code_normal_closure: nw_ws_close_code_t { get }
var nw_ws_close_code_going_away: nw_ws_close_code_t { get }
var nw_ws_close_code_protocol_error: nw_ws_close_code_t { get }
var nw_ws_close_code_unsupported_data: nw_ws_close_code_t { get }
var nw_ws_close_code_no_status_received: nw_ws_close_code_t { get }
var nw_ws_close_code_abnormal_closure: nw_ws_close_code_t { get }
var nw_ws_close_code_invalid_frame_payload_data: nw_ws_close_code_t { get }
var nw_ws_close_code_policy_violation: nw_ws_close_code_t { get }
var nw_ws_close_code_message_too_big: nw_ws_close_code_t { get }
var nw_ws_close_code_mandatory_extension: nw_ws_close_code_t { get }
var nw_ws_close_code_internal_server_error: nw_ws_close_code_t { get }
var nw_ws_close_code_tls_handshake: nw_ws_close_code_t { get }
struct nw_ws_version_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ws_version_invalid: nw_ws_version_t { get }
var nw_ws_version_13: nw_ws_version_t { get }
@available(iOS 13.0, *)
func nw_protocol_copy_ws_definition() -> nw_protocol_definition_t
@available(iOS 13.0, *)
func nw_ws_create_options(_ version: nw_ws_version_t) -> nw_protocol_options_t
@available(iOS 13.0, *)
func nw_ws_options_add_additional_header(_ options: nw_protocol_options_t, _ name: UnsafePointer<CChar>, _ value: UnsafePointer<CChar>)
@available(iOS 13.0, *)
func nw_ws_options_add_subprotocol(_ options: nw_protocol_options_t, _ subprotocol: UnsafePointer<CChar>)
@available(iOS 13.0, *)
func nw_ws_options_set_auto_reply_ping(_ options: nw_protocol_options_t, _ auto_reply_ping: Bool)
@available(iOS 13.0, *)
func nw_ws_options_set_skip_handshake(_ options: nw_protocol_options_t, _ skip_handshake: Bool)
@available(iOS 13.0, *)
func nw_ws_options_set_maximum_message_size(_ options: nw_protocol_options_t, _ maximum_message_size: Int)
@available(iOS 13.0, *)
func nw_protocol_metadata_is_ws(_ metadata: nw_protocol_metadata_t) -> Bool
@available(iOS 13.0, *)
func nw_ws_create_metadata(_ opcode: nw_ws_opcode_t) -> nw_protocol_metadata_t
@available(iOS 13.0, *)
func nw_ws_metadata_get_opcode(_ metadata: nw_protocol_metadata_t) -> nw_ws_opcode_t
@available(iOS 13.0, *)
func nw_ws_metadata_set_close_code(_ metadata: nw_protocol_metadata_t, _ close_code: nw_ws_close_code_t)
@available(iOS 13.0, *)
func nw_ws_metadata_get_close_code(_ metadata: nw_protocol_metadata_t) -> nw_ws_close_code_t
typealias nw_ws_pong_handler_t = (nw_error_t?) -> Void
@available(iOS 13.0, *)
func nw_ws_metadata_set_pong_handler(_ metadata: nw_protocol_metadata_t, _ client_queue: DispatchQueue, _ pong_handler: @escaping nw_ws_pong_handler_t)
protocol OS_nw_ws_request : NSObjectProtocol {
}
typealias nw_ws_request_t = OS_nw_ws_request
typealias nw_ws_subprotocol_enumerator_t = (UnsafePointer<CChar>) -> Bool
@available(iOS 13.0, *)
func nw_ws_request_enumerate_subprotocols(_ request: nw_ws_request_t, _ enumerator: (UnsafePointer<CChar>) -> Bool) -> Bool
typealias nw_ws_additional_header_enumerator_t = (UnsafePointer<CChar>, UnsafePointer<CChar>) -> Bool
@available(iOS 13.0, *)
func nw_ws_request_enumerate_additional_headers(_ request: nw_ws_request_t, _ enumerator: (UnsafePointer<CChar>, UnsafePointer<CChar>) -> Bool) -> Bool
protocol OS_nw_ws_response : NSObjectProtocol {
}
typealias nw_ws_response_t = OS_nw_ws_response
struct nw_ws_response_status_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var nw_ws_response_status_invalid: nw_ws_response_status_t { get }
var nw_ws_response_status_accept: nw_ws_response_status_t { get }
var nw_ws_response_status_reject: nw_ws_response_status_t { get }
@available(iOS 13.0, *)
func nw_ws_response_create(_ status: nw_ws_response_status_t, _ selected_subprotocol: UnsafePointer<CChar>?) -> nw_ws_response_t
@available(iOS 13.0, *)
func nw_ws_response_get_status(_ response: nw_ws_response_t?) -> nw_ws_response_status_t
@available(iOS 13.0, *)
func nw_ws_response_get_selected_subprotocol(_ response: nw_ws_response_t) -> UnsafePointer<CChar>?
@available(iOS 13.0, *)
func nw_ws_response_add_additional_header(_ response: nw_ws_response_t, _ name: UnsafePointer<CChar>, _ value: UnsafePointer<CChar>)
@available(iOS 13.0, *)
func nw_ws_metadata_copy_server_response(_ metadata: nw_protocol_metadata_t) -> nw_ws_response_t
@available(iOS 13.0, *)
func nw_ws_response_enumerate_additional_headers(_ response: nw_ws_response_t, _ enumerator: (UnsafePointer<CChar>, UnsafePointer<CChar>) -> Bool) -> Bool
typealias nw_ws_client_request_handler_t = (nw_ws_request_t) -> nw_ws_response_t
@available(iOS 13.0, *)
func nw_ws_options_set_client_request_handler(_ options: nw_protocol_options_t, _ client_queue: DispatchQueue, _ handler: @escaping nw_ws_client_request_handler_t)
