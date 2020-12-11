
@available(tvOS 7.0, *)
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case reliable
  case unreliable
}
@available(tvOS 7.0, *)
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConnected
  case connecting
  case connected
}
@available(tvOS 7.0, *)
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case optional
  case required
  case none
}
@available(tvOS 7.0, *)
let kMCSessionMinimumNumberOfPeers: Int
@available(tvOS 7.0, *)
let kMCSessionMaximumNumberOfPeers: Int
@available(tvOS 7.0, *)
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
  @available(tvOS 7.0, *)
  func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState)
  @available(tvOS 7.0, *)
  func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID)
  @available(tvOS 7.0, *)
  func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  @available(tvOS 9.0, *)
  func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress)
  @available(tvOS 7.0, *)
  func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?)
  @available(tvOS 7.0, *)
  optional func session(_ session: MCSession, didReceiveCertificate certificate: [Any]?, fromPeer peerID: MCPeerID, certificateHandler: @escaping (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionData(forPeer peerID: MCPeerID, withCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void)
  func nearbyConnectionData(forPeer peerID: MCPeerID) async throws -> Data
  func connectPeer(_ peerID: MCPeerID, withNearbyConnectionData data: Data)
  func cancelConnectPeer(_ peerID: MCPeerID)
}
