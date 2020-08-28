
extension NSAppleEventDescriptor {
  @available(macOS 10.11, *)
  struct SendOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var noReply: NSAppleEventDescriptor.SendOptions { get }
    static var queueReply: NSAppleEventDescriptor.SendOptions { get }
    static var waitForReply: NSAppleEventDescriptor.SendOptions { get }
    static var neverInteract: NSAppleEventDescriptor.SendOptions { get }
    static var canInteract: NSAppleEventDescriptor.SendOptions { get }
    static var alwaysInteract: NSAppleEventDescriptor.SendOptions { get }
    static var canSwitchLayer: NSAppleEventDescriptor.SendOptions { get }
    static var dontRecord: NSAppleEventDescriptor.SendOptions { get }
    static var dontExecute: NSAppleEventDescriptor.SendOptions { get }
    static var dontAnnotate: NSAppleEventDescriptor.SendOptions { get }
    static var defaultOptions: NSAppleEventDescriptor.SendOptions { get }
  }
}
class NSAppleEventDescriptor : NSObject, NSCopying, NSSecureCoding {
  class func null() -> NSAppleEventDescriptor
  /*not inherited*/ init(boolean: Bool)
  /*not inherited*/ init(enumCode enumerator: OSType)
  /*not inherited*/ init(int32 signedInt: Int32)
  @available(macOS 10.11, *)
  /*not inherited*/ init(double doubleValue: Double)
  /*not inherited*/ init(typeCode: OSType)
  /*not inherited*/ init(string: String)
  @available(macOS 10.11, *)
  /*not inherited*/ init(date: Date)
  @available(macOS 10.11, *)
  /*not inherited*/ init(fileURL: URL)
  class func appleEvent(withEventClass eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID) -> NSAppleEventDescriptor
  class func list() -> NSAppleEventDescriptor
  class func record() -> NSAppleEventDescriptor
  @available(macOS 10.11, *)
  class func currentProcess() -> NSAppleEventDescriptor
  @available(macOS 10.11, *)
  /*not inherited*/ init(processIdentifier: pid_t)
  @available(macOS 10.11, *)
  /*not inherited*/ init(bundleIdentifier: String)
  @available(macOS 10.11, *)
  /*not inherited*/ init(applicationURL: URL)
  init(aeDescNoCopy aeDesc: UnsafePointer<AEDesc>)
  convenience init?(descriptorType: DescType, bytes: UnsafeRawPointer?, length byteCount: Int)
  convenience init?(descriptorType: DescType, data: Data?)
  convenience init(eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: AEReturnID, transactionID: AETransactionID)
  convenience init(listDescriptor: ())
  convenience init(recordDescriptor: ())
  var aeDesc: UnsafePointer<AEDesc>? { get }
  var descriptorType: DescType { get }
  var data: Data { get }
  var booleanValue: Bool { get }
  var enumCodeValue: OSType { get }
  var int32Value: Int32 { get }
  @available(macOS 10.11, *)
  var doubleValue: Double { get }
  var typeCodeValue: OSType { get }
  var stringValue: String? { get }
  @available(macOS 10.11, *)
  var dateValue: Date? { get }
  @available(macOS 10.11, *)
  var fileURLValue: URL? { get }
  var eventClass: AEEventClass { get }
  var eventID: AEEventID { get }
  var returnID: AEReturnID { get }
  var transactionID: AETransactionID { get }
  func setParam(_ descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func paramDescriptor(forKeyword keyword: AEKeyword) -> NSAppleEventDescriptor?
  func removeParamDescriptor(withKeyword keyword: AEKeyword)
  func setAttribute(_ descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func attributeDescriptor(forKeyword keyword: AEKeyword) -> NSAppleEventDescriptor?
  @available(macOS 10.11, *)
  func sendEvent(options sendOptions: NSAppleEventDescriptor.SendOptions = [], timeout timeoutInSeconds: TimeInterval) throws -> NSAppleEventDescriptor
  @available(macOS 10.11, *)
  var isRecordDescriptor: Bool { get }
  var numberOfItems: Int { get }
  func insert(_ descriptor: NSAppleEventDescriptor, at index: Int)
  func atIndex(_ index: Int) -> NSAppleEventDescriptor?
  func remove(at index: Int)
  func setDescriptor(_ descriptor: NSAppleEventDescriptor, forKeyword keyword: AEKeyword)
  func forKeyword(_ keyword: AEKeyword) -> NSAppleEventDescriptor?
  func remove(withKeyword keyword: AEKeyword)
  func keywordForDescriptor(at index: Int) -> AEKeyword
  func coerce(toDescriptorType descriptorType: DescType) -> NSAppleEventDescriptor?
}
