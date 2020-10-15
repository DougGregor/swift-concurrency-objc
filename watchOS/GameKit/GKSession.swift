
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use MCSession from the MultipeerConnectivity framework instead")
class GKSession : NSObject {
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  init!(sessionID: String!, displayName name: String!, sessionMode mode: GKSessionMode)
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  weak var delegate: @sil_weak GKSessionDelegate!
  var sessionID: String! { get }
  var displayName: String! { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  var sessionMode: GKSessionMode { get }
  var peerID: String! { get }
  var isAvailable: Bool
  var disconnectTimeout: TimeInterval
  func displayName(forPeer peerID: String!) -> String!
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  func send(_ data: Data!, toPeers peers: [Any]!, with mode: GKSendDataMode) throws
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  func sendData(toAllPeers data: Data!, with mode: GKSendDataMode) throws
  func setDataReceiveHandler(_ handler: Any!, withContext context: UnsafeMutableRawPointer!)
  func connect(toPeer peerID: String!, withTimeout timeout: TimeInterval)
  func cancelConnect(toPeer peerID: String!)
  func acceptConnection(fromPeer peerID: String!) throws
  func denyConnection(fromPeer peerID: String!)
  func disconnectPeer(fromAllPeers peerID: String!)
  func disconnectFromAllPeers()
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  func peers(with state: GKPeerConnectionState) -> [Any]!
}
