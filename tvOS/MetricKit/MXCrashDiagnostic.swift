
@available(tvOS 14.0, *)
class MXCrashDiagnostic : MXDiagnostic {
  var callStackTree: MXCallStackTree { get }
  var terminationReason: String? { get }
  var virtualMemoryRegionInfo: String? { get }
  var exceptionType: NSNumber? { get }
  var exceptionCode: NSNumber? { get }
  var signal: NSNumber? { get }
}
