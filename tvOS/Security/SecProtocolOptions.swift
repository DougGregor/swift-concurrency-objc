
protocol OS_sec_protocol_options : NSObjectProtocol {
}
typealias sec_protocol_options_t = OS_sec_protocol_options
@available(tvOS 13.0, *)
func sec_protocol_options_are_equal(_ optionsA: sec_protocol_options_t, _ optionsB: sec_protocol_options_t) -> Bool
@available(tvOS 12.0, *)
func sec_protocol_options_set_local_identity(_ options: sec_protocol_options_t, _ identity: sec_identity_t)
@available(tvOS 13.0, *)
func sec_protocol_options_append_tls_ciphersuite(_ options: sec_protocol_options_t, _ ciphersuite: tls_ciphersuite_t)
@available(tvOS, introduced: 12.0, deprecated: 13.0, message: "Use sec_protocol_options_append_tls_ciphersuite")
func sec_protocol_options_add_tls_ciphersuite(_ options: sec_protocol_options_t, _ ciphersuite: SSLCipherSuite)
@available(tvOS 13.0, *)
func sec_protocol_options_append_tls_ciphersuite_group(_ options: sec_protocol_options_t, _ group: tls_ciphersuite_group_t)
@available(tvOS, introduced: 12.0, deprecated: 13.0, message: "Use sec_protocol_options_append_tls_ciphersuite_group")
func sec_protocol_options_add_tls_ciphersuite_group(_ options: sec_protocol_options_t, _ group: SSLCiphersuiteGroup)
@available(tvOS, introduced: 12.0, deprecated: 13.0, renamed: "sec_protocol_options_set_min_tls_protocol_version(_:_:)")
func sec_protocol_options_set_tls_min_version(_ options: sec_protocol_options_t, _ version: SSLProtocol)
@available(tvOS 13.0, *)
func sec_protocol_options_set_min_tls_protocol_version(_ options: sec_protocol_options_t, _ version: tls_protocol_version_t)
@available(tvOS 13.0, *)
func sec_protocol_options_get_default_min_tls_protocol_version() -> tls_protocol_version_t
@available(tvOS 13.0, *)
func sec_protocol_options_get_default_min_dtls_protocol_version() -> tls_protocol_version_t
@available(tvOS, introduced: 12.0, deprecated: 13.0, renamed: "sec_protocol_options_set_max_tls_protocol_version(_:_:)")
func sec_protocol_options_set_tls_max_version(_ options: sec_protocol_options_t, _ version: SSLProtocol)
@available(tvOS 13.0, *)
func sec_protocol_options_set_max_tls_protocol_version(_ options: sec_protocol_options_t, _ version: tls_protocol_version_t)
@available(tvOS 13.0, *)
func sec_protocol_options_get_default_max_tls_protocol_version() -> tls_protocol_version_t
@available(tvOS 13.0, *)
func sec_protocol_options_get_default_max_dtls_protocol_version() -> tls_protocol_version_t
@available(tvOS 12.0, *)
func sec_protocol_options_add_tls_application_protocol(_ options: sec_protocol_options_t, _ application_protocol: UnsafePointer<CChar>)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_server_name(_ options: sec_protocol_options_t, _ server_name: UnsafePointer<CChar>)
@available(tvOS, introduced: 12.0, deprecated: 13.0, message: "DHE ciphersuites are no longer supported")
func sec_protocol_options_set_tls_diffie_hellman_parameters(_ options: sec_protocol_options_t, _ params: __DispatchData)
@available(tvOS 12.0, *)
func sec_protocol_options_add_pre_shared_key(_ options: sec_protocol_options_t, _ psk: __DispatchData, _ psk_identity: __DispatchData)
@available(tvOS 13.0, *)
func sec_protocol_options_set_tls_pre_shared_key_identity_hint(_ options: sec_protocol_options_t, _ psk_identity_hint: __DispatchData)
typealias sec_protocol_pre_shared_key_selection_complete_t = (__DispatchData?) -> Void
typealias sec_protocol_pre_shared_key_selection_t = (sec_protocol_metadata_t, __DispatchData?, @escaping sec_protocol_pre_shared_key_selection_complete_t) -> Void
@available(tvOS 13.0, *)
func sec_protocol_options_set_pre_shared_key_selection_block(_ options: sec_protocol_options_t, _ psk_selection_block: @escaping sec_protocol_pre_shared_key_selection_t, _ psk_selection_queue: DispatchQueue)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_tickets_enabled(_ options: sec_protocol_options_t, _ tickets_enabled: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_is_fallback_attempt(_ options: sec_protocol_options_t, _ is_fallback_attempt: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_resumption_enabled(_ options: sec_protocol_options_t, _ resumption_enabled: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_false_start_enabled(_ options: sec_protocol_options_t, _ false_start_enabled: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_ocsp_enabled(_ options: sec_protocol_options_t, _ ocsp_enabled: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_sct_enabled(_ options: sec_protocol_options_t, _ sct_enabled: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_tls_renegotiation_enabled(_ options: sec_protocol_options_t, _ renegotiation_enabled: Bool)
@available(tvOS 12.0, *)
func sec_protocol_options_set_peer_authentication_required(_ options: sec_protocol_options_t, _ peer_authentication_required: Bool)
typealias sec_protocol_key_update_complete_t = () -> Void
typealias sec_protocol_key_update_t = (sec_protocol_metadata_t, @escaping sec_protocol_key_update_complete_t) -> Void
typealias sec_protocol_challenge_complete_t = (sec_identity_t?) -> Void
typealias sec_protocol_challenge_t = (sec_protocol_metadata_t, @escaping sec_protocol_challenge_complete_t) -> Void
typealias sec_protocol_verify_complete_t = (Bool) -> Void
typealias sec_protocol_verify_t = (sec_protocol_metadata_t, sec_trust_t, @escaping sec_protocol_verify_complete_t) -> Void
@available(tvOS 12.0, *)
func sec_protocol_options_set_key_update_block(_ options: sec_protocol_options_t, _ key_update_block: @escaping sec_protocol_key_update_t, _ key_update_queue: DispatchQueue)
@available(tvOS 12.0, *)
func sec_protocol_options_set_challenge_block(_ options: sec_protocol_options_t, _ challenge_block: @escaping sec_protocol_challenge_t, _ challenge_queue: DispatchQueue)
@available(tvOS 12.0, *)
func sec_protocol_options_set_verify_block(_ options: sec_protocol_options_t, _ verify_block: @escaping sec_protocol_verify_t, _ verify_block_queue: DispatchQueue)
