
@available(iOS 10.0, *)
class INImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(named name: String)
  @available(iOS 14.0, *)
  class func systemImageNamed(_ systemImageName: String) -> Self
  convenience init(imageData: Data)
  convenience init?(url URL: URL)
  @available(iOS 11.0, *)
  convenience init?(url URL: URL, width: Double, height: Double)
}
