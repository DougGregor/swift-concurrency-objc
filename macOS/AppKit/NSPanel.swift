
class NSPanel : NSWindow {
  var becomesKeyOnlyIfNeeded: Bool
}
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSAlert instead")
func NSReleaseAlertPanel(_ panel: Any!)
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSAlertFirstButtonReturn with an NSAlert presentation instead")
var NSAlertDefaultReturn: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSAlertFirstButtonReturn and other NSModalResponses with an NSAlert presentation instead")
var NSAlertAlternateReturn: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSAlertFirstButtonReturn and other NSModalResponses with an NSAlert presentation instead")
var NSAlertOtherReturn: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSAlertFirstButtonReturn and other NSModalResponses with an NSAlert presentation instead")
var NSAlertErrorReturn: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, renamed: "NSApplication.ModalResponse.OK")
var NSOKButton: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, renamed: "NSApplication.ModalResponse.cancel")
var NSCancelButton: Int { get }
