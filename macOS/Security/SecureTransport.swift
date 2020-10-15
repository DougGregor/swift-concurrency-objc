
class SSLContext : _CFObject {
}
typealias SSLConnectionRef = UnsafeRawPointer
enum SSLSessionOption : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case breakOnServerAuth
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case breakOnCertRequested
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case breakOnClientAuth
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case falseStart
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case sendOneByteRecord
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case allowServerIdentityChange
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case fallback
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case breakOnClientHello
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case allowRenegotiation
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case enableSessionTickets
}
@frozen enum SSLSessionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case idle
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case handshake
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case connected
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case closed
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case aborted
}
enum SSLClientCertificateState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case certNone
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case certRequested
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case certSent
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case certRejected
}
typealias SSLReadFunc = @convention(c) (SSLConnectionRef, UnsafeMutableRawPointer, UnsafeMutablePointer<Int>) -> OSStatus
typealias SSLWriteFunc = @convention(c) (SSLConnectionRef, UnsafeRawPointer, UnsafeMutablePointer<Int>) -> OSStatus
@frozen enum SSLProtocolSide : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case serverSide
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case clientSide
}
enum SSLConnectionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case streamType
  @available(macOS, introduced: 10.2, deprecated: 10.15)
  case datagramType
}
@available(macOS, introduced: 10.2, deprecated: 10.13, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_default: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_ATSv1: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_ATSv1_noPFS: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_standard: CFString
@available(macOS, introduced: 10.2, deprecated: 10.13, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_RC4_fallback: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_TLSv1_fallback: CFString
@available(macOS, introduced: 10.2, deprecated: 10.13, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_TLSv1_RC4_fallback: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_legacy: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_legacy_DHE: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_anonymous: CFString
@available(macOS, introduced: 10.2, deprecated: 10.13, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_3DES_fallback: CFString
@available(macOS, introduced: 10.2, deprecated: 10.13, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_TLSv1_3DES_fallback: CFString
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLContextGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCreateContext(_ alloc: CFAllocator?, _ protocolSide: SSLProtocolSide, _ connectionType: SSLConnectionType) -> SSLContext?
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetSessionState(_ context: SSLContext, _ state: UnsafeMutablePointer<SSLSessionState>) -> OSStatus
@available(macOS, introduced: 10.6, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetSessionOption(_ context: SSLContext, _ option: SSLSessionOption, _ value: Bool) -> OSStatus
@available(macOS, introduced: 10.6, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetSessionOption(_ context: SSLContext, _ option: SSLSessionOption, _ value: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetIOFuncs(_ context: SSLContext, _ readFunc: SSLReadFunc, _ writeFunc: SSLWriteFunc) -> OSStatus
@available(macOS, introduced: 10.12, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetSessionConfig(_ context: SSLContext, _ config: CFString) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetProtocolVersionMin(_ context: SSLContext, _ minVersion: SSLProtocol) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetProtocolVersionMin(_ context: SSLContext, _ minVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetProtocolVersionMax(_ context: SSLContext, _ maxVersion: SSLProtocol) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetProtocolVersionMax(_ context: SSLContext, _ maxVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetCertificate(_ context: SSLContext, _ certRefs: CFArray?) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetConnection(_ context: SSLContext, _ connection: SSLConnectionRef?) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetConnection(_ context: SSLContext, _ connection: UnsafeMutablePointer<SSLConnectionRef?>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetPeerDomainName(_ context: SSLContext, _ peerName: UnsafePointer<CChar>?, _ peerNameLen: Int) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetPeerDomainNameLength(_ context: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetPeerDomainName(_ context: SSLContext, _ peerName: UnsafeMutablePointer<CChar>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.11, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCopyRequestedPeerNameLength(_ ctx: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.11, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCopyRequestedPeerName(_ context: SSLContext, _ peerName: UnsafeMutablePointer<CChar>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetDatagramHelloCookie(_ dtlsContext: SSLContext, _ cookie: UnsafeRawPointer?, _ cookieLen: Int) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetMaxDatagramRecordSize(_ dtlsContext: SSLContext, _ maxSize: Int) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetMaxDatagramRecordSize(_ dtlsContext: SSLContext, _ maxSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetNegotiatedProtocolVersion(_ context: SSLContext, _ protocol: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetNumberSupportedCiphers(_ context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetSupportedCiphers(_ context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetNumberEnabledCiphers(_ context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetEnabledCiphers(_ context: SSLContext, _ ciphers: UnsafePointer<SSLCipherSuite>, _ numCiphers: Int) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetEnabledCiphers(_ context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetSessionTicketsEnabled(_ context: SSLContext, _ enabled: Bool) -> OSStatus
@available(macOS, introduced: 10.6, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCopyPeerTrust(_ context: SSLContext, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetPeerID(_ context: SSLContext, _ peerID: UnsafeRawPointer?, _ peerIDLen: Int) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetPeerID(_ context: SSLContext, _ peerID: UnsafeMutablePointer<UnsafeRawPointer?>, _ peerIDLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetNegotiatedCipher(_ context: SSLContext, _ cipherSuite: UnsafeMutablePointer<SSLCipherSuite>) -> OSStatus
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetALPNProtocols(_ context: SSLContext, _ protocols: CFArray) -> OSStatus
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCopyALPNProtocols(_ context: SSLContext, _ protocols: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetOCSPResponse(_ context: SSLContext, _ response: CFData) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "No longer supported. Use Network.framework.")
func SSLSetEncryptionCertificate(_ context: SSLContext, _ certRefs: CFArray) -> OSStatus
enum SSLAuthenticate : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case neverAuthenticate
  case alwaysAuthenticate
  case tryAuthenticate
}
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetClientSideAuthenticate(_ context: SSLContext, _ auth: SSLAuthenticate) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLAddDistinguishedName(_ context: SSLContext, _ derDN: UnsafeRawPointer?, _ derDNLen: Int) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetCertificateAuthorities(_ context: SSLContext, _ certificateOrArray: CFTypeRef, _ replaceExisting: Bool) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCopyCertificateAuthorities(_ context: SSLContext, _ certificates: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLCopyDistinguishedNames(_ context: SSLContext, _ names: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS, introduced: 10.3, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetClientCertificateState(_ context: SSLContext, _ clientState: UnsafeMutablePointer<SSLClientCertificateState>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetDiffieHellmanParams(_ context: SSLContext, _ dhParams: UnsafeRawPointer?, _ dhParamsLen: Int) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetDiffieHellmanParams(_ context: SSLContext, _ dhParams: UnsafeMutablePointer<UnsafeRawPointer?>, _ dhParamsLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLHandshake(_ context: SSLContext) -> OSStatus
@available(macOS, introduced: 10.12, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLReHandshake(_ context: SSLContext) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLWrite(_ context: SSLContext, _ data: UnsafeRawPointer?, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLRead(_ context: SSLContext, _ data: UnsafeMutableRawPointer, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetBufferedReadSize(_ context: SSLContext, _ bufferSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.8, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLGetDatagramWriteSize(_ dtlsContext: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLClose(_ context: SSLContext) -> OSStatus
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "No longer supported. Use Network.framework.")
func SSLSetError(_ context: SSLContext, _ status: OSStatus) -> OSStatus
