
@available(macOS 10.9, *)
let kCFStreamPropertySSLContext: CFString
@available(macOS 10.5, *)
let kCFStreamPropertySSLPeerTrust: CFString
@available(macOS 10.4, *)
let kCFStreamSSLValidatesCertificateChain: CFString
@available(macOS 10.4, *)
let kCFStreamPropertySSLSettings: CFString
@available(macOS 10.4, *)
let kCFStreamSSLLevel: CFString
@available(macOS 10.4, *)
let kCFStreamSSLPeerName: CFString
@available(macOS 10.4, *)
let kCFStreamSSLCertificates: CFString
@available(macOS 10.4, *)
let kCFStreamSSLIsServer: CFString
@available(macOS 10.7, *)
let kCFStreamNetworkServiceType: CFString
@available(macOS 10.7, *)
let kCFStreamNetworkServiceTypeVideo: CFString
@available(macOS 10.7, *)
let kCFStreamNetworkServiceTypeVoice: CFString
@available(macOS 10.7, *)
let kCFStreamNetworkServiceTypeBackground: CFString
@available(macOS 10.8, *)
let kCFStreamNetworkServiceTypeResponsiveData: CFString
@available(macOS 10.12, *)
let kCFStreamNetworkServiceTypeCallSignaling: CFString
@available(macOS 10.8, *)
let kCFStreamNetworkServiceTypeAVStreaming: CFString
@available(macOS 10.8, *)
let kCFStreamNetworkServiceTypeResponsiveAV: CFString
@available(macOS, introduced: 10.7, deprecated: 10.11, message: "use PushKit for VoIP control purposes")
let kCFStreamNetworkServiceTypeVoIP: CFString
@available(macOS 10.8, *)
let kCFStreamPropertyNoCellular: CFString
@available(macOS 10.8, *)
let kCFStreamPropertyConnectionIsCellular: CFString
@available(macOS 10.15, *)
let kCFStreamPropertyAllowExpensiveNetworkAccess: CFString
@available(macOS 10.15, *)
let kCFStreamPropertyConnectionIsExpensive: CFString
@available(macOS 10.15, *)
let kCFStreamPropertyAllowConstrainedNetworkAccess: CFString
@available(macOS 10.5, *)
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
@available(macOS 10.4, *)
let kCFStreamPropertyProxyLocalBypass: CFString
@available(macOS 10.3, *)
let kCFStreamPropertySocketRemoteHost: CFString
@available(macOS 10.3, *)
let kCFStreamPropertySocketRemoteNetService: CFString
@available(macOS 10.11, *)
let kCFStreamPropertySocketExtendedBackgroundIdleMode: CFString
@available(macOS 10.3, *)
func CFStreamCreatePairWithSocketToCFHost(_ alloc: CFAllocator?, _ host: CFHost, _ port: Int32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>?, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>?)
@available(macOS 10.3, *)
func CFStreamCreatePairWithSocketToNetService(_ alloc: CFAllocator?, _ service: CFNetService, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>?, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>?)
