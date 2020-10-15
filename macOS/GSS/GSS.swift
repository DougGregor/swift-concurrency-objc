
typealias OM_uint32 = UInt32
typealias OM_uint64 = UInt64
typealias gss_uint32 = UInt32
typealias gss_name_t = OpaquePointer
typealias gss_const_name_t = OpaquePointer
typealias gss_ctx_id_t = OpaquePointer
struct gss_OID_desc_struct {
  var length: OM_uint32
  var elements: UnsafeMutableRawPointer!
  init()
  init(length: OM_uint32, elements: UnsafeMutableRawPointer!)
}
typealias gss_OID_desc = gss_OID_desc_struct
typealias gss_OID = UnsafeMutablePointer<gss_OID_desc_struct>
typealias gss_const_OID = UnsafePointer<gss_OID_desc>
struct gss_OID_set_desc_struct {
  var count: Int
  var elements: gss_OID!
  init()
  init(count: Int, elements: gss_OID!)
}
typealias gss_OID_set_desc = gss_OID_set_desc_struct
typealias gss_OID_set = UnsafeMutablePointer<gss_OID_set_desc_struct>
typealias gss_const_OID_set = UnsafePointer<gss_OID_set_desc>
typealias gss_cred_usage_t = Int32
typealias gss_cred_id_t = OpaquePointer
typealias gss_const_cred_id_t = OpaquePointer
struct gss_buffer_desc_struct {
  var length: Int
  var value: UnsafeMutableRawPointer!
  init()
  init(length: Int, value: UnsafeMutableRawPointer!)
}
typealias gss_buffer_desc = gss_buffer_desc_struct
typealias gss_buffer_t = UnsafeMutablePointer<gss_buffer_desc_struct>
typealias gss_const_buffer_t = UnsafePointer<gss_buffer_desc>
struct gss_channel_bindings_struct {
  var initiator_addrtype: OM_uint32
  var initiator_address: gss_buffer_desc
  var acceptor_addrtype: OM_uint32
  var acceptor_address: gss_buffer_desc
  var application_data: gss_buffer_desc
  init()
  init(initiator_addrtype: OM_uint32, initiator_address: gss_buffer_desc, acceptor_addrtype: OM_uint32, acceptor_address: gss_buffer_desc, application_data: gss_buffer_desc)
}
typealias gss_channel_bindings_t = UnsafeMutablePointer<gss_channel_bindings_struct>
typealias gss_const_channel_bindings_t = UnsafePointer<gss_channel_bindings_struct>
struct gss_buffer_set_desc_struct {
  var count: Int
  var elements: UnsafeMutablePointer<gss_buffer_desc>!
  init()
  init(count: Int, elements: UnsafeMutablePointer<gss_buffer_desc>!)
}
typealias gss_buffer_set_desc = gss_buffer_set_desc_struct
typealias gss_buffer_set_t = UnsafeMutablePointer<gss_buffer_set_desc_struct>
struct gss_iov_buffer_desc_struct {
  var type: OM_uint32
  var buffer: gss_buffer_desc
  init()
  init(type: OM_uint32, buffer: gss_buffer_desc)
}
typealias gss_iov_buffer_desc = gss_iov_buffer_desc_struct
typealias gss_iov_buffer_t = UnsafeMutablePointer<gss_iov_buffer_desc_struct>
typealias gss_qop_t = OM_uint32
typealias gss_status_id_t = UnsafeMutablePointer<OM_uint32>
typealias gss_auth_identity_t = OpaquePointer
var GSS_C_DELEG_FLAG: Int32 { get }
var GSS_C_MUTUAL_FLAG: Int32 { get }
var GSS_C_REPLAY_FLAG: Int32 { get }
var GSS_C_SEQUENCE_FLAG: Int32 { get }
var GSS_C_CONF_FLAG: Int32 { get }
var GSS_C_INTEG_FLAG: Int32 { get }
var GSS_C_ANON_FLAG: Int32 { get }
var GSS_C_PROT_READY_FLAG: Int32 { get }
var GSS_C_TRANS_FLAG: Int32 { get }
var GSS_C_DCE_STYLE: Int32 { get }
var GSS_C_IDENTIFY_FLAG: Int32 { get }
var GSS_C_EXTENDED_ERROR_FLAG: Int32 { get }
var GSS_C_DELEG_POLICY_FLAG: Int32 { get }
var GSS_C_BOTH: Int32 { get }
var GSS_C_INITIATE: Int32 { get }
var GSS_C_ACCEPT: Int32 { get }
var GSS_C_GSS_CODE: Int32 { get }
var GSS_C_MECH_CODE: Int32 { get }
var GSS_C_AF_UNSPEC: Int32 { get }
var GSS_C_AF_LOCAL: Int32 { get }
var GSS_C_AF_INET: Int32 { get }
var GSS_C_AF_IMPLINK: Int32 { get }
var GSS_C_AF_PUP: Int32 { get }
var GSS_C_AF_CHAOS: Int32 { get }
var GSS_C_AF_NS: Int32 { get }
var GSS_C_AF_NBS: Int32 { get }
var GSS_C_AF_ECMA: Int32 { get }
var GSS_C_AF_DATAKIT: Int32 { get }
var GSS_C_AF_CCITT: Int32 { get }
var GSS_C_AF_SNA: Int32 { get }
var GSS_C_AF_DECnet: Int32 { get }
var GSS_C_AF_DLI: Int32 { get }
var GSS_C_AF_LAT: Int32 { get }
var GSS_C_AF_HYLINK: Int32 { get }
var GSS_C_AF_APPLETALK: Int32 { get }
var GSS_C_AF_BSC: Int32 { get }
var GSS_C_AF_DSS: Int32 { get }
var GSS_C_AF_OSI: Int32 { get }
var GSS_C_AF_X25: Int32 { get }
var GSS_C_AF_INET6: Int32 { get }
var GSS_C_AF_NULLADDR: Int32 { get }
var GSS_C_QOP_DEFAULT: Int32 { get }
var GSS_KRB5_CONF_C_QOP_DES: Int32 { get }
var GSS_KRB5_CONF_C_QOP_DES3_KD: Int32 { get }
var GSS_C_INDEFINITE: UInt { get }
var GSS_IOV_BUFFER_TYPE_EMPTY: Int32 { get }
var GSS_IOV_BUFFER_TYPE_DATA: Int32 { get }
var GSS_IOV_BUFFER_TYPE_HEADER: Int32 { get }
var GSS_IOV_BUFFER_TYPE_MECH_PARAMS: Int32 { get }
var GSS_IOV_BUFFER_TYPE_TRAILER: Int32 { get }
var GSS_IOV_BUFFER_TYPE_PADDING: Int32 { get }
var GSS_IOV_BUFFER_TYPE_STREAM: Int32 { get }
var GSS_IOV_BUFFER_TYPE_SIGN_ONLY: Int32 { get }
var GSS_IOV_BUFFER_TYPE_FLAG_MASK: UInt32 { get }
var GSS_IOV_BUFFER_FLAG_ALLOCATE: Int32 { get }
var GSS_IOV_BUFFER_FLAG_ALLOCATED: Int32 { get }
var GSS_IOV_BUFFER_TYPE_FLAG_ALLOCATE: Int32 { get }
var GSS_IOV_BUFFER_TYPE_FLAG_ALLOCATED: Int32 { get }
var __gss_krb5_copy_ccache_x_oid_desc: gss_OID_desc
var __gss_krb5_get_tkt_flags_x_oid_desc: gss_OID_desc
var __gss_krb5_extract_authz_data_from_sec_context_x_oid_desc: gss_OID_desc
var __gss_krb5_compat_des3_mic_x_oid_desc: gss_OID_desc
var __gss_krb5_register_acceptor_identity_x_oid_desc: gss_OID_desc
var __gss_krb5_export_lucid_context_x_oid_desc: gss_OID_desc
var __gss_krb5_export_lucid_context_v1_x_oid_desc: gss_OID_desc
var __gss_krb5_set_dns_canonicalize_x_oid_desc: gss_OID_desc
var __gss_krb5_get_subkey_x_oid_desc: gss_OID_desc
var __gss_krb5_get_initiator_subkey_x_oid_desc: gss_OID_desc
var __gss_krb5_get_acceptor_subkey_x_oid_desc: gss_OID_desc
var __gss_krb5_send_to_kdc_x_oid_desc: gss_OID_desc
var __gss_krb5_get_authtime_x_oid_desc: gss_OID_desc
var __gss_krb5_get_service_keyblock_x_oid_desc: gss_OID_desc
var __gss_krb5_set_allowable_enctypes_x_oid_desc: gss_OID_desc
var __gss_krb5_set_default_realm_x_oid_desc: gss_OID_desc
var __gss_krb5_ccache_name_x_oid_desc: gss_OID_desc
var __gss_krb5_set_time_offset_x_oid_desc: gss_OID_desc
var __gss_krb5_get_time_offset_x_oid_desc: gss_OID_desc
var __gss_krb5_plugin_register_x_oid_desc: gss_OID_desc
var __gss_ntlm_get_session_key_x_oid_desc: gss_OID_desc
var __gss_c_nt_ntlm_oid_desc: gss_OID_desc
var __gss_c_nt_dn_oid_desc: gss_OID_desc
var __gss_c_ntlm_guest_oid_desc: gss_OID_desc
var __gss_c_ntlm_v1_oid_desc: gss_OID_desc
var __gss_c_ntlm_v2_oid_desc: gss_OID_desc
var __gss_c_ntlm_session_key_oid_desc: gss_OID_desc
var __gss_c_ntlm_force_v1_oid_desc: gss_OID_desc
var __gss_krb5_cred_no_ci_flags_x_oid_desc: gss_OID_desc
var __gss_c_nt_uuid_oid_desc: gss_OID_desc
var __gss_c_ntlm_support_channelbindings_oid_desc: gss_OID_desc
var __gss_c_ntlm_support_lm2_oid_desc: gss_OID_desc
var __gss_krb5_import_cred_x_oid_desc: gss_OID_desc
var __gss_c_ntlm_reset_keys_oid_desc: gss_OID_desc
var __gss_c_cred_diag_oid_desc: gss_OID_desc
var __gss_c_cred_validate_oid_desc: gss_OID_desc
var __gss_c_cred_set_default_oid_desc: gss_OID_desc
var __gss_c_cred_get_default_oid_desc: gss_OID_desc
var __gss_c_cred_renew_oid_desc: gss_OID_desc
var __gss_c_ctx_pfs_x_oid_desc: gss_OID_desc
var __gss_c_ma_sasl_mech_name_oid_desc: gss_OID_desc
var __gss_c_ma_mech_name_oid_desc: gss_OID_desc
var __gss_c_ma_mech_description_oid_desc: gss_OID_desc
var __gss_c_cred_password_oid_desc: gss_OID_desc
var __gss_c_cred_certificate_oid_desc: gss_OID_desc
var __gss_c_cred_secidentity_oid_desc: gss_OID_desc
var __gss_c_cred_heimbase_oid_desc: gss_OID_desc
var __gss_sasl_digest_md5_mechanism_oid_desc: gss_OID_desc
var __gss_netlogon_mechanism_oid_desc: gss_OID_desc
var __gss_appl_lkdc_supported_oid_desc: gss_OID_desc
var __gss_netlogon_set_session_key_x_oid_desc: gss_OID_desc
var __gss_netlogon_set_sign_algorithm_x_oid_desc: gss_OID_desc
var __gss_netlogon_nt_netbios_dns_name_oid_desc: gss_OID_desc
var __gss_c_inq_win2k_pac_x_oid_desc: gss_OID_desc
var __gss_c_inq_sspi_session_key_oid_desc: gss_OID_desc
var __gss_krb5_mechanism_oid_desc: gss_OID_desc
var __gss_ntlm_mechanism_oid_desc: gss_OID_desc
var __gss_iakerb_mechanism_oid_desc: gss_OID_desc
var __gss_pku2u_mechanism_oid_desc: gss_OID_desc
var __gss_scram_mechanism_oid_desc: gss_OID_desc
var __gss_c_nt_user_name_oid_desc: gss_OID_desc
var __gss_c_nt_machine_uid_name_oid_desc: gss_OID_desc
var __gss_c_nt_string_uid_name_oid_desc: gss_OID_desc
var __gss_c_nt_hostbased_service_x_oid_desc: gss_OID_desc
var __gss_c_nt_hostbased_service_oid_desc: gss_OID_desc
var __gss_c_nt_anonymous_oid_desc: gss_OID_desc
var __gss_c_nt_export_name_oid_desc: gss_OID_desc
var __gss_c_peer_has_updated_spnego_oid_desc: gss_OID_desc
var __gss_c_ma_mech_concrete_oid_desc: gss_OID_desc
var __gss_c_ma_mech_pseudo_oid_desc: gss_OID_desc
var __gss_c_ma_mech_composite_oid_desc: gss_OID_desc
var __gss_c_ma_mech_nego_oid_desc: gss_OID_desc
var __gss_c_ma_mech_glue_oid_desc: gss_OID_desc
var __gss_c_ma_not_mech_oid_desc: gss_OID_desc
var __gss_c_ma_deprecated_oid_desc: gss_OID_desc
var __gss_c_ma_not_dflt_mech_oid_desc: gss_OID_desc
var __gss_c_ma_itok_framed_oid_desc: gss_OID_desc
var __gss_c_ma_auth_init_oid_desc: gss_OID_desc
var __gss_c_ma_auth_targ_oid_desc: gss_OID_desc
var __gss_c_ma_auth_init_init_oid_desc: gss_OID_desc
var __gss_c_ma_auth_targ_init_oid_desc: gss_OID_desc
var __gss_c_ma_auth_init_anon_oid_desc: gss_OID_desc
var __gss_c_ma_auth_targ_anon_oid_desc: gss_OID_desc
var __gss_c_ma_deleg_cred_oid_desc: gss_OID_desc
var __gss_c_ma_integ_prot_oid_desc: gss_OID_desc
var __gss_c_ma_conf_prot_oid_desc: gss_OID_desc
var __gss_c_ma_mic_oid_desc: gss_OID_desc
var __gss_c_ma_wrap_oid_desc: gss_OID_desc
var __gss_c_ma_prot_ready_oid_desc: gss_OID_desc
var __gss_c_ma_replay_det_oid_desc: gss_OID_desc
var __gss_c_ma_oos_det_oid_desc: gss_OID_desc
var __gss_c_ma_cbindings_oid_desc: gss_OID_desc
var __gss_c_ma_pfs_oid_desc: gss_OID_desc
var __gss_c_ma_compress_oid_desc: gss_OID_desc
var __gss_c_ma_ctx_trans_oid_desc: gss_OID_desc
@available(macOS 10.7, *)
func gss_accept_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?, _ acceptor_cred_handle: gss_cred_id_t?, _ input_token: gss_buffer_t?, _ input_chan_bindings: gss_channel_bindings_t?, _ src_name: UnsafeMutablePointer<gss_name_t?>?, _ mech_type: UnsafeMutablePointer<gss_OID?>?, _ output_token: gss_buffer_t, _ ret_flags: UnsafeMutablePointer<OM_uint32>?, _ time_rec: UnsafeMutablePointer<OM_uint32>?, _ delegated_cred_handle: UnsafeMutablePointer<gss_cred_id_t?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_acquire_cred(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_name: gss_name_t?, _ time_req: OM_uint32, _ desired_mechs: gss_OID_set?, _ cred_usage: gss_cred_usage_t, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>?, _ actual_mechs: UnsafeMutablePointer<gss_OID_set?>?, _ time_rec: UnsafeMutablePointer<OM_uint32>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_acquire_cred_with_password(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_name: gss_name_t, _ password: gss_buffer_t, _ time_req: OM_uint32, _ desired_mechs: gss_OID_set?, _ cred_usage: gss_cred_usage_t, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>?, _ actual_mechs: UnsafeMutablePointer<gss_OID_set?>?, _ time_rec: UnsafeMutablePointer<OM_uint32>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_add_buffer_set_member(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ member_buffer: gss_buffer_t, _ buffer_set: UnsafeMutablePointer<gss_buffer_set_t>) -> OM_uint32
@available(macOS 10.7, *)
func gss_add_cred(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_cred_handle: gss_cred_id_t?, _ desired_name: gss_name_t?, _ desired_mech: gss_OID?, _ cred_usage: gss_cred_usage_t, _ initiator_time_req: OM_uint32, _ acceptor_time_req: OM_uint32, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>?, _ actual_mechs: UnsafeMutablePointer<gss_OID_set?>?, _ initiator_time_rec: UnsafeMutablePointer<OM_uint32>?, _ acceptor_time_rec: UnsafeMutablePointer<OM_uint32>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_add_oid_set_member(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ member_oid: gss_const_OID, _ oid_set: UnsafeMutablePointer<gss_OID_set>) -> OM_uint32
@available(macOS 10.7, *)
func gss_canonicalize_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ mech_type: gss_OID, _ output_name: UnsafeMutablePointer<gss_name_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_compare_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ name1_arg: gss_name_t, _ name2_arg: gss_name_t, _ name_equal: UnsafeMutablePointer<Int32>) -> OM_uint32
@available(macOS 10.7, *)
func gss_context_time(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ time_rec: UnsafeMutablePointer<OM_uint32>) -> OM_uint32
@available(macOS 10.7, *)
func gss_create_empty_buffer_set(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ buffer_set: UnsafeMutablePointer<gss_buffer_set_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_create_empty_oid_set(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ oid_set: UnsafeMutablePointer<gss_OID_set>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_decapsulate_token(_ input_token: gss_const_buffer_t, _ oid: gss_const_OID, _ output_token: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_delete_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?, _ output_token: gss_buffer_t?) -> OM_uint32
@available(macOS 10.7, *)
func gss_destroy_cred(_ min_stat: UnsafeMutablePointer<OM_uint32>, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_display_mech_attr(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ mech_attr: gss_const_OID, _ name: gss_buffer_t?, _ short_desc: gss_buffer_t?, _ long_desc: gss_buffer_t?) -> OM_uint32
@available(macOS 10.7, *)
func gss_display_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ output_name_buffer: gss_buffer_t, _ output_name_type: UnsafeMutablePointer<gss_OID?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_display_status(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ status_value: OM_uint32, _ status_type: Int32, _ mech_type: gss_OID?, _ message_content: UnsafeMutablePointer<OM_uint32>, _ status_string: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_duplicate_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ src_name: gss_name_t, _ dest_name: UnsafeMutablePointer<gss_name_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_encapsulate_token(_ input_token: gss_const_buffer_t, _ oid: gss_const_OID, _ output_token: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_export_cred(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t, _ token: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_export_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ exported_name: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_export_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?, _ interprocess_token: gss_buffer_t?) -> OM_uint32
@available(macOS 10.7, *)
func gss_get_mic(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ qop_req: gss_qop_t, _ message_buffer: gss_buffer_t, _ message_token: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_import_cred(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ token: gss_buffer_t, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_import_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name_buffer: gss_buffer_t, _ input_name_type: gss_const_OID?, _ output_name: UnsafeMutablePointer<gss_name_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_import_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ interprocess_token: gss_buffer_t, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_indicate_mechs(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ mech_set: UnsafeMutablePointer<gss_OID_set>?) -> OM_uint32
@available(macOS 10.10, *)
func gss_indicate_mechs_by_attrs(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_mech_attrs: gss_const_OID_set?, _ except_mech_attrs: gss_const_OID_set?, _ critical_mech_attrs: gss_const_OID_set?, _ mechs: UnsafeMutablePointer<gss_OID_set>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_init_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ initiator_cred_handle: gss_cred_id_t?, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?, _ target_name: gss_name_t, _ input_mech_type: gss_OID?, _ req_flags: OM_uint32, _ time_req: OM_uint32, _ input_chan_bindings: gss_channel_bindings_t?, _ input_token: gss_buffer_t?, _ actual_mech_type: UnsafeMutablePointer<gss_OID?>?, _ output_token: gss_buffer_t, _ ret_flags: UnsafeMutablePointer<OM_uint32>?, _ time_rec: UnsafeMutablePointer<OM_uint32>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_attrs_for_mech(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ mech: gss_const_OID, _ mech_attr: UnsafeMutablePointer<gss_OID_set?>?, _ known_mech_attrs: UnsafeMutablePointer<gss_OID_set?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ src_name: UnsafeMutablePointer<gss_name_t?>?, _ targ_name: UnsafeMutablePointer<gss_name_t?>?, _ lifetime_rec: UnsafeMutablePointer<OM_uint32>?, _ mech_type: UnsafeMutablePointer<gss_OID?>?, _ ctx_flags: UnsafeMutablePointer<OM_uint32>?, _ locally_initiated: UnsafeMutablePointer<Int32>?, _ xopen: UnsafeMutablePointer<Int32>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_cred(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t?, _ name_ret: UnsafeMutablePointer<gss_name_t?>?, _ lifetime: UnsafeMutablePointer<OM_uint32>?, _ cred_usage: UnsafeMutablePointer<gss_cred_usage_t>?, _ mechanisms: UnsafeMutablePointer<gss_OID_set?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_cred_by_mech(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t?, _ mech_type: gss_OID, _ cred_name: UnsafeMutablePointer<gss_name_t?>?, _ initiator_lifetime: UnsafeMutablePointer<OM_uint32>?, _ acceptor_lifetime: UnsafeMutablePointer<OM_uint32>?, _ cred_usage: UnsafeMutablePointer<gss_cred_usage_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_cred_by_oid(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: gss_cred_id_t, _ desired_object: gss_OID, _ data_set: UnsafeMutablePointer<gss_buffer_set_t>?) -> OM_uint32
@available(macOS 10.10, *)
func gss_inquire_mech_for_saslname(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ sasl_mech_name: gss_buffer_t?, _ mech_type: UnsafeMutablePointer<gss_OID?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_mechs_for_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ mech_types: UnsafeMutablePointer<gss_OID_set>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: gss_name_t, _ name_is_MN: UnsafeMutablePointer<Int32>, _ MN_mech: UnsafeMutablePointer<gss_OID?>?, _ attrs: UnsafeMutablePointer<gss_buffer_set_t?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_names_for_mech(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ mechanism: gss_const_OID, _ name_types: UnsafeMutablePointer<gss_OID_set>?) -> OM_uint32
@available(macOS 10.10, *)
func gss_inquire_saslname_for_mech(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ desired_mech: gss_OID, _ sasl_mech_name: gss_buffer_t?, _ mech_name: gss_buffer_t?, _ mech_description: gss_buffer_t?) -> OM_uint32
@available(macOS 10.7, *)
func gss_inquire_sec_context_by_oid(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ desired_object: gss_OID, _ data_set: UnsafeMutablePointer<gss_buffer_set_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_iter_creds(_ min_stat: UnsafeMutablePointer<OM_uint32>, _ flags: OM_uint32, _ mech: gss_const_OID?, _ useriter: @escaping (gss_OID?, gss_cred_id_t?) -> Void) -> OM_uint32
@available(macOS 10.7, *)
func gss_iter_creds_f(_ min_stat: UnsafeMutablePointer<OM_uint32>, _ flags: OM_uint32, _ mech: gss_const_OID?, _ userctx: UnsafeMutableRawPointer?, _ useriter: @convention(c) (UnsafeMutableRawPointer?, gss_OID?, gss_cred_id_t?) -> Void) -> OM_uint32
@available(macOS 10.7, *)
func gss_krb5_ccache_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ name: UnsafePointer<CChar>?, _ out_name: UnsafeMutablePointer<UnsafePointer<CChar>?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_krb5_export_lucid_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?, _ version: OM_uint32, _ rctx: UnsafeMutablePointer<UnsafeMutableRawPointer>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_krb5_free_lucid_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ c: UnsafeMutableRawPointer) -> OM_uint32
@available(macOS 10.7, *)
func gss_krb5_set_allowable_enctypes(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred: gss_cred_id_t, _ num_enctypes: OM_uint32, _ enctypes: UnsafeMutablePointer<Int32>) -> OM_uint32
@available(macOS 10.7, *)
func gss_oid_equal(_ a: gss_const_OID?, _ b: gss_const_OID?) -> Int32
@available(macOS 10.7, *)
func gss_oid_to_str(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ oid: gss_OID, _ oid_str: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_process_context_token(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ token_buffer: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_pseudo_random(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context: gss_ctx_id_t, _ prf_key: Int32, _ prf_in: gss_buffer_t, _ desired_output_len: Int, _ prf_out: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_release_buffer(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ buffer: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_release_buffer_set(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ buffer_set: UnsafeMutablePointer<gss_buffer_set_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_release_cred(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_release_name(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ input_name: UnsafeMutablePointer<gss_name_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_release_oid_set(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ set: UnsafeMutablePointer<gss_OID_set>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_set_cred_option(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ cred_handle: UnsafeMutablePointer<gss_cred_id_t?>?, _ object: gss_OID, _ value: gss_buffer_t?) -> OM_uint32
@available(macOS 10.7, *)
func gss_set_sec_context_option(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: UnsafeMutablePointer<gss_ctx_id_t>?, _ object: gss_OID, _ value: gss_buffer_t?) -> OM_uint32
@available(macOS 10.7, *)
func gss_test_oid_set_member(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ member: gss_const_OID, _ set: gss_OID_set, _ present: UnsafeMutablePointer<Int32>) -> OM_uint32
@available(macOS 10.7, *)
func gss_unwrap(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ input_message_buffer: gss_buffer_t, _ output_message_buffer: gss_buffer_t, _ conf_state: UnsafeMutablePointer<Int32>?, _ qop_state: UnsafeMutablePointer<gss_qop_t>?) -> OM_uint32
@available(macOS 10.9, *)
func gss_userok(_ name: gss_name_t, _ user: UnsafePointer<CChar>) -> Int32
@available(macOS 10.7, *)
func gss_verify_mic(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ message_buffer: gss_buffer_t, _ token_buffer: gss_buffer_t, _ qop_state: UnsafeMutablePointer<gss_qop_t>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_wrap(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ conf_req_flag: Int32, _ qop_req: gss_qop_t, _ input_message_buffer: gss_buffer_t, _ conf_state: UnsafeMutablePointer<Int32>?, _ output_message_buffer: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gss_wrap_size_limit(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ conf_req_flag: Int32, _ qop_req: gss_qop_t, _ req_output_size: OM_uint32, _ max_input_size: UnsafeMutablePointer<OM_uint32>) -> OM_uint32
@available(macOS 10.7, *)
func gsskrb5_extract_authz_data_from_sec_context(_ minor_status: UnsafeMutablePointer<OM_uint32>, _ context_handle: gss_ctx_id_t, _ ad_type: Int32, _ ad_data: gss_buffer_t) -> OM_uint32
@available(macOS 10.7, *)
func gsskrb5_register_acceptor_identity(_ identity: UnsafePointer<CChar>) -> OM_uint32
@available(macOS 10.7, *)
func krb5_gss_register_acceptor_identity(_ identity: UnsafePointer<CChar>) -> OM_uint32
var GSS_S_COMPLETE: Int32 { get }
var GSS_C_CALLING_ERROR_OFFSET: Int32 { get }
var GSS_C_ROUTINE_ERROR_OFFSET: Int32 { get }
var GSS_C_SUPPLEMENTARY_OFFSET: Int32 { get }
var GSS_C_CALLING_ERROR_MASK: UInt { get }
var GSS_C_ROUTINE_ERROR_MASK: UInt { get }
var GSS_C_SUPPLEMENTARY_MASK: UInt { get }
var GSS_S_CALL_INACCESSIBLE_READ: UInt { get }
var GSS_S_CALL_INACCESSIBLE_WRITE: UInt { get }
var GSS_S_CALL_BAD_STRUCTURE: UInt { get }
var GSS_S_BAD_MECH: UInt { get }
var GSS_S_BAD_NAME: UInt { get }
var GSS_S_BAD_NAMETYPE: UInt { get }
var GSS_S_BAD_BINDINGS: UInt { get }
var GSS_S_BAD_STATUS: UInt { get }
var GSS_S_BAD_SIG: UInt { get }
var GSS_S_BAD_MIC: UInt { get }
var GSS_S_NO_CRED: UInt { get }
var GSS_S_NO_CONTEXT: UInt { get }
var GSS_S_DEFECTIVE_TOKEN: UInt { get }
var GSS_S_DEFECTIVE_CREDENTIAL: UInt { get }
var GSS_S_CREDENTIALS_EXPIRED: UInt { get }
var GSS_S_CONTEXT_EXPIRED: UInt { get }
var GSS_S_FAILURE: UInt { get }
var GSS_S_BAD_QOP: UInt { get }
var GSS_S_UNAUTHORIZED: UInt { get }
var GSS_S_UNAVAILABLE: UInt { get }
var GSS_S_DUPLICATE_ELEMENT: UInt { get }
var GSS_S_NAME_NOT_MN: UInt { get }
var GSS_S_BAD_MECH_ATTR: UInt { get }
var GSS_S_CRED_UNAVAIL: UInt { get }
var GSS_C_OPTION_MASK: Int32 { get }
var GSS_C_CRED_NO_UI: Int32 { get }
var GSS_C_PRF_KEY_FULL: Int32 { get }
var GSS_C_PRF_KEY_PARTIAL: Int32 { get }
var __gss_c_attr_local_login_user: gss_buffer_desc
var kGSSICPassword: String { get }
var kGSSICCertificate: String { get }
var kGSSICVerifyCredential: String { get }
var kGSSCredentialUsage: String { get }
var kGSS_C_INITIATE: String { get }
var kGSS_C_ACCEPT: String { get }
var kGSS_C_BOTH: String { get }
var kGSSICLKDCHostname: String { get }
var kGSSICKerberosCacheName: String { get }
var kGSSICSiteName: String { get }
var kGSSICAppIdentifierACL: String { get }
var kGSSICVerifyCredentialAcceptorName: String { get }
var kGSSICCreateNewCredential: String { get }
var kGSSICAppleSourceApp: String { get }
var kGSSICAppleSourceAppAuditToken: String { get }
var kGSSICAppleSourceAppPID: String { get }
var kGSSICAppleSourceAppSigningIdentity: String { get }
var kGSSICAuthenticationContext: String { get }
@available(macOS 10.9, *)
func GSSCreateCredentialFromUUID(_ uuid: CFUUID) -> gss_cred_id_t?
@available(macOS 10.10, *)
func GSSCreateError(_ mech: gss_const_OID, _ major_status: OM_uint32, _ minor_status: OM_uint32) -> Unmanaged<CFError>?
@available(macOS 10.9, *)
func GSSCreateName(_ name: CFTypeRef, _ name_type: gss_const_OID, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> gss_name_t?
@available(macOS 10.9, *)
func GSSCredentialCopyName(_ cred: gss_cred_id_t) -> gss_name_t?
@available(macOS 10.9, *)
func GSSCredentialCopyUUID(_ credential: gss_cred_id_t) -> Unmanaged<CFUUID>?
@available(macOS 10.9, *)
func GSSCredentialGetLifetime(_ cred: gss_cred_id_t) -> OM_uint32
@available(macOS 10.9, *)
func GSSNameCreateDisplayString(_ name: gss_name_t) -> Unmanaged<CFString>?
@available(macOS 10.9, *)
func gss_aapl_change_password(_ name: gss_name_t, _ mech: gss_const_OID, _ attributes: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> OM_uint32
@available(macOS 10.7, *)
func gss_aapl_initial_cred(_ desired_name: gss_name_t, _ desired_mech: gss_const_OID, _ attributes: CFDictionary?, _ output_cred_handle: UnsafeMutablePointer<gss_cred_id_t>?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> OM_uint32
var kGSSChangePasswordOldPassword: String { get }
var kGSSChangePasswordNewPassword: String { get }
