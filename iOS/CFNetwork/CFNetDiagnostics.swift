
class CFNetDiagnostic : _CFObject {
}
@available(iOS, introduced: 2.0, deprecated: 11.0)
enum CFNetDiagnosticStatusValues : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case noErr
  case err
  case connectionUp
  case connectionIndeterminate
  case connectionDown
}
@available(iOS, introduced: 2.0, deprecated: 11.0)
typealias CFNetDiagnosticStatus = CFIndex
@available(iOS, introduced: 2.0, deprecated: 11.0)
func CFNetDiagnosticCreateWithStreams(_ alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
@available(iOS, introduced: 2.0, deprecated: 11.0)
func CFNetDiagnosticCreateWithURL(_ alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
@available(iOS, introduced: 2.0, deprecated: 11.0)
func CFNetDiagnosticSetName(_ details: CFNetDiagnostic, _ name: CFString)
@available(iOS, introduced: 2.0, deprecated: 11.0)
func CFNetDiagnosticDiagnoseProblemInteractively(_ details: CFNetDiagnostic) -> CFNetDiagnosticStatus
@available(iOS, introduced: 2.0, deprecated: 11.0)
func CFNetDiagnosticCopyNetworkStatusPassively(_ details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>?) -> CFNetDiagnosticStatus
