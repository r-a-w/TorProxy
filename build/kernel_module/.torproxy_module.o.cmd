cmd_/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.o :=  gcc-4.8 -Wp,-MD,/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/.torproxy_module.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I/usr/src/linux-headers-3.16.0-4-common/arch/x86/include -Iarch/x86/include/generated  -I/usr/src/linux-headers-3.16.0-4-common/include -Iinclude -I/usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/usr/src/linux-headers-3.16.0-4-common/include/uapi -Iinclude/generated/uapi -include /usr/src/linux-headers-3.16.0-4-common/include/linux/kconfig.h   -I/home/raw/Documents/kernel_hooking/proxy/build/kernel_module -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -m64 -mno-mmx -mno-sse -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -DCONFIG_X86_X32_ABI -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fno-delete-null-pointer-checks -O2 -Wframe-larger-than=2048 -fstack-protector -Wno-unused-but-set-variable -fno-var-tracking-assignments -g -pg -mfentry -DCC_USING_FENTRY -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(torproxy_module)"  -D"KBUILD_MODNAME=KBUILD_STR(torproxy_module)" -c -o /home/raw/Documents/kernel_hooking/proxy/build/kernel_module/.tmp_torproxy_module.o /home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.c

source_/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.o := /home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.c

deps_/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.o := \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/types.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/types.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/types.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/int-ll64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/int-ll64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/bitsperlong.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/posix_types.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/stddef.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/stddef.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/posix_types_64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/posix_types.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/const.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/stat.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/stat.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/stat.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/kernel.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/sysinfo.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/linkage.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/stringify.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/typecheck.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/preempt.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/rmwcc.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/ring/buffer.h) \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/bitops.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/asm.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/x86/debugctlmsr.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/segment.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/randomize/base.h) \
    $(wildcard include/config/randomize/base/max/offset.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/ptrace.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/ptrace-abi.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/processor-flags.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/desc_defs.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/kmap_types.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/proc/fs.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/pgtable_64_types.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/sparsemem.h \
    $(wildcard include/config/sparsemem.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/spinlock_types.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/queue/rwlock.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/qrwlock_types.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/ptrace.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/debug/static/cpu/has.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
    $(wildcard include/config/matom.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bitops/sched.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/arch_hweight.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bitops/const_hweight.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bitops/le.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/byteorder.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/swab.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/swab.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/swab.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/byteorder/generic.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/printk.h \
    $(wildcard include/config/default/message/loglevel.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
    $(wildcard include/config/lto.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kern_levels.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dynamic_debug.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/threads.h \
    $(wildcard include/config/base/small.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/bug.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/ia32/emulation.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/page.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/range.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/getorder.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/processor.h \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/xen.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/vm86.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/vm86.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/math_emu.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/sigcontext.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/sigcontext.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/current.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/msr.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/msr.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/msr-index.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/ioctl.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/ioctl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/ioctl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/ioctl.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/errno.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/errno.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/errno-base.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/cpumask.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/bitmap.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/string.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/string.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/string_64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/paravirt.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/special_insns.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/personality.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/personality.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/div64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/div64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/err.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/irqflags.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/atomic.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/cmpxchg.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/cmpxchg_64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/atomic64_64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/atomic-long.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/bottom_half.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/preempt_mask.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/spinlock_types.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rwlock_types.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/spinlock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/jump_label.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/qrwlock.h \
    $(wildcard include/config/x86/oostore.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/qrwlock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rwlock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/time.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/uidgid.h \
    $(wildcard include/config/user/ns.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/highuid.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kmod.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/wait.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/wait.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/notifier.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/errno.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/errno.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/osq_lock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/rwsem.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/srcu.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu/all.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/completion.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rcutree.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/jiffies.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/timex.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/timex.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/param.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/param.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/param.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/timex.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/mmzone.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/mmzone_64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/mpspec_def.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/x86_init.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/bootparam.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/screen_info.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/screen_info.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/apm_bios.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/apm_bios.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/edd.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/edd.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/e820.h \
    $(wildcard include/config/intel/txt.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ioport.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/ist.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/ist.h \
  /usr/src/linux-headers-3.16.0-4-common/include/video/edid.h \
    $(wildcard include/config/x86.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/video/edid.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/apicdef.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/paravirt/clock.h) \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/acpi/pdc_intel.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/topology.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/mmu.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
  arch/x86/include/generated/asm/early_ioremap.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/generic/early/ioremap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/vmalloc.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rbtree.h \
  /usr/src/linux-headers-3.16.0-4-common/include/xen/xen.h \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/pvh.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/xen/interface/xen.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/xen/interface.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/xen/interface_64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/pvclock-abi.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/xen/hypervisor.h \
  /usr/src/linux-headers-3.16.0-4-common/include/xen/features.h \
  /usr/src/linux-headers-3.16.0-4-common/include/xen/interface/features.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/pvclock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/clocksource.h \
    $(wildcard include/config/arch/clocksource/data.h) \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/clksrc/of.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/clocksource.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/vsyscall.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/fixmap.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/idle.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/io_apic.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/have/kvm.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/smp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pfn.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/sysctl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/elf.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/elf.h \
    $(wildcard include/config/x86/x32/abi.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/user.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/user_64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/auxvec.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/vdso.h \
    $(wildcard include/config/x86/x32.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/auxvec.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/auxvec.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/uprobes.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/elf.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/elf-em.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/sysfs.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/idr.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kobject_ns.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kref.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/module.h \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/melan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/proc_fs.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kdev_t.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/kdev_t.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dcache.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rculist.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rculist_bl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/list_bl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/bit_spinlock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/path.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/list_lru.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/radix-tree.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pid.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/capability.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/capability.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/semaphore.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/fiemap.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/shrinker.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/migrate_mode.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/percpu-rwsem.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/fs.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/limits.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/percpu_counter.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/dqblk_xfs.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dqblk_v1.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dqblk_v2.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dqblk_qtree.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/projid.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/quota.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/nfs_fs_i.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/fcntl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/fcntl.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/fcntl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/fcntl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ip.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/skbuff.h \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/net/rx/busy/poll.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
    $(wildcard include/config/nf/tables.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kmemcheck.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/net.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/random.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/irqnr.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/irqnr.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/archrandom.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/net.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/socket.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/socket.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/socket.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/sockios.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/sockios.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/sockios.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/uio.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/uio.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/socket.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/textsearch.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/slab_def.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/reciprocal_div.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/checksum.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/x86/intel/usercopy.h) \
    $(wildcard include/config/debug/strict/user/copy/checks.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/smap.h \
    $(wildcard include/config/x86/smap.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/uaccess_64.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/checksum.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/checksum_64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/rapidio/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/klist.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pinctrl/devinfo.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pinctrl/consumer.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/seq_file.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pinctrl/pinctrl-state.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ratelimit.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/device.h \
    $(wildcard include/config/x86/dev/dma/ops.h) \
    $(wildcard include/config/intel/iommu.h) \
    $(wildcard include/config/amd/iommu.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pm_wakeup.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/mm.h \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/have/arch/soft/dirty.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/pgtable_64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/pgtable.h \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/huge_mm.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/vm_event_item.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/scatterlist.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/timerqueue.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dma-attrs.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dma-direction.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/dma-mapping.h \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/x86/dma/remap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/swiotlb.h \
    $(wildcard include/config/swiotlb.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/swiotlb.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dma-contiguous.h \
    $(wildcard include/config/cma/areas.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/dma-mapping-common.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netdev_features.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/no/hz/full.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/sched.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/sched/prio.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/cputime.h \
  arch/x86/include/generated/asm/cputime.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/cputime_jiffies.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/sem.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/sem.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ipc.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/ipc.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/ipcbuf.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/ipcbuf.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/sembuf.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/signal.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/signal.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/signal.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/signal-defs.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/siginfo.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/siginfo.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/siginfo.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/proportions.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/seccomp.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/seccomp.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/seccomp_64.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/unistd.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/unistd.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/unistd.h \
  arch/x86/include/generated/uapi/asm/unistd_64.h \
  arch/x86/include/generated/asm/unistd_64_x32.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/ia32_unistd.h \
  arch/x86/include/generated/asm/unistd_32_ia32.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/resource.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/resource.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/resource.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/resource.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/resource.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/latencytop.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/key.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/flow_keys.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/ip.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/tcp.h \
    $(wildcard include/config/tcp/md5sig.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/sock.h \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/hardirq.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/vtime.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/context_tracking_state.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/static_key.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/x86/thermal/vector.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
    $(wildcard include/config/hyperv.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/irq.h \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
    $(wildcard include/config/generic/irq/legacy/alloc/hwirq.h) \
    $(wildcard include/config/generic/irq/legacy.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/irqreturn.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/irq.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/irq_regs.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/sparse/irq.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/hw_irq.h \
    $(wildcard include/config/irq/remap.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/sections.h \
    $(wildcard include/config/debug/rodata.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/sections.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/list_nulls.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/tipc.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/net/flow/limit.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/pm_qos.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/miscdevice.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/major.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/delay.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/delay.h \
  /usr/src/linux-headers-3.16.0-4-common/include/asm-generic/delay.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/dynamic_queue_limits.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ethtool.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/if.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/hdlc/ioctl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/aio_abi.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/compat.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/user32.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/ethtool.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/if_ether.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/if_ether.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/net_namespace.h \
    $(wildcard include/config/ieee802154/6lowpan.h) \
    $(wildcard include/config/ip/sctp.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/wext/core.h) \
    $(wildcard include/config/ip/vs.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/flow.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/in6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/in6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/libc-compat.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/core.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/snmp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/snmp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/u64_stats_sync.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/unix.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/packet.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/inet_frag.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/dst_ops.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/ieee802154_6lowpan.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/sctp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/dccp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/netfilter.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter.h \
    $(wildcard include/config/nf/nat/needed.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/in.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/in.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
    $(wildcard include/config/ip/nf/target/ulog.h) \
    $(wildcard include/config/bridge/ebt/ulog.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/conntrack.h \
    $(wildcard include/config/nf/conntrack/proc/compat.h) \
    $(wildcard include/config/nf/conntrack/labels.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter/nf_conntrack_tcp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/nf_conntrack_tcp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/nftables.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/xfrm.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/xfrm.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/flowcache.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/seq_file_net.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/dsa.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/dcbnl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/dcbnl.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netprio_cgroup.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/cgroup.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/cgroupstats.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/taskstats.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/percpu-refcount.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/debug.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/neighbour.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netlink.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/scm.h \
    $(wildcard include/config/security/network.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
    $(wildcard include/config/security/yama.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/nsproxy.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netlink.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netdevice.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/if_packet.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/if_link.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/if_link.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/uaccess.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/memcontrol.h \
    $(wildcard include/config/memcg/swap.h) \
    $(wildcard include/config/inet.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/res_counter.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/aio.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/filter.h \
    $(wildcard include/config/bpf/jit.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/filter.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rculist_nulls.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/poll.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/poll.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/uapi/asm/poll.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/asm-generic/poll.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/dst.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/rtnetlink.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/rtnetlink.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/if_addr.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/neighbour.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/rtnetlink.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netlink.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/inet_connection_sock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/inet_sock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/jhash.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/unaligned/packed_struct.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/request_sock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/hash.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/inet_timewait_sock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/tcp_states.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/timewait_sock.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/tcp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter_ipv4.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter_ipv4.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/kthread.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/ip.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/route.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/inetpeer.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/ipv6.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/ipv6.h \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/ipv6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/icmpv6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/icmpv6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/udp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/udp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/if_inet6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/ndisc.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/if_arp.h \
    $(wildcard include/config/firewire/net.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/if_arp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/hash.h \
  /usr/src/linux-headers-3.16.0-4-common/arch/x86/include/asm/hash.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/in_route.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/route.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_core.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_l3proto.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack.h \
    $(wildcard include/config/netfilter/debug.h) \
    $(wildcard include/config/nf/conntrack/mark.h) \
    $(wildcard include/config/nf/conntrack/secmark.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter/nf_conntrack_common.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/nf_conntrack_common.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter/nf_conntrack_dccp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_tuple.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter/x_tables.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/x_tables.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/compat.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/nf_conntrack_tuple_common.h \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/nf_conntrack_sctp.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter/nf_conntrack_proto_gre.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/ipv6/nf_conntrack_icmpv6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/ipv4/nf_conntrack_ipv4.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/ipv6/nf_conntrack_ipv6.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_l4proto.h \
    $(wildcard include/config/nf/ct/netlink/timeout.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netns/generic.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_ecache.h \
    $(wildcard include/config/nf/conntrack/events.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_expect.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_conntrack_extend.h \
    $(wildcard include/config/nf/nat.h) \
    $(wildcard include/config/nf/conntrack/zones.h) \
    $(wildcard include/config/nf/conntrack/timestamp.h) \
    $(wildcard include/config/nf/conntrack/timeout.h) \
    $(wildcard include/config/netfilter/synproxy.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/nf_nat.h \
  /usr/src/linux-headers-3.16.0-4-common/include/net/netfilter/nf_nat.h \
    $(wildcard include/config/nf/nat/pptp.h) \
    $(wildcard include/config/ip/nf/target/masquerade.h) \
    $(wildcard include/config/ip6/nf/target/masquerade.h) \
  /usr/src/linux-headers-3.16.0-4-common/include/uapi/linux/netfilter/nf_nat.h \
  /usr/src/linux-headers-3.16.0-4-common/include/linux/netfilter/nf_conntrack_pptp.h \

/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.o: $(deps_/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.o)

$(deps_/home/raw/Documents/kernel_hooking/proxy/build/kernel_module/torproxy_module.o):
