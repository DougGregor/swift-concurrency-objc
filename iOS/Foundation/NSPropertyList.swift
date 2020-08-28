
extension PropertyListSerialization {
  struct MutabilityOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var mutableContainers: PropertyListSerialization.MutabilityOptions { get }
    static var mutableContainersAndLeaves: PropertyListSerialization.MutabilityOptions { get }
  }
  enum PropertyListFormat : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case openStep
    case xml
    case binary
  }
  typealias ReadOptions = PropertyListSerialization.MutabilityOptions
  typealias WriteOptions = Int
}
class PropertyListSerialization : NSObject {
  class func propertyList(_ plist: Any, isValidFor format: PropertyListSerialization.PropertyListFormat) -> Bool
  @available(iOS 4.0, *)
  class func data(fromPropertyList plist: Any, format: PropertyListSerialization.PropertyListFormat, options opt: PropertyListSerialization.WriteOptions) throws -> Data
  @available(iOS 4.0, *)
  class func writePropertyList(_ plist: Any, to stream: OutputStream, format: PropertyListSerialization.PropertyListFormat, options opt: PropertyListSerialization.WriteOptions, error: NSErrorPointer) -> Int
  @available(iOS 4.0, *)
  class func propertyList(from data: Data, options opt: PropertyListSerialization.ReadOptions = [], format: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?) throws -> Any
  @available(iOS 4.0, *)
  class func propertyList(with stream: InputStream, options opt: PropertyListSerialization.ReadOptions = [], format: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?) throws -> Any
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(_ plist: Any, format: PropertyListSerialization.PropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>?) -> Data?
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use propertyListWithData:options:format:error: instead.")
  class func propertyListFromData(_ data: Data, mutabilityOption opt: PropertyListSerialization.MutabilityOptions = [], format: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?, errorDescription errorString: UnsafeMutablePointer<NSString?>?) -> Any?
}
