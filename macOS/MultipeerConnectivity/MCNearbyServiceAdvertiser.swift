
@available(macOS 10.10, *)
class MCNearbyServiceAdvertiser : NSObject {
  init(peer myPeerID: MCPeerID, discoveryInfo info: [String : String]?, serviceType: String)
  func startAdvertisingPeer()
  func stopAdvertisingPeer()
  weak var delegate: @sil_weak MCNearbyServiceAdvertiserDelegate?
  var myPeerID: MCPeerID { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
}
protocol MCNearbyServiceAdvertiserDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void)
  @available(macOS 10.10, *)
  optional func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error)
}
