
@available(macOS 10.4, *)
class CIPlugIn : NSObject {
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  class func loadAllPlugIns()
  class func loadNonExecutablePlugIns()
  @available(macOS, introduced: 10.7, deprecated: 10.15)
  class func load(_ url: URL!, allowExecutableCode: Bool)
  @available(macOS 10.15, *)
  class func loadNonExecutablePlugIn(_ url: URL!)
}
