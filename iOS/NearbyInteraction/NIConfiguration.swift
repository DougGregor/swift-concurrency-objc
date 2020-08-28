
@available(iOS 14.0, *)
class NIDiscoveryToken : NSObject, NSCopying, NSSecureCoding {
}
@available(iOS 14.0, *)
class NIConfiguration : NSObject, NSCopying, NSSecureCoding {
}
@available(iOS 14.0, *)
class NINearbyPeerConfiguration : NIConfiguration {
  @NSCopying var peerDiscoveryToken: NIDiscoveryToken { get }
  init(peerToken: NIDiscoveryToken)
}
