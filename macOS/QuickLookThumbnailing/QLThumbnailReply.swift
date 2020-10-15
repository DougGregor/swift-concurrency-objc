
@available(macOS 10.15, *)
class QLThumbnailReply : NSObject {
  convenience init(contextSize: CGSize, drawing drawingBlock: @escaping (CGContext) -> Bool)
  convenience init(contextSize: CGSize, currentContextDrawing drawingBlock: @escaping () -> Bool)
  convenience init(imageFileURL fileURL: URL)
}
