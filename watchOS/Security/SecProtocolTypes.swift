
protocol OS_sec_trust : NSObjectProtocol {
}
typealias sec_trust_t = OS_sec_trust
protocol OS_sec_identity : NSObjectProtocol {
}
typealias sec_identity_t = OS_sec_identity
protocol OS_sec_certificate : NSObjectProtocol {
}
typealias sec_certificate_t = OS_sec_certificate
enum tls_protocol_version_t : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case TLSv10
  case TLSv11
  case TLSv12
  case TLSv13
  case DTLSv10
  case DTLSv12
}
enum tls_ciphersuite_t : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case RSA_WITH_3DES_EDE_CBC_SHA
  case RSA_WITH_AES_128_CBC_SHA
  case RSA_WITH_AES_256_CBC_SHA
  case RSA_WITH_AES_128_GCM_SHA256
  case RSA_WITH_AES_256_GCM_SHA384
  case RSA_WITH_AES_128_CBC_SHA256
  case RSA_WITH_AES_256_CBC_SHA256
  case ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA
  case ECDHE_ECDSA_WITH_AES_128_CBC_SHA
  case ECDHE_ECDSA_WITH_AES_256_CBC_SHA
  case ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
  case ECDHE_RSA_WITH_AES_128_CBC_SHA
  case ECDHE_RSA_WITH_AES_256_CBC_SHA
  case ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
  case ECDHE_ECDSA_WITH_AES_256_CBC_SHA384
  case ECDHE_RSA_WITH_AES_128_CBC_SHA256
  case ECDHE_RSA_WITH_AES_256_CBC_SHA384
  case ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
  case ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
  case ECDHE_RSA_WITH_AES_128_GCM_SHA256
  case ECDHE_RSA_WITH_AES_256_GCM_SHA384
  case ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
  case ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
  case AES_128_GCM_SHA256
  case AES_256_GCM_SHA384
  case CHACHA20_POLY1305_SHA256
}
enum tls_ciphersuite_group_t : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case `default`
  case compatibility
  case legacy
  case ats
  case ats_compatibility
}
enum SSLProtocol : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case sslProtocolUnknown
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case tlsProtocol1
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case tlsProtocol11
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case tlsProtocol12
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case dtlsProtocol1
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case tlsProtocol13
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case dtlsProtocol12
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case tlsProtocolMaxSupported
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case sslProtocol2
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case sslProtocol3
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case sslProtocol3Only
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case tlsProtocol1Only
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  case sslProtocolAll
}
@available(watchOS 5.0, *)
func sec_trust_create(_ trust: SecTrust) -> sec_trust_t?
@available(watchOS 5.0, *)
func sec_trust_copy_ref(_ trust: sec_trust_t) -> Unmanaged<SecTrust>
@available(watchOS 5.0, *)
func sec_identity_create(_ identity: SecIdentity) -> sec_identity_t?
@available(watchOS 5.0, *)
func sec_identity_create_with_certificates(_ identity: SecIdentity, _ certificates: CFArray) -> sec_identity_t?
@available(watchOS 6.0, *)
func sec_identity_access_certificates(_ identity: sec_identity_t, _ handler: @escaping (sec_certificate_t) -> Void) -> Bool
@available(watchOS 5.0, *)
func sec_identity_copy_ref(_ identity: sec_identity_t) -> Unmanaged<SecIdentity>?
@available(watchOS 5.0, *)
func sec_identity_copy_certificates_ref(_ identity: sec_identity_t) -> Unmanaged<CFArray>?
@available(watchOS 5.0, *)
func sec_certificate_create(_ certificate: SecCertificate) -> sec_certificate_t?
@available(watchOS 5.0, *)
func sec_certificate_copy_ref(_ certificate: sec_certificate_t) -> Unmanaged<SecCertificate>
