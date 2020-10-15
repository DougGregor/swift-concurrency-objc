
@available(iOS 7.0, *)
class MKTileOverlay : NSObject, MKOverlay {
  init(urlTemplate URLTemplate: String?)
  var tileSize: CGSize
  var isGeometryFlipped: Bool
  var minimumZ: Int
  var maximumZ: Int
  var urlTemplate: String? { get }
}
struct MKTileOverlayPath {
  var x: Int
  var y: Int
  var z: Int
  var contentScaleFactor: CGFloat
  init()
  init(x: Int, y: Int, z: Int, contentScaleFactor: CGFloat)
}
extension MKTileOverlay {
  func url(forTilePath path: MKTileOverlayPath) -> URL
  func loadTile(at path: MKTileOverlayPath, result: @escaping (Data?, Error?) -> Void)
}
