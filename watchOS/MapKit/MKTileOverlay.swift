
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
