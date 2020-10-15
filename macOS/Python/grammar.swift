
struct label {
  var lb_type: Int32
  var lb_str: UnsafeMutablePointer<CChar>!
  init()
  init(lb_type: Int32, lb_str: UnsafeMutablePointer<CChar>!)
}
var EMPTY: Int32 { get }
struct labellist {
  var ll_nlabels: Int32
  var ll_label: UnsafeMutablePointer<label>!
  init()
  init(ll_nlabels: Int32, ll_label: UnsafeMutablePointer<label>!)
}
struct arc {
  var a_lbl: Int16
  var a_arrow: Int16
  init()
  init(a_lbl: Int16, a_arrow: Int16)
}
struct state {
  var s_narcs: Int32
  var s_arc: UnsafeMutablePointer<arc>!
  var s_lower: Int32
  var s_upper: Int32
  var s_accel: UnsafeMutablePointer<Int32>!
  var s_accept: Int32
  init()
  init(s_narcs: Int32, s_arc: UnsafeMutablePointer<arc>!, s_lower: Int32, s_upper: Int32, s_accel: UnsafeMutablePointer<Int32>!, s_accept: Int32)
}
struct dfa {
  var d_type: Int32
  var d_name: UnsafeMutablePointer<CChar>!
  var d_initial: Int32
  var d_nstates: Int32
  var d_state: UnsafeMutablePointer<state>!
  var d_first: bitset!
  init()
  init(d_type: Int32, d_name: UnsafeMutablePointer<CChar>!, d_initial: Int32, d_nstates: Int32, d_state: UnsafeMutablePointer<state>!, d_first: bitset!)
}
struct grammar {
  var g_ndfas: Int32
  var g_dfa: UnsafeMutablePointer<dfa>!
  var g_ll: labellist
  var g_start: Int32
  var g_accel: Int32
  init()
  init(g_ndfas: Int32, g_dfa: UnsafeMutablePointer<dfa>!, g_ll: labellist, g_start: Int32, g_accel: Int32)
}
func newgrammar(_ start: Int32) -> UnsafeMutablePointer<grammar>!
func freegrammar(_ g: UnsafeMutablePointer<grammar>!)
func adddfa(_ g: UnsafeMutablePointer<grammar>!, _ type: Int32, _ name: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<dfa>!
func addstate(_ d: UnsafeMutablePointer<dfa>!) -> Int32
func addarc(_ d: UnsafeMutablePointer<dfa>!, _ from: Int32, _ to: Int32, _ lbl: Int32)
func PyGrammar_FindDFA(_ g: UnsafeMutablePointer<grammar>!, _ type: Int32) -> UnsafeMutablePointer<dfa>!
func addlabel(_ ll: UnsafeMutablePointer<labellist>!, _ type: Int32, _ str: UnsafeMutablePointer<CChar>!) -> Int32
func findlabel(_ ll: UnsafeMutablePointer<labellist>!, _ type: Int32, _ str: UnsafeMutablePointer<CChar>!) -> Int32
func PyGrammar_LabelRepr(_ lb: UnsafeMutablePointer<label>!) -> UnsafeMutablePointer<CChar>!
func translatelabels(_ g: UnsafeMutablePointer<grammar>!)
func addfirstsets(_ g: UnsafeMutablePointer<grammar>!)
func PyGrammar_AddAccelerators(_ g: UnsafeMutablePointer<grammar>!)
func PyGrammar_RemoveAccelerators(_: UnsafeMutablePointer<grammar>!)
func printgrammar(_ g: UnsafeMutablePointer<grammar>!, _ fp: UnsafeMutablePointer<FILE>!)
func printnonterminals(_ g: UnsafeMutablePointer<grammar>!, _ fp: UnsafeMutablePointer<FILE>!)
