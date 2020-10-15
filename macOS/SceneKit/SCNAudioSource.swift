
@available(macOS 10.11, *)
class SCNAudioSource : NSObject, NSCopying, NSSecureCoding {
  convenience init?(fileNamed name: String)
  init?(url: URL)
  convenience init?(named fileName: String)
  var isPositional: Bool
  var volume: Float
  var rate: Float
  var reverbBlend: Float
  var loops: Bool
  var shouldStream: Bool
  func load()
}
@available(macOS 10.11, *)
class SCNAudioPlayer : NSObject {
  init(source: SCNAudioSource)
  var willStartPlayback: (() -> Void)?
  var didFinishPlayback: (() -> Void)?
  var audioSource: SCNAudioSource? { get }
}
extension SCNNode {
  @available(macOS 10.11, *)
  func addAudioPlayer(_ player: SCNAudioPlayer)
  @available(macOS 10.11, *)
  func removeAllAudioPlayers()
  @available(macOS 10.11, *)
  func removeAudioPlayer(_ player: SCNAudioPlayer)
  @available(macOS 10.11, *)
  var audioPlayers: [SCNAudioPlayer] { get }
}
