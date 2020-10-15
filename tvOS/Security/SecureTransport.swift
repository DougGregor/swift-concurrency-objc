
class SSLContext : _CFObject {
}
typealias SSLConnectionRef = UnsafeRawPointer
enum SSLSessionOption : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case breakOnServerAuth
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case breakOnCertRequested
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case breakOnClientAuth
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case falseStart
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case sendOneByteRecord
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case allowServerIdentityChange
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case fallback
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case breakOnClientHello
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case allowRenegotiation
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case enableSessionTickets
}
@frozen enum SSLSessionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case idle
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case handshake
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case connected
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case closed
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case aborted
}
enum SSLClientCertificateState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case certNone
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case certRequested
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case certSent
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case certRejected
}
typealias SSLReadFunc = @convention(c) (SSLConnectionRef, UnsafeMutableRawPointer, UnsafeMutablePointer<Int>) -> OSStatus
typealias SSLWriteFunc = @convention(c) (SSLConnectionRef, UnsafeRawPointer, UnsafeMutablePointer<Int>) -> OSStatus
@frozen enum SSLProtocolSide : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case serverSide
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case clientSide
}
enum SSLConnectionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case streamType
  @available(tvOS, introduced: 2.0, deprecated: 13.0)
  case datagramType
}
@available(tvOS, introduced: 5.0, deprecated: 11.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_default: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_ATSv1: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_ATSv1_noPFS: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_standard: CFString
@available(tvOS, introduced: 5.0, deprecated: 11.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_RC4_fallback: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_TLSv1_fallback: CFString
@available(tvOS, introduced: 5.0, deprecated: 11.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_TLSv1_RC4_fallback: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_legacy: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_legacy_DHE: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_anonymous: CFString
@available(tvOS, introduced: 5.0, deprecated: 11.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_3DES_fallback: CFString
@available(tvOS, introduced: 5.0, deprecated: 11.0, message: "No longer supported. Use Network.framework.")
let kSSLSessionConfig_TLSv1_3DES_fallback: CFString
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLContextGetTypeID() -> CFTypeID
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLCreateContext(_ alloc: CFAllocator?, _ protocolSide: SSLProtocolSide, _ connectionType: SSLConnectionType) -> SSLContext?
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetSessionState(_ context: SSLContext, _ state: UnsafeMutablePointer<SSLSessionState>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetSessionOption(_ context: SSLContext, _ option: SSLSessionOption, _ value: Bool) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetSessionOption(_ context: SSLContext, _ option: SSLSessionOption, _ value: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetIOFuncs(_ context: SSLContext, _ readFunc: SSLReadFunc, _ writeFunc: SSLWriteFunc) -> OSStatus
@available(tvOS, introduced: 10.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetSessionConfig(_ context: SSLContext, _ config: CFString) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetProtocolVersionMin(_ context: SSLContext, _ minVersion: SSLProtocol) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetProtocolVersionMin(_ context: SSLContext, _ minVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetProtocolVersionMax(_ context: SSLContext, _ maxVersion: SSLProtocol) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetProtocolVersionMax(_ context: SSLContext, _ maxVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetCertificate(_ context: SSLContext, _ certRefs: CFArray?) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetConnection(_ context: SSLContext, _ connection: SSLConnectionRef?) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetConnection(_ context: SSLContext, _ connection: UnsafeMutablePointer<SSLConnectionRef?>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetPeerDomainName(_ context: SSLContext, _ peerName: UnsafePointer<CChar>?, _ peerNameLen: Int) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetPeerDomainNameLength(_ context: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetPeerDomainName(_ context: SSLContext, _ peerName: UnsafeMutablePointer<CChar>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLCopyRequestedPeerNameLength(_ ctx: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLCopyRequestedPeerName(_ context: SSLContext, _ peerName: UnsafeMutablePointer<CChar>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetDatagramHelloCookie(_ dtlsContext: SSLContext, _ cookie: UnsafeRawPointer?, _ cookieLen: Int) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetMaxDatagramRecordSize(_ dtlsContext: SSLContext, _ maxSize: Int) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetMaxDatagramRecordSize(_ dtlsContext: SSLContext, _ maxSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetNegotiatedProtocolVersion(_ context: SSLContext, _ protocol: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetNumberSupportedCiphers(_ context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetSupportedCiphers(_ context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetNumberEnabledCiphers(_ context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetEnabledCiphers(_ context: SSLContext, _ ciphers: UnsafePointer<SSLCipherSuite>, _ numCiphers: Int) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetEnabledCiphers(_ context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 11.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetSessionTicketsEnabled(_ context: SSLContext, _ enabled: Bool) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLCopyPeerTrust(_ context: SSLContext, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetPeerID(_ context: SSLContext, _ peerID: UnsafeRawPointer?, _ peerIDLen: Int) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetPeerID(_ context: SSLContext, _ peerID: UnsafeMutablePointer<UnsafeRawPointer?>, _ peerIDLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetNegotiatedCipher(_ context: SSLContext, _ cipherSuite: UnsafeMutablePointer<SSLCipherSuite>) -> OSStatus
@available(tvOS, introduced: 11.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetALPNProtocols(_ context: SSLContext, _ protocols: CFArray) -> OSStatus
@available(tvOS, introduced: 11.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLCopyALPNProtocols(_ context: SSLContext, _ protocols: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(tvOS, introduced: 11.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetOCSPResponse(_ context: SSLContext, _ response: CFData) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 9.0, message: "No longer supported. Use Network.framework.")
func SSLSetEncryptionCertificate(_ context: SSLContext, _ certRefs: CFArray) -> OSStatus
enum SSLAuthenticate : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case neverAuthenticate
  case alwaysAuthenticate
  case tryAuthenticate
}
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetClientSideAuthenticate(_ context: SSLContext, _ auth: SSLAuthenticate) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLAddDistinguishedName(_ context: SSLContext, _ derDN: UnsafeRawPointer?, _ derDNLen: Int) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLCopyDistinguishedNames(_ context: SSLContext, _ names: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetClientCertificateState(_ context: SSLContext, _ clientState: UnsafeMutablePointer<SSLClientCertificateState>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLHandshake(_ context: SSLContext) -> OSStatus
@available(tvOS, introduced: 10.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLReHandshake(_ context: SSLContext) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLWrite(_ context: SSLContext, _ data: UnsafeRawPointer?, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLRead(_ context: SSLContext, _ data: UnsafeMutableRawPointer, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetBufferedReadSize(_ context: SSLContext, _ bufferSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLGetDatagramWriteSize(_ dtlsContext: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(tvOS, introduced: 5.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLClose(_ context: SSLContext) -> OSStatus
@available(tvOS, introduced: 11.0, deprecated: 13.0, message: "No longer supported. Use Network.framework.")
func SSLSetError(_ context: SSLContext, _ status: OSStatus) -> OSStatus
