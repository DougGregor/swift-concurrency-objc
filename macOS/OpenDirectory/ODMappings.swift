
@available(macOS 10.9, *)
class ODMappings : NSObject {
  @available(macOS 10.9, *)
  var comment: String!
  @available(macOS 10.9, *)
  var templateName: String!
  @available(macOS 10.9, *)
  var identifier: String!
  @available(macOS 10.9, *)
  var recordTypes: [Any]! { get }
  @available(macOS 10.9, *)
  var function: String!
  @available(macOS 10.9, *)
  var functionAttributes: [Any]!
  @available(macOS 10.9, *)
  func recordMap(forStandardRecordType stdType: String!) -> ODRecordMap!
  @available(macOS 10.9, *)
  func setRecordMap(_ map: ODRecordMap!, forStandardRecordType stdType: String!)
}
