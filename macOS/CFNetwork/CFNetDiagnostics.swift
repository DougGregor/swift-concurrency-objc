
class CFNetDiagnostic : _CFObject {
}
@available(macOS, introduced: 10.4, deprecated: 10.13)
enum CFNetDiagnosticStatusValues : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case noErr
  case err
  case connectionUp
  case connectionIndeterminate
  case connectionDown
}
@available(macOS, introduced: 10.4, deprecated: 10.13)
typealias CFNetDiagnosticStatus = CFIndex
@available(macOS, introduced: 10.4, deprecated: 10.13)
func CFNetDiagnosticCreateWithStreams(_ alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
@available(macOS, introduced: 10.4, deprecated: 10.13)
func CFNetDiagnosticCreateWithURL(_ alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
@available(macOS, introduced: 10.4, deprecated: 10.13)
func CFNetDiagnosticSetName(_ details: CFNetDiagnostic, _ name: CFString)
@available(macOS, introduced: 10.4, deprecated: 10.13)
func CFNetDiagnosticDiagnoseProblemInteractively(_ details: CFNetDiagnostic) -> CFNetDiagnosticStatus
@available(macOS, introduced: 10.4, deprecated: 10.13)
func CFNetDiagnosticCopyNetworkStatusPassively(_ details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>?) -> CFNetDiagnosticStatus
