
class SKVideoNode : SKNode {
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  init(videoFileNamed videoFile: String)
  @available(watchOS 1.0, *)
  init(fileNamed videoFile: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  init(videoURL url: URL)
  @available(watchOS 1.0, *)
  init(url: URL)
  func play()
  func pause()
  var size: CGSize
  var anchorPoint: CGPoint
}
