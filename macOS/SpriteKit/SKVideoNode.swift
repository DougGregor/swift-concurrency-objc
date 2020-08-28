
class SKVideoNode : SKNode {
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  init(videoFileNamed videoFile: String)
  @available(macOS 10.10, *)
  init(fileNamed videoFile: String)
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  init(videoURL url: URL)
  @available(macOS 10.10, *)
  init(url: URL)
  func play()
  func pause()
  var size: CGSize
  var anchorPoint: CGPoint
}
