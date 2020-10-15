
typealias bitset = UnsafeMutablePointer<CChar>
func newbitset(_ nbits: Int32) -> bitset!
func delbitset(_ bs: bitset!)
func addbit(_ bs: bitset!, _ ibit: Int32) -> Int32
func samebitset(_ bs1: bitset!, _ bs2: bitset!, _ nbits: Int32) -> Int32
func mergebitset(_ bs1: bitset!, _ bs2: bitset!, _ nbits: Int32)
