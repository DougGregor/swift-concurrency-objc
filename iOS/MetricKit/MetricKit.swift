
@available(iOS 13.0, macOS 10.15, *)
@available(macOS, unavailable)
func mxSignpost(_ type: OSSignpostType, dso: UnsafeRawPointer = #dsohandle, log: OSLog, name: StaticString, signpostID: OSSignpostID = .exclusive, _ format: StaticString = "%{public, signpost:metrics}@", _ arguments: [CVarArg] = [Unmanaged<NSObject>.fromOpaque(_MXSignpostMetricsSnapshot()).takeUnretainedValue()])

