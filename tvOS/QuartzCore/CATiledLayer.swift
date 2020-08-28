
@available(tvOS 9.0, *)
class CATiledLayer : CALayer {
  class func fadeDuration() -> CFTimeInterval
  var levelsOfDetail: Int
  var levelsOfDetailBias: Int
  var tileSize: CGSize
}
