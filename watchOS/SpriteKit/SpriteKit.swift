
typealias SKColor = UIColor

extension SKShapeNode : _CustomPlaygroundQuickLookable {
}

extension SKSpriteNode : _CustomPlaygroundQuickLookable {
}

extension SKTextureAtlas : _CustomPlaygroundQuickLookable {
}

extension SKTexture : _CustomPlaygroundQuickLookable {
}

@available(iOS 10.0, macOS 10.12, tvOS 10.0, watchOS 3.0, *)
extension SKWarpGeometryGrid {
  convenience init(columns: Int, rows: Int, sourcePositions: [SIMD2<Float>] = [SIMD2<Float>](), destinationPositions: [SIMD2<Float>] = [SIMD2<Float>]())
  func replacingBySourcePositions(positions source: [SIMD2<Float>]) -> SKWarpGeometryGrid
  func replacingByDestinationPositions(positions destination: [SIMD2<Float>]) -> SKWarpGeometryGrid
}


// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with SpriteKit
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct SpriteView : View {
  init(scene: SKScene, transition: SKTransition? = nil, isPaused: Bool = false, preferredFramesPerSecond: Int = 60)
}

