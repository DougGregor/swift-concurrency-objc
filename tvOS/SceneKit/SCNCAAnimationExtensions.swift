
extension CAAnimation : SCNAnimationProtocol {
}
extension CAAnimation {
  @available(tvOS 11.0, *)
  /*not inherited*/ init(scnAnimation animation: SCNAnimation)
  var usesSceneTimeBase: Bool
  var fadeInDuration: CGFloat
  var fadeOutDuration: CGFloat
  var animationEvents: [SCNAnimationEvent]?
}
