
@available(iOS 7.0, *)
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case reliable
  case unreliable
}
@available(iOS 7.0, *)
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConnected
  case connecting
  case connected
}
@available(iOS 7.0, *)
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case optional
  case required
  case none
}
@available(iOS 7.0, *)
let kMCSessionMinimumNumberOfPeers: Int
@available(iOS 7.0, *)
let kMCSessionMaximumNumberOfPeers: Int
@available(iOS 7.0, *)
class MCSession : NSObject {
  convenience init(peer myPeerID: MCPeerID)
  init(peer myPeerID: MCPeerID, securityIdentity identity: [Any]?, encryptionPreference: MCEncryptionPreference)
  func send(_ data: Data, toPeers peerIDs: [MCPeerID], with mode: MCSessionSendDataMode) throws
  func disconnect()
  func sendResource(at resourceURL: URL, withName resourceName: String, toPeer peerID: MCPeerID, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil) -> Progress?
  func startStream(withName streamName: String, toPeer peerID: MCPeerID) throws -> OutputStream
  weak var delegate: @sil_weak MCSessionDelegate?
  var myPeerID: MCPeerID { get }
  var securityIdentity: [Any]? { get }
  var encryptionPreference: MCEncryptionPreference { get }
  var connectedPeers: [MCPeerID] { get }
}
protocol MCSessionDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  @asyncHandler func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState)
  @available(iOS 7.0, *)
  @asyncHandler func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  @asyncHandler func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  @asyncHandler func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress)
  @available(iOS 7.0, *)
  @asyncHandler func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?)
  @available(iOS 7.0, *)
  @asyncHandler optional func session(_ session: MCSession, didReceiveCertificate certificate: [Any]?, fromPeer peerID: MCPeerID, certificateHandler: @escaping (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionData(forPeer peerID: MCPeerID, withCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void)
  func nearbyConnectionData(forPeer peerID: MCPeerID) async throws -> Data
  func connectPeer(_ peerID: MCPeerID, withNearbyConnectionData data: Data)
  func cancelConnectPeer(_ peerID: MCPeerID)
}
