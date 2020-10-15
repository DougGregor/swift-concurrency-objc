
extension CAAnimation : SCNAnimationProtocol {
}
extension CAAnimation {
  @available(macOS 10.13, *)
  /*not inherited*/ init(scnAnimation animation: SCNAnimation)
  var usesSceneTimeBase: Bool
  @available(macOS 10.9, *)
  var fadeInDuration: CGFloat
  @available(macOS 10.9, *)
  var fadeOutDuration: CGFloat
  @available(macOS 10.9, *)
  var animationEvents: [SCNAnimationEvent]?
}
