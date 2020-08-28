
@available(macOS 11.0, *)
class UTTypeReference : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 11.0, *)
  convenience init?(_ identifier: String)
  @available(macOS 11.0, *)
  convenience init?(filenameExtension: String)
  @available(macOS 11.0, *)
  convenience init?(filenameExtension: String, conformingTo supertype: UTType)
  @available(macOS 11.0, *)
  convenience init?(mimeType: String)
  @available(macOS 11.0, *)
  convenience init?(mimeType: String, conformingTo supertype: UTType)
  @available(macOS 11.0, *)
  var identifier: String { get }
  @available(macOS 11.0, *)
  var preferredFilenameExtension: String? { get }
  @available(macOS 11.0, *)
  var preferredMIMEType: String? { get }
  @available(macOS 11.0, *)
  var localizedDescription: String? { get }
  @available(macOS 11.0, *)
  var version: NSNumber? { get }
  @available(macOS 11.0, *)
  var referenceURL: URL? { get }
  @available(macOS 11.0, *)
  var isDynamic: Bool { get }
  @available(macOS 11.0, *)
  var isDeclared: Bool { get }
  @available(macOS 11.0, *)
  var isPublic: Bool { get }
}
@available(macOS 11.0, *)
extension UTTypeReference {
  @available(macOS 11.0, *)
  func conforms(to type: UTType) -> Bool
  @available(macOS 11.0, *)
  func isSupertype(of type: UTType) -> Bool
  @available(macOS 11.0, *)
  func isSubtype(of type: UTType) -> Bool
  @available(macOS 11.0, *)
  var supertypes: Set<UTType> { get }
}
@available(macOS 11.0, *)
extension UTTypeReference {
  @available(macOS 11.0, *)
  convenience init?(tag: String, tagClass: String, conformingTo supertype: UTType?)
  @available(macOS 11.0, *)
  class func types(tag: String, tagClass: String, conformingTo supertype: UTType?) -> [UTType]
  @available(macOS 11.0, *)
  var tags: [String : [String]] { get }
}
@available(macOS 11.0, *)
extension UTTypeReference {
  @available(macOS 11.0, *)
  /*not inherited*/ init(exportedAs identifier: String)
  @available(macOS 11.0, *)
  /*not inherited*/ init(exportedAs identifier: String, conformingTo parentType: UTType)
  @available(macOS 11.0, *)
  /*not inherited*/ init(importedAs identifier: String)
  @available(macOS 11.0, *)
  /*not inherited*/ init(importedAs identifier: String, conformingTo parentType: UTType)
}
