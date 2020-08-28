
class SKEffectNode : SKNode, SKWarpable {
  var shouldCenterFilter: Bool
  var shouldEnableEffects: Bool
  var shouldRasterize: Bool
  var blendMode: SKBlendMode
  var shader: SKShader?
}
