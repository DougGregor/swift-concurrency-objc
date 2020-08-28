
@available(tvOS 10.0, *)
enum SKTileSetType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case grid
  case isometric
  case hexagonalFlat
  case hexagonalPointy
}
@available(tvOS 10.0, *)
struct SKTileAdjacencyMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var adjacencyUp: SKTileAdjacencyMask { get }
  static var adjacencyUpperRight: SKTileAdjacencyMask { get }
  static var adjacencyRight: SKTileAdjacencyMask { get }
  static var adjacencyLowerRight: SKTileAdjacencyMask { get }
  static var adjacencyDown: SKTileAdjacencyMask { get }
  static var adjacencyLowerLeft: SKTileAdjacencyMask { get }
  static var adjacencyLeft: SKTileAdjacencyMask { get }
  static var adjacencyUpperLeft: SKTileAdjacencyMask { get }
  static var adjacencyAll: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyUp: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyUpperRight: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyLowerRight: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyDown: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyLowerLeft: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyUpperLeft: SKTileAdjacencyMask { get }
  static var hexFlatAdjacencyAll: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyUpperLeft: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyUpperRight: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyRight: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyLowerRight: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyLowerLeft: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyLeft: SKTileAdjacencyMask { get }
  static var hexPointyAdjacencyAdd: SKTileAdjacencyMask { get }
  static var adjacencyUpEdge: SKTileAdjacencyMask { get }
  static var adjacencyUpperRightEdge: SKTileAdjacencyMask { get }
  static var adjacencyRightEdge: SKTileAdjacencyMask { get }
  static var adjacencyLowerRightEdge: SKTileAdjacencyMask { get }
  static var adjacencyDownEdge: SKTileAdjacencyMask { get }
  static var adjacencyLowerLeftEdge: SKTileAdjacencyMask { get }
  static var adjacencyLeftEdge: SKTileAdjacencyMask { get }
  static var adjacencyUpperLeftEdge: SKTileAdjacencyMask { get }
  static var adjacencyUpperRightCorner: SKTileAdjacencyMask { get }
  static var adjacencyLowerRightCorner: SKTileAdjacencyMask { get }
  static var adjacencyLowerLeftCorner: SKTileAdjacencyMask { get }
  static var adjacencyUpperLeftCorner: SKTileAdjacencyMask { get }
}
@available(tvOS 10.0, *)
class SKTileSet : NSObject, NSCopying, NSSecureCoding {
  init(tileGroups: [SKTileGroup])
  init(tileGroups: [SKTileGroup], tileSetType: SKTileSetType)
  convenience init?(named name: String)
  convenience init?(from url: URL)
  var tileGroups: [SKTileGroup]
  var name: String?
  var type: SKTileSetType
  var defaultTileGroup: SKTileGroup?
  var defaultTileSize: CGSize
}
@available(tvOS 10.0, *)
class SKTileGroup : NSObject, NSCopying, NSSecureCoding {
  class func empty() -> Self
  init(tileDefinition: SKTileDefinition)
  init(rules: [SKTileGroupRule])
  var rules: [SKTileGroupRule]
  var name: String?
}
@available(tvOS 10.0, *)
class SKTileGroupRule : NSObject, NSCopying, NSSecureCoding {
  init(adjacency: SKTileAdjacencyMask, tileDefinitions: [SKTileDefinition])
  var adjacency: SKTileAdjacencyMask
  var tileDefinitions: [SKTileDefinition]
  var name: String?
}
