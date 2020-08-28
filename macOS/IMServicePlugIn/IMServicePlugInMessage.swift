
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInMessage : NSObject, NSCoding, NSCopying {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  class func servicePlugInMessage(withContent content: NSAttributedString!) -> Any!
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  init!(content: NSAttributedString!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  class func servicePlugInMessage(withContent content: NSAttributedString!, date: Date!) -> Any!
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  init!(content: NSAttributedString!, date: Date!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var guid: String! { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @NSCopying var content: NSAttributedString!
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var date: Date!
}
