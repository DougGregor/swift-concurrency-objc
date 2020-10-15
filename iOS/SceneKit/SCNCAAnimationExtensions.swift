
extension CAAnimation : SCNAnimationProtocol {
}
extension CAAnimation {
  @available(iOS 11.0, *)
  /*not inherited*/ init(scnAnimation animation: SCNAnimation)
  var usesSceneTimeBase: Bool
  var fadeInDuration: CGFloat
  var fadeOutDuration: CGFloat
  var animationEvents: [SCNAnimationEvent]?
}
