
@available(watchOS 3.2, *)
class INImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(named name: String)
  @available(watchOS 7.0, *)
  class func systemImageNamed(_ systemImageName: String) -> Self
  convenience init(imageData: Data)
  convenience init?(url URL: URL)
  @available(watchOS 4.0, *)
  convenience init?(url URL: URL, width: Double, height: Double)
}
