
@available(macOS 10.12, *)
class SKTileMapNode : SKNode, NSCopying, NSSecureCoding {
  init(tileSet: SKTileSet, columns: Int, rows: Int, tileSize: CGSize)
  init(tileSet: SKTileSet, columns: Int, rows: Int, tileSize: CGSize, fillWith tileGroup: SKTileGroup)
  init(tileSet: SKTileSet, columns: Int, rows: Int, tileSize: CGSize, tileGroupLayout: [SKTileGroup])
  var numberOfColumns: Int
  var numberOfRows: Int
  var tileSize: CGSize
  var mapSize: CGSize { get }
  var tileSet: SKTileSet
  var colorBlendFactor: CGFloat
  var color: NSColor
  var blendMode: SKBlendMode
  var anchorPoint: CGPoint
  var shader: SKShader?
  var lightingBitMask: UInt32
  var enableAutomapping: Bool
  func fill(with tileGroup: SKTileGroup?)
  func tileDefinition(atColumn column: Int, row: Int) -> SKTileDefinition?
  func tileGroup(atColumn column: Int, row: Int) -> SKTileGroup?
  func setTileGroup(_ tileGroup: SKTileGroup?, forColumn column: Int, row: Int)
  func setTileGroup(_ tileGroup: SKTileGroup, andTileDefinition tileDefinition: SKTileDefinition, forColumn column: Int, row: Int)
  func tileColumnIndex(fromPosition position: CGPoint) -> Int
  func tileRowIndex(fromPosition position: CGPoint) -> Int
  func centerOfTile(atColumn column: Int, row: Int) -> CGPoint
}
