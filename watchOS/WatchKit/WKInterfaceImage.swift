
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImages(in imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  func stopAnimating()
}
@available(watchOS 2.0, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(_ image: UIImage?)
  func setImageData(_ imageData: Data?)
  func setImageNamed(_ imageName: String?)
  func setTintColor(_ tintColor: UIColor?)
}
