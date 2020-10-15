
@available(macOS 10.15, *)
func hv_capability(_ capability: hv_capability_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.10, *)
func hv_vm_create(_ flags: hv_vm_options_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vm_destroy() -> hv_return_t
@available(macOS 10.15, *)
func hv_vm_space_create(_ asid: UnsafeMutablePointer<hv_vm_space_t>) -> hv_return_t
@available(macOS 10.15, *)
func hv_vm_space_destroy(_ asid: hv_vm_space_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vm_map(_ uva: hv_uvaddr_t, _ gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vm_unmap(_ gpa: hv_gpaddr_t, _ size: Int) -> hv_return_t
@available(macOS 10.10, *)
func hv_vm_protect(_ gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t
@available(macOS 10.15, *)
func hv_vm_map_space(_ asid: hv_vm_space_t, _ uva: hv_uvaddr_t, _ gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t
@available(macOS 10.15, *)
func hv_vm_unmap_space(_ asid: hv_vm_space_t, _ gpa: hv_gpaddr_t, _ size: Int) -> hv_return_t
@available(macOS 10.15, *)
func hv_vm_protect_space(_ asid: hv_vm_space_t, _ gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vm_sync_tsc(_ tsc: UInt64) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_create(_ vcpu: UnsafeMutablePointer<hv_vcpuid_t>, _ flags: hv_vcpu_options_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_destroy(_ vcpu: hv_vcpuid_t) -> hv_return_t
@available(macOS 10.15, *)
func hv_vcpu_set_space(_ vcpu: hv_vcpuid_t, _ asid: hv_vm_space_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_read_register(_ vcpu: hv_vcpuid_t, _ reg: hv_x86_reg_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_write_register(_ vcpu: hv_vcpuid_t, _ reg: hv_x86_reg_t, _ value: UInt64) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_read_fpstate(_ vcpu: hv_vcpuid_t, _ buffer: UnsafeMutableRawPointer, _ size: Int) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_write_fpstate(_ vcpu: hv_vcpuid_t, _ buffer: UnsafeMutableRawPointer, _ size: Int) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_enable_native_msr(_ vcpu: hv_vcpuid_t, _ msr: UInt32, _ enable: Bool) -> hv_return_t
@available(macOS 11.0, *)
func hv_vcpu_enable_managed_msr(_ vcpu: hv_vcpuid_t, _ msr: UInt32, _ enable: Bool) -> hv_return_t
@available(macOS 11.0, *)
func hv_vcpu_set_msr_access(_ vcpu: hv_vcpuid_t, _ msr: UInt32, _ flags: hv_msr_flags_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_read_msr(_ vcpu: hv_vcpuid_t, _ msr: UInt32, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_write_msr(_ vcpu: hv_vcpuid_t, _ msr: UInt32, _ value: UInt64) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_flush(_ vcpu: hv_vcpuid_t) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_invalidate_tlb(_ vcpu: hv_vcpuid_t) -> hv_return_t
func hv_vcpu_run(_ vcpu: hv_vcpuid_t) -> hv_return_t
var HV_DEADLINE_FOREVER: UInt { get }
@available(macOS 10.15, *)
func hv_vcpu_run_until(_ vcpu: hv_vcpuid_t, _ deadline: UInt64) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_interrupt(_ vcpus: UnsafeMutablePointer<hv_vcpuid_t>, _ vcpu_count: UInt32) -> hv_return_t
@available(macOS 10.10, *)
func hv_vcpu_get_exec_time(_ vcpu: hv_vcpuid_t, _ time: UnsafeMutablePointer<UInt64>) -> hv_return_t
