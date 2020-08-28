
protocol OS_sec_protocol_metadata : NSObjectProtocol {
}
typealias sec_protocol_metadata_t = OS_sec_protocol_metadata
@available(iOS 12.0, *)
func sec_protocol_metadata_get_negotiated_protocol(_ metadata: sec_protocol_metadata_t) -> UnsafePointer<CChar>?
@available(iOS 12.0, *)
func sec_protocol_metadata_copy_peer_public_key(_ metadata: sec_protocol_metadata_t) -> __DispatchData?
@available(iOS 13.0, *)
func sec_protocol_metadata_get_negotiated_tls_protocol_version(_ metadata: sec_protocol_metadata_t) -> tls_protocol_version_t
@available(iOS, introduced: 12.0, deprecated: 13.0, renamed: "sec_protocol_metadata_get_negotiated_tls_protocol_version(_:)")
func sec_protocol_metadata_get_negotiated_protocol_version(_ metadata: sec_protocol_metadata_t) -> SSLProtocol
@available(iOS 13.0, *)
func sec_protocol_metadata_get_negotiated_tls_ciphersuite(_ metadata: sec_protocol_metadata_t) -> tls_ciphersuite_t
@available(iOS, introduced: 12.0, deprecated: 13.0, renamed: "sec_protocol_metadata_get_negotiated_tls_ciphersuite(_:)")
func sec_protocol_metadata_get_negotiated_ciphersuite(_ metadata: sec_protocol_metadata_t) -> SSLCipherSuite
@available(iOS 12.0, *)
func sec_protocol_metadata_get_early_data_accepted(_ metadata: sec_protocol_metadata_t) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_access_peer_certificate_chain(_ metadata: sec_protocol_metadata_t, _ handler: @escaping (sec_certificate_t) -> Void) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_access_ocsp_response(_ metadata: sec_protocol_metadata_t, _ handler: @escaping (__DispatchData) -> Void) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_access_supported_signature_algorithms(_ metadata: sec_protocol_metadata_t, _ handler: @escaping (UInt16) -> Void) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_access_distinguished_names(_ metadata: sec_protocol_metadata_t, _ handler: @escaping (__DispatchData) -> Void) -> Bool
@available(iOS 13.0, *)
func sec_protocol_metadata_access_pre_shared_keys(_ metadata: sec_protocol_metadata_t, _ handler: @escaping (__DispatchData, __DispatchData) -> Void) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_get_server_name(_ metadata: sec_protocol_metadata_t) -> UnsafePointer<CChar>?
@available(iOS 12.0, *)
func sec_protocol_metadata_peers_are_equal(_ metadataA: sec_protocol_metadata_t, _ metadataB: sec_protocol_metadata_t) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_challenge_parameters_are_equal(_ metadataA: sec_protocol_metadata_t, _ metadataB: sec_protocol_metadata_t) -> Bool
@available(iOS 12.0, *)
func sec_protocol_metadata_create_secret(_ metadata: sec_protocol_metadata_t, _ label_len: Int, _ label: UnsafePointer<CChar>, _ exporter_length: Int) -> __DispatchData?
@available(iOS 12.0, *)
func sec_protocol_metadata_create_secret_with_context(_ metadata: sec_protocol_metadata_t, _ label_len: Int, _ label: UnsafePointer<CChar>, _ context_len: Int, _ context: UnsafePointer<UInt8>, _ exporter_length: Int) -> __DispatchData?
