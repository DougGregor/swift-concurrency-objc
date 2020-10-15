
var _PyOS_opterr: Int32
var _PyOS_optind: Int32
var _PyOS_optarg: UnsafeMutablePointer<CChar>!
func _PyOS_ResetGetOpt()
func _PyOS_GetOpt(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ optstring: UnsafeMutablePointer<CChar>!) -> Int32
