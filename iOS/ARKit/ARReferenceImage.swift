
@available(iOS 11.3, *)
class ARReferenceImage : NSObject {
  var name: String?
  var physicalSize: CGSize { get }
  @available(iOS 13.0, *)
  var resourceGroupName: String? { get }
  @available(iOS 13.0, *)
  func validate(completionHandler: @escaping (Error?) -> Void)
  init(_ image: CGImage, orientation: CGImagePropertyOrientation, physicalWidth: CGFloat)
  init(_ pixelBuffer: CVPixelBuffer, orientation: CGImagePropertyOrientation, physicalWidth: CGFloat)
  class func referenceImages(inGroupNamed name: String, bundle: Bundle?) -> Set<ARReferenceImage>?
}
