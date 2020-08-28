
@available(tvOS 5.0, *)
let kCFStreamPropertySSLContext: CFString
@available(tvOS 2.0, *)
let kCFStreamPropertySSLPeerTrust: CFString
@available(tvOS 2.0, *)
let kCFStreamSSLValidatesCertificateChain: CFString
@available(tvOS 2.0, *)
let kCFStreamPropertySSLSettings: CFString
@available(tvOS 2.0, *)
let kCFStreamSSLLevel: CFString
@available(tvOS 2.0, *)
let kCFStreamSSLPeerName: CFString
@available(tvOS 2.0, *)
let kCFStreamSSLCertificates: CFString
@available(tvOS 2.0, *)
let kCFStreamSSLIsServer: CFString
@available(tvOS 4.0, *)
let kCFStreamNetworkServiceType: CFString
@available(tvOS 5.0, *)
let kCFStreamNetworkServiceTypeVideo: CFString
@available(tvOS 5.0, *)
let kCFStreamNetworkServiceTypeVoice: CFString
@available(tvOS 5.0, *)
let kCFStreamNetworkServiceTypeBackground: CFString
@available(tvOS 6.0, *)
let kCFStreamNetworkServiceTypeResponsiveData: CFString
@available(tvOS 10.0, *)
let kCFStreamNetworkServiceTypeCallSignaling: CFString
@available(tvOS 6.0, *)
let kCFStreamNetworkServiceTypeAVStreaming: CFString
@available(tvOS 6.0, *)
let kCFStreamNetworkServiceTypeResponsiveAV: CFString
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "use PushKit for VoIP control purposes")
let kCFStreamNetworkServiceTypeVoIP: CFString
@available(tvOS 5.0, *)
let kCFStreamPropertyNoCellular: CFString
@available(tvOS 6.0, *)
let kCFStreamPropertyConnectionIsCellular: CFString
@available(tvOS 13.0, *)
let kCFStreamPropertyAllowExpensiveNetworkAccess: CFString
@available(tvOS 13.0, *)
let kCFStreamPropertyConnectionIsExpensive: CFString
@available(tvOS 13.0, *)
let kCFStreamPropertyAllowConstrainedNetworkAccess: CFString
@available(tvOS 2.0, *)
let kCFStreamErrorDomainWinSock: CFIndex
func CFSocketStreamSOCKSGetErrorSubdomain(_ error: UnsafePointer<CFStreamError>) -> Int32
func CFSocketStreamSOCKSGetError(_ error: UnsafePointer<CFStreamError>) -> Int32
var kCFStreamErrorSOCKSSubDomainNone: Int { get }
var kCFStreamErrorSOCKSSubDomainVersionCode: Int { get }
var kCFStreamErrorSOCKS4SubDomainResponse: Int { get }
var kCFStreamErrorSOCKS5SubDomainUserPass: Int { get }
var kCFStreamErrorSOCKS5SubDomainMethod: Int { get }
var kCFStreamErrorSOCKS5SubDomainResponse: Int { get }
var kCFStreamErrorSOCKS5BadResponseAddr: Int { get }
var kCFStreamErrorSOCKS5BadState: Int { get }
var kCFStreamErrorSOCKSUnknownClientVersion: Int { get }
var kCFStreamErrorSOCKS4RequestFailed: Int { get }
var kCFStreamErrorSOCKS4IdentdFailed: Int { get }
var kCFStreamErrorSOCKS4IdConflict: Int { get }
var kSOCKS5NoAcceptableMethod: Int { get }
@available(tvOS 2.0, *)
let kCFStreamPropertyProxyLocalBypass: CFString
@available(tvOS 2.0, *)
let kCFStreamPropertySocketRemoteHost: CFString
@available(tvOS 2.0, *)
let kCFStreamPropertySocketRemoteNetService: CFString
@available(tvOS 9.0, *)
let kCFStreamPropertySocketExtendedBackgroundIdleMode: CFString
@available(tvOS 2.0, *)
func CFStreamCreatePairWithSocketToCFHost(_ alloc: CFAllocator?, _ host: CFHost, _ port: Int32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>?, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>?)
@available(tvOS 2.0, *)
func CFStreamCreatePairWithSocketToNetService(_ alloc: CFAllocator?, _ service: CFNetService, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>?, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>?)
