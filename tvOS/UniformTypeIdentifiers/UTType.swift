
@available(tvOS 14.0, *)
class UTTypeReference : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 14.0, *)
  convenience init?(_ identifier: String)
  @available(tvOS 14.0, *)
  convenience init?(filenameExtension: String)
  @available(tvOS 14.0, *)
  convenience init?(filenameExtension: String, conformingTo supertype: UTType)
  @available(tvOS 14.0, *)
  convenience init?(mimeType: String)
  @available(tvOS 14.0, *)
  convenience init?(mimeType: String, conformingTo supertype: UTType)
  @available(tvOS 14.0, *)
  var identifier: String { get }
  @available(tvOS 14.0, *)
  var preferredFilenameExtension: String? { get }
  @available(tvOS 14.0, *)
  var preferredMIMEType: String? { get }
  @available(tvOS 14.0, *)
  var localizedDescription: String? { get }
  @available(tvOS 14.0, *)
  var version: NSNumber? { get }
  @available(tvOS 14.0, *)
  var referenceURL: URL? { get }
  @available(tvOS 14.0, *)
  var isDynamic: Bool { get }
  @available(tvOS 14.0, *)
  var isDeclared: Bool { get }
  @available(tvOS 14.0, *)
  var isPublic: Bool { get }
}
@available(tvOS 14.0, *)
extension UTTypeReference {
  @available(tvOS 14.0, *)
  func conforms(to type: UTType) -> Bool
  @available(tvOS 14.0, *)
  func isSupertype(of type: UTType) -> Bool
  @available(tvOS 14.0, *)
  func isSubtype(of type: UTType) -> Bool
  @available(tvOS 14.0, *)
  var supertypes: Set<UTType> { get }
}
@available(tvOS 14.0, *)
extension UTTypeReference {
  @available(tvOS 14.0, *)
  convenience init?(tag: String, tagClass: String, conformingTo supertype: UTType?)
  @available(tvOS 14.0, *)
  class func types(tag: String, tagClass: String, conformingTo supertype: UTType?) -> [UTType]
  @available(tvOS 14.0, *)
  var tags: [String : [String]] { get }
}
@available(tvOS 14.0, *)
extension UTTypeReference {
  @available(tvOS 14.0, *)
  /*not inherited*/ init(exportedAs identifier: String)
  @available(tvOS 14.0, *)
  /*not inherited*/ init(exportedAs identifier: String, conformingTo parentType: UTType)
  @available(tvOS 14.0, *)
  /*not inherited*/ init(importedAs identifier: String)
  @available(tvOS 14.0, *)
  /*not inherited*/ init(importedAs identifier: String, conformingTo parentType: UTType)
}
