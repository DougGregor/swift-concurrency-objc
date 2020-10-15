
@available(macOS 11.0, *)
class INImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(named name: String)
  convenience init(imageData: Data)
  convenience init?(url URL: URL)
  convenience init?(url URL: URL, width: Double, height: Double)
}
