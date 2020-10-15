
@available(tvOS 14.0, *)
class INImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(named name: String)
  @available(tvOS 14.0, *)
  class func systemImageNamed(_ systemImageName: String) -> Self
  convenience init(imageData: Data)
  convenience init?(url URL: URL)
  @available(tvOS 11.0, *)
  convenience init?(url URL: URL, width: Double, height: Double)
}
