extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef unsigned short umode_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct task_struct;
struct task_struct;
struct task_struct;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct task_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module;
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
struct pi_protocol;
struct pi_adapter {
   struct pi_protocol *proto ;
   int port ;
   int mode ;
   int delay ;
   int devtype ;
   char *device ;
   int unit ;
   int saved_r0 ;
   int saved_r2 ;
   int reserved ;
   unsigned long private ;
   wait_queue_head_t parq ;
   void *pardev ;
   char *parname ;
   int claimed ;
   void (*claim_cont)(void) ;
};
typedef struct pi_adapter PIA;
struct pi_protocol {
   char name[8] ;
   int index ;
   int max_mode ;
   int epp_first ;
   int default_delay ;
   int max_units ;
   void (*write_regr)(PIA * , int , int , int ) ;
   int (*read_regr)(PIA * , int , int ) ;
   void (*write_block)(PIA * , char * , int ) ;
   void (*read_block)(PIA * , char * , int ) ;
   void (*connect)(PIA * ) ;
   void (*disconnect)(PIA * ) ;
   int (*test_port)(PIA * ) ;
   int (*probe_unit)(PIA * ) ;
   int (*test_proto)(PIA * , char * , int ) ;
   void (*log_adapter)(PIA * , char * , int ) ;
   int (*init_proto)(PIA * ) ;
   void (*release_proto)(PIA * ) ;
   struct module *owner ;
};
typedef struct pi_protocol PIP;
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
__inline static void outb(unsigned char value , int port ) __attribute__((__no_instrument_function__)) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("out"
                       "b"
                       " %"
                       "b"
                       "0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned char inb(int port )
{ unsigned char value ;
  {
  __asm__ volatile ("in"
                       "b"
                       " %w1, %"
                       "b"
                       "0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outw(unsigned short value , int port ) __attribute__((__no_instrument_function__)) ;
__inline static void outw(unsigned short value , int port )
{
  {
  __asm__ volatile ("out"
                       "w"
                       " %"
                       "w"
                       "0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned short inw(int port ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned short inw(int port )
{ unsigned short value ;
  {
  __asm__ volatile ("in"
                       "w"
                       " %w1, %"
                       "w"
                       "0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outl(unsigned int value , int port ) __attribute__((__no_instrument_function__)) ;
__inline static void outl(unsigned int value , int port )
{
  {
  __asm__ volatile ("out"
                       "l"
                       " %"
                       ""
                       "0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned int inl(int port ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int inl(int port )
{ unsigned int value ;
  {
  __asm__ volatile ("in"
                       "l"
                       " %w1, %"
                       ""
                       "0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern struct kernel_param_ops param_ops_int ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern void __udelay(unsigned long usecs ) ;
extern int paride_register(PIP * ) ;
extern void paride_unregister(PIP * ) ;
static int epatc8 ;
static char const __param_str_epatc8[7] = { (char const )'e', (char const )'p', (char const )'a', (char const )'t',
        (char const )'c', (char const )'8', (char const )'\000'};
static struct kernel_param const __param_epatc8 __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_epatc8, (struct kernel_param_ops const *)(& param_ops_int), (u16 )0,
    (s16 )0, {(void *)(& epatc8)}};
static char const __mod_epatc8type37[20] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'e', (char const )'p', (char const )'a',
        (char const )'t', (char const )'c', (char const )'8', (char const )':',
        (char const )'i', (char const )'n', (char const )'t', (char const )'\000'};
static char const __mod_epatc839[102] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'e', (char const )'p', (char const )'a',
        (char const )'t', (char const )'c', (char const )'8', (char const )':',
        (char const )'s', (char const )'u', (char const )'p', (char const )'p',
        (char const )'o', (char const )'r', (char const )'t', (char const )' ',
        (char const )'f', (char const )'o', (char const )'r', (char const )' ',
        (char const )'t', (char const )'h', (char const )'e', (char const )' ',
        (char const )'S', (char const )'h', (char const )'u', (char const )'t',
        (char const )'t', (char const )'l', (char const )'e', (char const )' ',
        (char const )'E', (char const )'P', (char const )'1', (char const )'2',
        (char const )'8', (char const )'4', (char const )' ', (char const )'c',
        (char const )'h', (char const )'i', (char const )'p', (char const )',',
        (char const )' ', (char const )'u', (char const )'s', (char const )'e',
        (char const )'d', (char const )' ', (char const )'i', (char const )'n',
        (char const )' ', (char const )'a', (char const )'n', (char const )'y',
        (char const )' ', (char const )'r', (char const )'e', (char const )'c',
        (char const )'e', (char const )'n', (char const )'t', (char const )' ',
        (char const )'I', (char const )'m', (char const )'a', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )' ',
        (char const )'S', (char const )'u', (char const )'p', (char const )'e',
        (char const )'r', (char const )'D', (char const )'i', (char const )'s',
        (char const )'k', (char const )' ', (char const )'(', (char const )'L',
        (char const )'S', (char const )'-', (char const )'1', (char const )'2',
        (char const )'0', (char const )')', (char const )' ', (char const )'d',
        (char const )'r', (char const )'i', (char const )'v', (char const )'e',
        (char const )'.', (char const )'\000'};
static int cont_map[3] = { 24, 16, 0};
static void epat_write_regr(PIA *pi , int cont , int regr , int val )
{ int r ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned char __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned char __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned char __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned char __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  {
  __cil_tmp6 = cont * 4UL;
  __cil_tmp7 = (unsigned long )(cont_map) + __cil_tmp6;
  __cil_tmp8 = *((int *)__cil_tmp7);
  r = regr + __cil_tmp8;
  {
  __cil_tmp9 = (unsigned long )pi;
  __cil_tmp10 = __cil_tmp9 + 12;
  if (*((int *)__cil_tmp10) == 0) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp10) == 1) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp10) == 2) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp10) == 3) {
    goto case_3;
  } else
  if (*((int *)__cil_tmp10) == 4) {
    goto case_3;
  } else
  if (*((int *)__cil_tmp10) == 5) {
    goto case_3;
  } else
  if (0) {
    case_0:
    case_1:
    case_2:
    {
    __cil_tmp11 = 96 + r;
    __cil_tmp12 = (unsigned char )__cil_tmp11;
    __cil_tmp13 = (unsigned long )pi;
    __cil_tmp14 = __cil_tmp13 + 8;
    __cil_tmp15 = *((int *)__cil_tmp14);
    outb(__cil_tmp12, __cil_tmp15);
    }
    {
    __cil_tmp16 = (unsigned long )pi;
    __cil_tmp17 = __cil_tmp16 + 16;
    if (*((int *)__cil_tmp17)) {
      {
      __cil_tmp18 = (unsigned long )pi;
      __cil_tmp19 = __cil_tmp18 + 16;
      __cil_tmp20 = *((int *)__cil_tmp19);
      __cil_tmp21 = (unsigned long )__cil_tmp20;
      __udelay(__cil_tmp21);
      }
    } else {
    }
    }
    {
    __cil_tmp22 = (unsigned long )pi;
    __cil_tmp23 = __cil_tmp22 + 8;
    __cil_tmp24 = *((int *)__cil_tmp23);
    __cil_tmp25 = __cil_tmp24 + 2;
    outb((unsigned char)1, __cil_tmp25);
    }
    {
    __cil_tmp26 = (unsigned long )pi;
    __cil_tmp27 = __cil_tmp26 + 16;
    if (*((int *)__cil_tmp27)) {
      {
      __cil_tmp28 = (unsigned long )pi;
      __cil_tmp29 = __cil_tmp28 + 16;
      __cil_tmp30 = *((int *)__cil_tmp29);
      __cil_tmp31 = (unsigned long )__cil_tmp30;
      __udelay(__cil_tmp31);
      }
    } else {
    }
    }
    {
    __cil_tmp32 = (unsigned char )val;
    __cil_tmp33 = (unsigned long )pi;
    __cil_tmp34 = __cil_tmp33 + 8;
    __cil_tmp35 = *((int *)__cil_tmp34);
    outb(__cil_tmp32, __cil_tmp35);
    }
    {
    __cil_tmp36 = (unsigned long )pi;
    __cil_tmp37 = __cil_tmp36 + 16;
    if (*((int *)__cil_tmp37)) {
      {
      __cil_tmp38 = (unsigned long )pi;
      __cil_tmp39 = __cil_tmp38 + 16;
      __cil_tmp40 = *((int *)__cil_tmp39);
      __cil_tmp41 = (unsigned long )__cil_tmp40;
      __udelay(__cil_tmp41);
      }
    } else {
    }
    }
    {
    __cil_tmp42 = (unsigned long )pi;
    __cil_tmp43 = __cil_tmp42 + 8;
    __cil_tmp44 = *((int *)__cil_tmp43);
    __cil_tmp45 = __cil_tmp44 + 2;
    outb((unsigned char)4, __cil_tmp45);
    }
    {
    __cil_tmp46 = (unsigned long )pi;
    __cil_tmp47 = __cil_tmp46 + 16;
    if (*((int *)__cil_tmp47)) {
      {
      __cil_tmp48 = (unsigned long )pi;
      __cil_tmp49 = __cil_tmp48 + 16;
      __cil_tmp50 = *((int *)__cil_tmp49);
      __cil_tmp51 = (unsigned long )__cil_tmp50;
      __udelay(__cil_tmp51);
      }
    } else {
    }
    }
    goto switch_break;
    case_3:
    case_4:
    case_5:
    {
    __cil_tmp52 = 64 + r;
    __cil_tmp53 = (unsigned char )__cil_tmp52;
    __cil_tmp54 = (unsigned long )pi;
    __cil_tmp55 = __cil_tmp54 + 8;
    __cil_tmp56 = *((int *)__cil_tmp55);
    __cil_tmp57 = __cil_tmp56 + 3;
    outb(__cil_tmp53, __cil_tmp57);
    }
    {
    __cil_tmp58 = (unsigned long )pi;
    __cil_tmp59 = __cil_tmp58 + 16;
    if (*((int *)__cil_tmp59)) {
      {
      __cil_tmp60 = (unsigned long )pi;
      __cil_tmp61 = __cil_tmp60 + 16;
      __cil_tmp62 = *((int *)__cil_tmp61);
      __cil_tmp63 = (unsigned long )__cil_tmp62;
      __udelay(__cil_tmp63);
      }
    } else {
    }
    }
    {
    __cil_tmp64 = (unsigned char )val;
    __cil_tmp65 = (unsigned long )pi;
    __cil_tmp66 = __cil_tmp65 + 8;
    __cil_tmp67 = *((int *)__cil_tmp66);
    __cil_tmp68 = __cil_tmp67 + 4;
    outb(__cil_tmp64, __cil_tmp68);
    }
    {
    __cil_tmp69 = (unsigned long )pi;
    __cil_tmp70 = __cil_tmp69 + 16;
    if (*((int *)__cil_tmp70)) {
      {
      __cil_tmp71 = (unsigned long )pi;
      __cil_tmp72 = __cil_tmp71 + 16;
      __cil_tmp73 = *((int *)__cil_tmp72);
      __cil_tmp74 = (unsigned long )__cil_tmp73;
      __udelay(__cil_tmp74);
      }
    } else {
    }
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  return;
}
}
static int epat_read_regr(PIA *pi , int cont , int regr )
{ int a ;
  int b ;
  int r ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  int __cil_tmp77 ;
  int __cil_tmp78 ;
  int __cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  int __cil_tmp83 ;
  unsigned char __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  int __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  int __cil_tmp106 ;
  int __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  int __cil_tmp122 ;
  int __cil_tmp123 ;
  int __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  int __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  int __cil_tmp133 ;
  int __cil_tmp134 ;
  int __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  int __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  int __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  int __cil_tmp145 ;
  int __cil_tmp146 ;
  int __cil_tmp147 ;
  int __cil_tmp148 ;
  int __cil_tmp149 ;
  unsigned char __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  int __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  int __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  int __cil_tmp162 ;
  int __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  int __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  int __cil_tmp172 ;
  int __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  int __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  int __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  int __cil_tmp188 ;
  int __cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  int __cil_tmp192 ;
  int __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  int __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned char __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  unsigned long __cil_tmp202 ;
  int __cil_tmp203 ;
  int __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  int __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  int __cil_tmp213 ;
  int __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  int __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  unsigned long __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  int __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  int __cil_tmp229 ;
  int __cil_tmp230 ;
  int __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  int __cil_tmp234 ;
  int __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  unsigned long __cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  int __cil_tmp240 ;
  unsigned long __cil_tmp241 ;
  {
  __cil_tmp13 = cont * 4UL;
  __cil_tmp14 = (unsigned long )(cont_map) + __cil_tmp13;
  __cil_tmp15 = *((int *)__cil_tmp14);
  r = regr + __cil_tmp15;
  {
  __cil_tmp16 = (unsigned long )pi;
  __cil_tmp17 = __cil_tmp16 + 12;
  if (*((int *)__cil_tmp17) == 0) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp17) == 1) {
    goto case_1;
  } else
  if (*((int *)__cil_tmp17) == 2) {
    goto case_2;
  } else
  if (*((int *)__cil_tmp17) == 3) {
    goto case_3;
  } else
  if (*((int *)__cil_tmp17) == 4) {
    goto case_3;
  } else
  if (*((int *)__cil_tmp17) == 5) {
    goto case_3;
  } else
  if (0) {
    case_0:
    {
    __cil_tmp18 = (unsigned char )r;
    __cil_tmp19 = (unsigned long )pi;
    __cil_tmp20 = __cil_tmp19 + 8;
    __cil_tmp21 = *((int *)__cil_tmp20);
    outb(__cil_tmp18, __cil_tmp21);
    }
    {
    __cil_tmp22 = (unsigned long )pi;
    __cil_tmp23 = __cil_tmp22 + 16;
    if (*((int *)__cil_tmp23)) {
      {
      __cil_tmp24 = (unsigned long )pi;
      __cil_tmp25 = __cil_tmp24 + 16;
      __cil_tmp26 = *((int *)__cil_tmp25);
      __cil_tmp27 = (unsigned long )__cil_tmp26;
      __udelay(__cil_tmp27);
      }
    } else {
    }
    }
    {
    __cil_tmp28 = (unsigned long )pi;
    __cil_tmp29 = __cil_tmp28 + 8;
    __cil_tmp30 = *((int *)__cil_tmp29);
    __cil_tmp31 = __cil_tmp30 + 2;
    outb((unsigned char)1, __cil_tmp31);
    }
    {
    __cil_tmp32 = (unsigned long )pi;
    __cil_tmp33 = __cil_tmp32 + 16;
    if (*((int *)__cil_tmp33)) {
      {
      __cil_tmp34 = (unsigned long )pi;
      __cil_tmp35 = __cil_tmp34 + 16;
      __cil_tmp36 = *((int *)__cil_tmp35);
      __cil_tmp37 = (unsigned long )__cil_tmp36;
      __udelay(__cil_tmp37);
      }
    } else {
    }
    }
    {
    __cil_tmp38 = (unsigned long )pi;
    __cil_tmp39 = __cil_tmp38 + 8;
    __cil_tmp40 = *((int *)__cil_tmp39);
    __cil_tmp41 = __cil_tmp40 + 2;
    outb((unsigned char)3, __cil_tmp41);
    }
    {
    __cil_tmp42 = (unsigned long )pi;
    __cil_tmp43 = __cil_tmp42 + 16;
    if (*((int *)__cil_tmp43)) {
      {
      __cil_tmp44 = (unsigned long )pi;
      __cil_tmp45 = __cil_tmp44 + 16;
      __cil_tmp46 = *((int *)__cil_tmp45);
      __cil_tmp47 = (unsigned long )__cil_tmp46;
      __udelay(__cil_tmp47);
      }
    } else {
    }
    }
    {
    __cil_tmp48 = (unsigned long )pi;
    __cil_tmp49 = __cil_tmp48 + 16;
    if (*((int *)__cil_tmp49)) {
      {
      __cil_tmp50 = (unsigned long )pi;
      __cil_tmp51 = __cil_tmp50 + 16;
      __cil_tmp52 = *((int *)__cil_tmp51);
      __cil_tmp53 = (unsigned long )__cil_tmp52;
      __udelay(__cil_tmp53);
      }
    } else {
    }
    }
    {
    __cil_tmp54 = (unsigned long )pi;
    __cil_tmp55 = __cil_tmp54 + 8;
    __cil_tmp56 = *((int *)__cil_tmp55);
    __cil_tmp57 = __cil_tmp56 + 1;
    tmp = inb(__cil_tmp57);
    __cil_tmp58 = (int )tmp;
    a = __cil_tmp58 & 255;
    __cil_tmp59 = (unsigned long )pi;
    __cil_tmp60 = __cil_tmp59 + 8;
    __cil_tmp61 = *((int *)__cil_tmp60);
    __cil_tmp62 = __cil_tmp61 + 2;
    outb((unsigned char)4, __cil_tmp62);
    }
    {
    __cil_tmp63 = (unsigned long )pi;
    __cil_tmp64 = __cil_tmp63 + 16;
    if (*((int *)__cil_tmp64)) {
      {
      __cil_tmp65 = (unsigned long )pi;
      __cil_tmp66 = __cil_tmp65 + 16;
      __cil_tmp67 = *((int *)__cil_tmp66);
      __cil_tmp68 = (unsigned long )__cil_tmp67;
      __udelay(__cil_tmp68);
      }
    } else {
    }
    }
    {
    __cil_tmp69 = (unsigned long )pi;
    __cil_tmp70 = __cil_tmp69 + 16;
    if (*((int *)__cil_tmp70)) {
      {
      __cil_tmp71 = (unsigned long )pi;
      __cil_tmp72 = __cil_tmp71 + 16;
      __cil_tmp73 = *((int *)__cil_tmp72);
      __cil_tmp74 = (unsigned long )__cil_tmp73;
      __udelay(__cil_tmp74);
      }
    } else {
    }
    }
    {
    __cil_tmp75 = (unsigned long )pi;
    __cil_tmp76 = __cil_tmp75 + 8;
    __cil_tmp77 = *((int *)__cil_tmp76);
    __cil_tmp78 = __cil_tmp77 + 1;
    tmp___0 = inb(__cil_tmp78);
    __cil_tmp79 = (int )tmp___0;
    b = __cil_tmp79 & 255;
    }
    {
    __cil_tmp80 = b & 240;
    __cil_tmp81 = a >> 4;
    __cil_tmp82 = __cil_tmp81 & 15;
    return (__cil_tmp82 + __cil_tmp80);
    }
    case_1:
    {
    __cil_tmp83 = 64 + r;
    __cil_tmp84 = (unsigned char )__cil_tmp83;
    __cil_tmp85 = (unsigned long )pi;
    __cil_tmp86 = __cil_tmp85 + 8;
    __cil_tmp87 = *((int *)__cil_tmp86);
    outb(__cil_tmp84, __cil_tmp87);
    }
    {
    __cil_tmp88 = (unsigned long )pi;
    __cil_tmp89 = __cil_tmp88 + 16;
    if (*((int *)__cil_tmp89)) {
      {
      __cil_tmp90 = (unsigned long )pi;
      __cil_tmp91 = __cil_tmp90 + 16;
      __cil_tmp92 = *((int *)__cil_tmp91);
      __cil_tmp93 = (unsigned long )__cil_tmp92;
      __udelay(__cil_tmp93);
      }
    } else {
    }
    }
    {
    __cil_tmp94 = (unsigned long )pi;
    __cil_tmp95 = __cil_tmp94 + 8;
    __cil_tmp96 = *((int *)__cil_tmp95);
    __cil_tmp97 = __cil_tmp96 + 2;
    outb((unsigned char)1, __cil_tmp97);
    }
    {
    __cil_tmp98 = (unsigned long )pi;
    __cil_tmp99 = __cil_tmp98 + 16;
    if (*((int *)__cil_tmp99)) {
      {
      __cil_tmp100 = (unsigned long )pi;
      __cil_tmp101 = __cil_tmp100 + 16;
      __cil_tmp102 = *((int *)__cil_tmp101);
      __cil_tmp103 = (unsigned long )__cil_tmp102;
      __udelay(__cil_tmp103);
      }
    } else {
    }
    }
    {
    __cil_tmp104 = (unsigned long )pi;
    __cil_tmp105 = __cil_tmp104 + 8;
    __cil_tmp106 = *((int *)__cil_tmp105);
    __cil_tmp107 = __cil_tmp106 + 2;
    outb((unsigned char)4, __cil_tmp107);
    }
    {
    __cil_tmp108 = (unsigned long )pi;
    __cil_tmp109 = __cil_tmp108 + 16;
    if (*((int *)__cil_tmp109)) {
      {
      __cil_tmp110 = (unsigned long )pi;
      __cil_tmp111 = __cil_tmp110 + 16;
      __cil_tmp112 = *((int *)__cil_tmp111);
      __cil_tmp113 = (unsigned long )__cil_tmp112;
      __udelay(__cil_tmp113);
      }
    } else {
    }
    }
    {
    __cil_tmp114 = (unsigned long )pi;
    __cil_tmp115 = __cil_tmp114 + 16;
    if (*((int *)__cil_tmp115)) {
      {
      __cil_tmp116 = (unsigned long )pi;
      __cil_tmp117 = __cil_tmp116 + 16;
      __cil_tmp118 = *((int *)__cil_tmp117);
      __cil_tmp119 = (unsigned long )__cil_tmp118;
      __udelay(__cil_tmp119);
      }
    } else {
    }
    }
    {
    __cil_tmp120 = (unsigned long )pi;
    __cil_tmp121 = __cil_tmp120 + 8;
    __cil_tmp122 = *((int *)__cil_tmp121);
    __cil_tmp123 = __cil_tmp122 + 1;
    tmp___1 = inb(__cil_tmp123);
    __cil_tmp124 = (int )tmp___1;
    a = __cil_tmp124 & 255;
    }
    {
    __cil_tmp125 = (unsigned long )pi;
    __cil_tmp126 = __cil_tmp125 + 16;
    if (*((int *)__cil_tmp126)) {
      {
      __cil_tmp127 = (unsigned long )pi;
      __cil_tmp128 = __cil_tmp127 + 16;
      __cil_tmp129 = *((int *)__cil_tmp128);
      __cil_tmp130 = (unsigned long )__cil_tmp129;
      __udelay(__cil_tmp130);
      }
    } else {
    }
    }
    {
    __cil_tmp131 = (unsigned long )pi;
    __cil_tmp132 = __cil_tmp131 + 8;
    __cil_tmp133 = *((int *)__cil_tmp132);
    __cil_tmp134 = __cil_tmp133 + 2;
    tmp___2 = inb(__cil_tmp134);
    __cil_tmp135 = (int )tmp___2;
    b = __cil_tmp135 & 255;
    __cil_tmp136 = (unsigned long )pi;
    __cil_tmp137 = __cil_tmp136 + 8;
    __cil_tmp138 = *((int *)__cil_tmp137);
    outb((unsigned char)255, __cil_tmp138);
    }
    {
    __cil_tmp139 = (unsigned long )pi;
    __cil_tmp140 = __cil_tmp139 + 16;
    if (*((int *)__cil_tmp140)) {
      {
      __cil_tmp141 = (unsigned long )pi;
      __cil_tmp142 = __cil_tmp141 + 16;
      __cil_tmp143 = *((int *)__cil_tmp142);
      __cil_tmp144 = (unsigned long )__cil_tmp143;
      __udelay(__cil_tmp144);
      }
    } else {
    }
    }
    {
    __cil_tmp145 = b << 4;
    __cil_tmp146 = __cil_tmp145 & 224;
    __cil_tmp147 = a >> 3;
    __cil_tmp148 = __cil_tmp147 & 31;
    return (__cil_tmp148 + __cil_tmp146);
    }
    case_2:
    {
    __cil_tmp149 = 32 + r;
    __cil_tmp150 = (unsigned char )__cil_tmp149;
    __cil_tmp151 = (unsigned long )pi;
    __cil_tmp152 = __cil_tmp151 + 8;
    __cil_tmp153 = *((int *)__cil_tmp152);
    outb(__cil_tmp150, __cil_tmp153);
    }
    {
    __cil_tmp154 = (unsigned long )pi;
    __cil_tmp155 = __cil_tmp154 + 16;
    if (*((int *)__cil_tmp155)) {
      {
      __cil_tmp156 = (unsigned long )pi;
      __cil_tmp157 = __cil_tmp156 + 16;
      __cil_tmp158 = *((int *)__cil_tmp157);
      __cil_tmp159 = (unsigned long )__cil_tmp158;
      __udelay(__cil_tmp159);
      }
    } else {
    }
    }
    {
    __cil_tmp160 = (unsigned long )pi;
    __cil_tmp161 = __cil_tmp160 + 8;
    __cil_tmp162 = *((int *)__cil_tmp161);
    __cil_tmp163 = __cil_tmp162 + 2;
    outb((unsigned char)1, __cil_tmp163);
    }
    {
    __cil_tmp164 = (unsigned long )pi;
    __cil_tmp165 = __cil_tmp164 + 16;
    if (*((int *)__cil_tmp165)) {
      {
      __cil_tmp166 = (unsigned long )pi;
      __cil_tmp167 = __cil_tmp166 + 16;
      __cil_tmp168 = *((int *)__cil_tmp167);
      __cil_tmp169 = (unsigned long )__cil_tmp168;
      __udelay(__cil_tmp169);
      }
    } else {
    }
    }
    {
    __cil_tmp170 = (unsigned long )pi;
    __cil_tmp171 = __cil_tmp170 + 8;
    __cil_tmp172 = *((int *)__cil_tmp171);
    __cil_tmp173 = __cil_tmp172 + 2;
    outb((unsigned char)37, __cil_tmp173);
    }
    {
    __cil_tmp174 = (unsigned long )pi;
    __cil_tmp175 = __cil_tmp174 + 16;
    if (*((int *)__cil_tmp175)) {
      {
      __cil_tmp176 = (unsigned long )pi;
      __cil_tmp177 = __cil_tmp176 + 16;
      __cil_tmp178 = *((int *)__cil_tmp177);
      __cil_tmp179 = (unsigned long )__cil_tmp178;
      __udelay(__cil_tmp179);
      }
    } else {
    }
    }
    {
    __cil_tmp180 = (unsigned long )pi;
    __cil_tmp181 = __cil_tmp180 + 16;
    if (*((int *)__cil_tmp181)) {
      {
      __cil_tmp182 = (unsigned long )pi;
      __cil_tmp183 = __cil_tmp182 + 16;
      __cil_tmp184 = *((int *)__cil_tmp183);
      __cil_tmp185 = (unsigned long )__cil_tmp184;
      __udelay(__cil_tmp185);
      }
    } else {
    }
    }
    {
    __cil_tmp186 = (unsigned long )pi;
    __cil_tmp187 = __cil_tmp186 + 8;
    __cil_tmp188 = *((int *)__cil_tmp187);
    tmp___3 = inb(__cil_tmp188);
    __cil_tmp189 = (int )tmp___3;
    a = __cil_tmp189 & 255;
    __cil_tmp190 = (unsigned long )pi;
    __cil_tmp191 = __cil_tmp190 + 8;
    __cil_tmp192 = *((int *)__cil_tmp191);
    __cil_tmp193 = __cil_tmp192 + 2;
    outb((unsigned char)4, __cil_tmp193);
    }
    {
    __cil_tmp194 = (unsigned long )pi;
    __cil_tmp195 = __cil_tmp194 + 16;
    if (*((int *)__cil_tmp195)) {
      {
      __cil_tmp196 = (unsigned long )pi;
      __cil_tmp197 = __cil_tmp196 + 16;
      __cil_tmp198 = *((int *)__cil_tmp197);
      __cil_tmp199 = (unsigned long )__cil_tmp198;
      __udelay(__cil_tmp199);
      }
    } else {
    }
    }
    return (a);
    case_3:
    case_4:
    case_5:
    {
    __cil_tmp200 = (unsigned char )r;
    __cil_tmp201 = (unsigned long )pi;
    __cil_tmp202 = __cil_tmp201 + 8;
    __cil_tmp203 = *((int *)__cil_tmp202);
    __cil_tmp204 = __cil_tmp203 + 3;
    outb(__cil_tmp200, __cil_tmp204);
    }
    {
    __cil_tmp205 = (unsigned long )pi;
    __cil_tmp206 = __cil_tmp205 + 16;
    if (*((int *)__cil_tmp206)) {
      {
      __cil_tmp207 = (unsigned long )pi;
      __cil_tmp208 = __cil_tmp207 + 16;
      __cil_tmp209 = *((int *)__cil_tmp208);
      __cil_tmp210 = (unsigned long )__cil_tmp209;
      __udelay(__cil_tmp210);
      }
    } else {
    }
    }
    {
    __cil_tmp211 = (unsigned long )pi;
    __cil_tmp212 = __cil_tmp211 + 8;
    __cil_tmp213 = *((int *)__cil_tmp212);
    __cil_tmp214 = __cil_tmp213 + 2;
    outb((unsigned char)36, __cil_tmp214);
    }
    {
    __cil_tmp215 = (unsigned long )pi;
    __cil_tmp216 = __cil_tmp215 + 16;
    if (*((int *)__cil_tmp216)) {
      {
      __cil_tmp217 = (unsigned long )pi;
      __cil_tmp218 = __cil_tmp217 + 16;
      __cil_tmp219 = *((int *)__cil_tmp218);
      __cil_tmp220 = (unsigned long )__cil_tmp219;
      __udelay(__cil_tmp220);
      }
    } else {
    }
    }
    {
    __cil_tmp221 = (unsigned long )pi;
    __cil_tmp222 = __cil_tmp221 + 16;
    if (*((int *)__cil_tmp222)) {
      {
      __cil_tmp223 = (unsigned long )pi;
      __cil_tmp224 = __cil_tmp223 + 16;
      __cil_tmp225 = *((int *)__cil_tmp224);
      __cil_tmp226 = (unsigned long )__cil_tmp225;
      __udelay(__cil_tmp226);
      }
    } else {
    }
    }
    {
    __cil_tmp227 = (unsigned long )pi;
    __cil_tmp228 = __cil_tmp227 + 8;
    __cil_tmp229 = *((int *)__cil_tmp228);
    __cil_tmp230 = __cil_tmp229 + 4;
    tmp___4 = inb(__cil_tmp230);
    __cil_tmp231 = (int )tmp___4;
    a = __cil_tmp231 & 255;
    __cil_tmp232 = (unsigned long )pi;
    __cil_tmp233 = __cil_tmp232 + 8;
    __cil_tmp234 = *((int *)__cil_tmp233);
    __cil_tmp235 = __cil_tmp234 + 2;
    outb((unsigned char)4, __cil_tmp235);
    }
    {
    __cil_tmp236 = (unsigned long )pi;
    __cil_tmp237 = __cil_tmp236 + 16;
    if (*((int *)__cil_tmp237)) {
      {
      __cil_tmp238 = (unsigned long )pi;
      __cil_tmp239 = __cil_tmp238 + 16;
      __cil_tmp240 = *((int *)__cil_tmp239);
      __cil_tmp241 = (unsigned long )__cil_tmp240;
      __udelay(__cil_tmp241);
      }
    } else {
    }
    }
    return (a);
  } else {
    switch_break: ;
  }
  }
  return (-1);
}
}
static void epat_read_block(PIA *pi , char *buf , int count )
{ int k ;
  int ph ;
  int a ;
  int b ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned short tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned int tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  int __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  int __cil_tmp72 ;
  unsigned char __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  int __cil_tmp92 ;
  int __cil_tmp93 ;
  int __cil_tmp94 ;
  int __cil_tmp95 ;
  unsigned char __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  int __cil_tmp99 ;
  int __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  int __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  int __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  int __cil_tmp115 ;
  int __cil_tmp116 ;
  int __cil_tmp117 ;
  char *__cil_tmp118 ;
  int __cil_tmp119 ;
  int __cil_tmp120 ;
  int __cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  int __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  int __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  int __cil_tmp134 ;
  int __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  int __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  int __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  int __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  int __cil_tmp153 ;
  int __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  int __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  int __cil_tmp163 ;
  int __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  int __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  int __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  int __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  int __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  int __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  int __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  int __cil_tmp190 ;
  unsigned char __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  int __cil_tmp194 ;
  int __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  int __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  unsigned long __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  int __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  int __cil_tmp210 ;
  int __cil_tmp211 ;
  int __cil_tmp212 ;
  unsigned long __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  int __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  int __cil_tmp221 ;
  int __cil_tmp222 ;
  int __cil_tmp223 ;
  char *__cil_tmp224 ;
  int __cil_tmp225 ;
  int __cil_tmp226 ;
  int __cil_tmp227 ;
  int __cil_tmp228 ;
  int __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  int __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  int __cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  int __cil_tmp241 ;
  int __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  unsigned long __cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  int __cil_tmp247 ;
  unsigned long __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  unsigned long __cil_tmp250 ;
  int __cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  unsigned long __cil_tmp253 ;
  unsigned long __cil_tmp254 ;
  unsigned long __cil_tmp255 ;
  int __cil_tmp256 ;
  unsigned long __cil_tmp257 ;
  unsigned long __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  int __cil_tmp260 ;
  int __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  unsigned long __cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  unsigned long __cil_tmp265 ;
  int __cil_tmp266 ;
  unsigned long __cil_tmp267 ;
  unsigned long __cil_tmp268 ;
  unsigned long __cil_tmp269 ;
  int __cil_tmp270 ;
  int __cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  unsigned long __cil_tmp274 ;
  unsigned long __cil_tmp275 ;
  int __cil_tmp276 ;
  unsigned long __cil_tmp277 ;
  unsigned long __cil_tmp278 ;
  unsigned long __cil_tmp279 ;
  int __cil_tmp280 ;
  unsigned long __cil_tmp281 ;
  unsigned long __cil_tmp282 ;
  unsigned long __cil_tmp283 ;
  unsigned long __cil_tmp284 ;
  int __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  int __cil_tmp287 ;
  int __cil_tmp288 ;
  unsigned char __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  unsigned long __cil_tmp291 ;
  int __cil_tmp292 ;
  int __cil_tmp293 ;
  unsigned long __cil_tmp294 ;
  unsigned long __cil_tmp295 ;
  unsigned long __cil_tmp296 ;
  unsigned long __cil_tmp297 ;
  int __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  unsigned long __cil_tmp301 ;
  unsigned long __cil_tmp302 ;
  unsigned long __cil_tmp303 ;
  int __cil_tmp304 ;
  unsigned long __cil_tmp305 ;
  unsigned long __cil_tmp306 ;
  unsigned long __cil_tmp307 ;
  int __cil_tmp308 ;
  char *__cil_tmp309 ;
  int __cil_tmp310 ;
  int __cil_tmp311 ;
  unsigned long __cil_tmp312 ;
  unsigned long __cil_tmp313 ;
  int __cil_tmp314 ;
  int __cil_tmp315 ;
  unsigned long __cil_tmp316 ;
  unsigned long __cil_tmp317 ;
  unsigned long __cil_tmp318 ;
  unsigned long __cil_tmp319 ;
  int __cil_tmp320 ;
  unsigned long __cil_tmp321 ;
  unsigned long __cil_tmp322 ;
  unsigned long __cil_tmp323 ;
  int __cil_tmp324 ;
  int __cil_tmp325 ;
  unsigned long __cil_tmp326 ;
  unsigned long __cil_tmp327 ;
  unsigned long __cil_tmp328 ;
  unsigned long __cil_tmp329 ;
  int __cil_tmp330 ;
  unsigned long __cil_tmp331 ;
  unsigned long __cil_tmp332 ;
  unsigned long __cil_tmp333 ;
  unsigned long __cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  int __cil_tmp336 ;
  unsigned long __cil_tmp337 ;
  unsigned long __cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  int __cil_tmp340 ;
  int __cil_tmp341 ;
  char *__cil_tmp342 ;
  int __cil_tmp343 ;
  int __cil_tmp344 ;
  unsigned long __cil_tmp345 ;
  unsigned long __cil_tmp346 ;
  int __cil_tmp347 ;
  int __cil_tmp348 ;
  unsigned long __cil_tmp349 ;
  unsigned long __cil_tmp350 ;
  unsigned long __cil_tmp351 ;
  unsigned long __cil_tmp352 ;
  int __cil_tmp353 ;
  unsigned long __cil_tmp354 ;
  unsigned long __cil_tmp355 ;
  unsigned long __cil_tmp356 ;
  int __cil_tmp357 ;
  int __cil_tmp358 ;
  unsigned long __cil_tmp359 ;
  unsigned long __cil_tmp360 ;
  unsigned long __cil_tmp361 ;
  unsigned long __cil_tmp362 ;
  int __cil_tmp363 ;
  unsigned long __cil_tmp364 ;
  unsigned long __cil_tmp365 ;
  unsigned long __cil_tmp366 ;
  int __cil_tmp367 ;
  int __cil_tmp368 ;
  unsigned long __cil_tmp369 ;
  unsigned long __cil_tmp370 ;
  unsigned long __cil_tmp371 ;
  unsigned long __cil_tmp372 ;
  int __cil_tmp373 ;
  unsigned long __cil_tmp374 ;
  unsigned long __cil_tmp375 ;
  unsigned long __cil_tmp376 ;
  int __cil_tmp377 ;
  int __cil_tmp378 ;
  unsigned long __cil_tmp379 ;
  unsigned long __cil_tmp380 ;
  unsigned long __cil_tmp381 ;
  unsigned long __cil_tmp382 ;
  int __cil_tmp383 ;
  unsigned long __cil_tmp384 ;
  int __cil_tmp385 ;
  unsigned long __cil_tmp386 ;
  unsigned long __cil_tmp387 ;
  unsigned long __cil_tmp388 ;
  unsigned long __cil_tmp389 ;
  int __cil_tmp390 ;
  unsigned long __cil_tmp391 ;
  unsigned long __cil_tmp392 ;
  unsigned long __cil_tmp393 ;
  int __cil_tmp394 ;
  int __cil_tmp395 ;
  char *__cil_tmp396 ;
  int __cil_tmp397 ;
  int __cil_tmp398 ;
  unsigned long __cil_tmp399 ;
  unsigned long __cil_tmp400 ;
  int __cil_tmp401 ;
  int __cil_tmp402 ;
  unsigned long __cil_tmp403 ;
  unsigned long __cil_tmp404 ;
  unsigned long __cil_tmp405 ;
  unsigned long __cil_tmp406 ;
  int __cil_tmp407 ;
  unsigned long __cil_tmp408 ;
  unsigned long __cil_tmp409 ;
  unsigned long __cil_tmp410 ;
  int __cil_tmp411 ;
  int __cil_tmp412 ;
  unsigned long __cil_tmp413 ;
  unsigned long __cil_tmp414 ;
  unsigned long __cil_tmp415 ;
  unsigned long __cil_tmp416 ;
  int __cil_tmp417 ;
  unsigned long __cil_tmp418 ;
  unsigned long __cil_tmp419 ;
  unsigned long __cil_tmp420 ;
  int __cil_tmp421 ;
  int __cil_tmp422 ;
  unsigned long __cil_tmp423 ;
  unsigned long __cil_tmp424 ;
  unsigned long __cil_tmp425 ;
  unsigned long __cil_tmp426 ;
  int __cil_tmp427 ;
  unsigned long __cil_tmp428 ;
  unsigned long __cil_tmp429 ;
  unsigned long __cil_tmp430 ;
  unsigned long __cil_tmp431 ;
  unsigned long __cil_tmp432 ;
  int __cil_tmp433 ;
  unsigned long __cil_tmp434 ;
  unsigned long __cil_tmp435 ;
  unsigned long __cil_tmp436 ;
  int __cil_tmp437 ;
  int __cil_tmp438 ;
  int __cil_tmp439 ;
  char *__cil_tmp440 ;
  int __cil_tmp441 ;
  int __cil_tmp442 ;
  unsigned long __cil_tmp443 ;
  unsigned long __cil_tmp444 ;
  int __cil_tmp445 ;
  int __cil_tmp446 ;
  unsigned long __cil_tmp447 ;
  unsigned long __cil_tmp448 ;
  unsigned long __cil_tmp449 ;
  unsigned long __cil_tmp450 ;
  int __cil_tmp451 ;
  unsigned long __cil_tmp452 ;
  unsigned long __cil_tmp453 ;
  unsigned long __cil_tmp454 ;
  int __cil_tmp455 ;
  int __cil_tmp456 ;
  unsigned long __cil_tmp457 ;
  unsigned long __cil_tmp458 ;
  unsigned long __cil_tmp459 ;
  unsigned long __cil_tmp460 ;
  int __cil_tmp461 ;
  unsigned long __cil_tmp462 ;
  unsigned long __cil_tmp463 ;
  unsigned long __cil_tmp464 ;
  int __cil_tmp465 ;
  int __cil_tmp466 ;
  unsigned long __cil_tmp467 ;
  unsigned long __cil_tmp468 ;
  unsigned long __cil_tmp469 ;
  unsigned long __cil_tmp470 ;
  int __cil_tmp471 ;
  unsigned long __cil_tmp472 ;
  int __cil_tmp473 ;
  int __cil_tmp474 ;
  unsigned long __cil_tmp475 ;
  unsigned long __cil_tmp476 ;
  unsigned long __cil_tmp477 ;
  unsigned long __cil_tmp478 ;
  int __cil_tmp479 ;
  unsigned long __cil_tmp480 ;
  unsigned long __cil_tmp481 ;
  unsigned long __cil_tmp482 ;
  int __cil_tmp483 ;
  int __cil_tmp484 ;
  u16 *__cil_tmp485 ;
  u16 *__cil_tmp486 ;
  int __cil_tmp487 ;
  int __cil_tmp488 ;
  unsigned long __cil_tmp489 ;
  unsigned long __cil_tmp490 ;
  unsigned long __cil_tmp491 ;
  unsigned long __cil_tmp492 ;
  int __cil_tmp493 ;
  unsigned long __cil_tmp494 ;
  unsigned long __cil_tmp495 ;
  unsigned long __cil_tmp496 ;
  int __cil_tmp497 ;
  int __cil_tmp498 ;
  int __cil_tmp499 ;
  char *__cil_tmp500 ;
  int __cil_tmp501 ;
  int __cil_tmp502 ;
  unsigned long __cil_tmp503 ;
  unsigned long __cil_tmp504 ;
  int __cil_tmp505 ;
  int __cil_tmp506 ;
  unsigned long __cil_tmp507 ;
  unsigned long __cil_tmp508 ;
  unsigned long __cil_tmp509 ;
  unsigned long __cil_tmp510 ;
  int __cil_tmp511 ;
  unsigned long __cil_tmp512 ;
  unsigned long __cil_tmp513 ;
  unsigned long __cil_tmp514 ;
  int __cil_tmp515 ;
  int __cil_tmp516 ;
  unsigned long __cil_tmp517 ;
  unsigned long __cil_tmp518 ;
  unsigned long __cil_tmp519 ;
  unsigned long __cil_tmp520 ;
  int __cil_tmp521 ;
  unsigned long __cil_tmp522 ;
  unsigned long __cil_tmp523 ;
  unsigned long __cil_tmp524 ;
  int __cil_tmp525 ;
  int __cil_tmp526 ;
  unsigned long __cil_tmp527 ;
  unsigned long __cil_tmp528 ;
  unsigned long __cil_tmp529 ;
  unsigned long __cil_tmp530 ;
  int __cil_tmp531 ;
  unsigned long __cil_tmp532 ;
  unsigned long __cil_tmp533 ;
  unsigned long __cil_tmp534 ;
  unsigned long __cil_tmp535 ;
  unsigned long __cil_tmp536 ;
  int __cil_tmp537 ;
  unsigned long __cil_tmp538 ;
  unsigned long __cil_tmp539 ;
  unsigned long __cil_tmp540 ;
  int __cil_tmp541 ;
  int __cil_tmp542 ;
  int __cil_tmp543 ;
  char *__cil_tmp544 ;
  int __cil_tmp545 ;
  int __cil_tmp546 ;
  unsigned long __cil_tmp547 ;
  unsigned long __cil_tmp548 ;
  int __cil_tmp549 ;
  int __cil_tmp550 ;
  unsigned long __cil_tmp551 ;
  unsigned long __cil_tmp552 ;
  unsigned long __cil_tmp553 ;
  unsigned long __cil_tmp554 ;
  int __cil_tmp555 ;
  unsigned long __cil_tmp556 ;
  unsigned long __cil_tmp557 ;
  unsigned long __cil_tmp558 ;
  int __cil_tmp559 ;
  int __cil_tmp560 ;
  unsigned long __cil_tmp561 ;
  unsigned long __cil_tmp562 ;
  unsigned long __cil_tmp563 ;
  unsigned long __cil_tmp564 ;
  int __cil_tmp565 ;
  unsigned long __cil_tmp566 ;
  unsigned long __cil_tmp567 ;
  unsigned long __cil_tmp568 ;
  int __cil_tmp569 ;
  int __cil_tmp570 ;
  unsigned long __cil_tmp571 ;
  unsigned long __cil_tmp572 ;
  unsigned long __cil_tmp573 ;
  unsigned long __cil_tmp574 ;
  int __cil_tmp575 ;
  unsigned long __cil_tmp576 ;
  int __cil_tmp577 ;
  int __cil_tmp578 ;
  unsigned long __cil_tmp579 ;
  unsigned long __cil_tmp580 ;
  unsigned long __cil_tmp581 ;
  unsigned long __cil_tmp582 ;
  int __cil_tmp583 ;
  unsigned long __cil_tmp584 ;
  unsigned long __cil_tmp585 ;
  unsigned long __cil_tmp586 ;
  int __cil_tmp587 ;
  int __cil_tmp588 ;
  u32 *__cil_tmp589 ;
  u32 *__cil_tmp590 ;
  int __cil_tmp591 ;
  unsigned long __cil_tmp592 ;
  unsigned long __cil_tmp593 ;
  unsigned long __cil_tmp594 ;
  unsigned long __cil_tmp595 ;
  int __cil_tmp596 ;
  unsigned long __cil_tmp597 ;
  unsigned long __cil_tmp598 ;
  unsigned long __cil_tmp599 ;
  int __cil_tmp600 ;
  int __cil_tmp601 ;
  char *__cil_tmp602 ;
  int __cil_tmp603 ;
  int __cil_tmp604 ;
  unsigned long __cil_tmp605 ;
  unsigned long __cil_tmp606 ;
  int __cil_tmp607 ;
  int __cil_tmp608 ;
  unsigned long __cil_tmp609 ;
  unsigned long __cil_tmp610 ;
  unsigned long __cil_tmp611 ;
  unsigned long __cil_tmp612 ;
  int __cil_tmp613 ;
  unsigned long __cil_tmp614 ;
  unsigned long __cil_tmp615 ;
  unsigned long __cil_tmp616 ;
  int __cil_tmp617 ;
  int __cil_tmp618 ;
  unsigned long __cil_tmp619 ;
  unsigned long __cil_tmp620 ;
  unsigned long __cil_tmp621 ;
  unsigned long __cil_tmp622 ;
  int __cil_tmp623 ;
  unsigned long __cil_tmp624 ;
  unsigned long __cil_tmp625 ;
  unsigned long __cil_tmp626 ;
  int __cil_tmp627 ;
  int __cil_tmp628 ;
  unsigned long __cil_tmp629 ;
  unsigned long __cil_tmp630 ;
  unsigned long __cil_tmp631 ;
  unsigned long __cil_tmp632 ;
  int __cil_tmp633 ;
  unsigned long __cil_tmp634 ;
  unsigned long __cil_tmp635 ;
  unsigned long __cil_tmp636 ;
  unsigned long __cil_tmp637 ;
  unsigned long __cil_tmp638 ;
  int __cil_tmp639 ;
  unsigned long __cil_tmp640 ;
  unsigned long __cil_tmp641 ;
  unsigned long __cil_tmp642 ;
  int __cil_tmp643 ;
  int __cil_tmp644 ;
  int __cil_tmp645 ;
  char *__cil_tmp646 ;
  int __cil_tmp647 ;
  int __cil_tmp648 ;
  unsigned long __cil_tmp649 ;
  unsigned long __cil_tmp650 ;
  int __cil_tmp651 ;
  int __cil_tmp652 ;
  unsigned long __cil_tmp653 ;
  unsigned long __cil_tmp654 ;
  unsigned long __cil_tmp655 ;
  unsigned long __cil_tmp656 ;
  int __cil_tmp657 ;
  unsigned long __cil_tmp658 ;
  {
  {
  __cil_tmp22 = (unsigned long )pi;
  __cil_tmp23 = __cil_tmp22 + 12;
  if (*((int *)__cil_tmp23) == 0) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp23) == 1) {
    goto case_1;
  } else
  if (*((int *)__cil_tmp23) == 2) {
    goto case_2;
  } else
  if (*((int *)__cil_tmp23) == 3) {
    goto case_3;
  } else
  if (*((int *)__cil_tmp23) == 4) {
    goto case_4;
  } else
  if (*((int *)__cil_tmp23) == 5) {
    goto case_5;
  } else
  if (0) {
    case_0:
    {
    __cil_tmp24 = (unsigned long )pi;
    __cil_tmp25 = __cil_tmp24 + 8;
    __cil_tmp26 = *((int *)__cil_tmp25);
    outb((unsigned char)7, __cil_tmp26);
    }
    {
    __cil_tmp27 = (unsigned long )pi;
    __cil_tmp28 = __cil_tmp27 + 16;
    if (*((int *)__cil_tmp28)) {
      {
      __cil_tmp29 = (unsigned long )pi;
      __cil_tmp30 = __cil_tmp29 + 16;
      __cil_tmp31 = *((int *)__cil_tmp30);
      __cil_tmp32 = (unsigned long )__cil_tmp31;
      __udelay(__cil_tmp32);
      }
    } else {
    }
    }
    {
    __cil_tmp33 = (unsigned long )pi;
    __cil_tmp34 = __cil_tmp33 + 8;
    __cil_tmp35 = *((int *)__cil_tmp34);
    __cil_tmp36 = __cil_tmp35 + 2;
    outb((unsigned char)1, __cil_tmp36);
    }
    {
    __cil_tmp37 = (unsigned long )pi;
    __cil_tmp38 = __cil_tmp37 + 16;
    if (*((int *)__cil_tmp38)) {
      {
      __cil_tmp39 = (unsigned long )pi;
      __cil_tmp40 = __cil_tmp39 + 16;
      __cil_tmp41 = *((int *)__cil_tmp40);
      __cil_tmp42 = (unsigned long )__cil_tmp41;
      __udelay(__cil_tmp42);
      }
    } else {
    }
    }
    {
    __cil_tmp43 = (unsigned long )pi;
    __cil_tmp44 = __cil_tmp43 + 8;
    __cil_tmp45 = *((int *)__cil_tmp44);
    __cil_tmp46 = __cil_tmp45 + 2;
    outb((unsigned char)3, __cil_tmp46);
    }
    {
    __cil_tmp47 = (unsigned long )pi;
    __cil_tmp48 = __cil_tmp47 + 16;
    if (*((int *)__cil_tmp48)) {
      {
      __cil_tmp49 = (unsigned long )pi;
      __cil_tmp50 = __cil_tmp49 + 16;
      __cil_tmp51 = *((int *)__cil_tmp50);
      __cil_tmp52 = (unsigned long )__cil_tmp51;
      __udelay(__cil_tmp52);
      }
    } else {
    }
    }
    {
    __cil_tmp53 = (unsigned long )pi;
    __cil_tmp54 = __cil_tmp53 + 8;
    __cil_tmp55 = *((int *)__cil_tmp54);
    outb((unsigned char)255, __cil_tmp55);
    }
    {
    __cil_tmp56 = (unsigned long )pi;
    __cil_tmp57 = __cil_tmp56 + 16;
    if (*((int *)__cil_tmp57)) {
      {
      __cil_tmp58 = (unsigned long )pi;
      __cil_tmp59 = __cil_tmp58 + 16;
      __cil_tmp60 = *((int *)__cil_tmp59);
      __cil_tmp61 = (unsigned long )__cil_tmp60;
      __udelay(__cil_tmp61);
      }
    } else {
    }
    }
    ph = 0;
    k = 0;
    {
    while (1) {
      while_continue: ;
      if (k < count) {
      } else {
        goto while_break;
      }
      {
      __cil_tmp62 = count - 1;
      if (k == __cil_tmp62) {
        {
        __cil_tmp63 = (unsigned long )pi;
        __cil_tmp64 = __cil_tmp63 + 8;
        __cil_tmp65 = *((int *)__cil_tmp64);
        outb((unsigned char)253, __cil_tmp65);
        }
        {
        __cil_tmp66 = (unsigned long )pi;
        __cil_tmp67 = __cil_tmp66 + 16;
        if (*((int *)__cil_tmp67)) {
          {
          __cil_tmp68 = (unsigned long )pi;
          __cil_tmp69 = __cil_tmp68 + 16;
          __cil_tmp70 = *((int *)__cil_tmp69);
          __cil_tmp71 = (unsigned long )__cil_tmp70;
          __udelay(__cil_tmp71);
          }
        } else {
        }
        }
      } else {
      }
      }
      {
      __cil_tmp72 = 6 + ph;
      __cil_tmp73 = (unsigned char )__cil_tmp72;
      __cil_tmp74 = (unsigned long )pi;
      __cil_tmp75 = __cil_tmp74 + 8;
      __cil_tmp76 = *((int *)__cil_tmp75);
      __cil_tmp77 = __cil_tmp76 + 2;
      outb(__cil_tmp73, __cil_tmp77);
      }
      {
      __cil_tmp78 = (unsigned long )pi;
      __cil_tmp79 = __cil_tmp78 + 16;
      if (*((int *)__cil_tmp79)) {
        {
        __cil_tmp80 = (unsigned long )pi;
        __cil_tmp81 = __cil_tmp80 + 16;
        __cil_tmp82 = *((int *)__cil_tmp81);
        __cil_tmp83 = (unsigned long )__cil_tmp82;
        __udelay(__cil_tmp83);
        }
      } else {
      }
      }
      {
      __cil_tmp84 = (unsigned long )pi;
      __cil_tmp85 = __cil_tmp84 + 16;
      if (*((int *)__cil_tmp85)) {
        {
        __cil_tmp86 = (unsigned long )pi;
        __cil_tmp87 = __cil_tmp86 + 16;
        __cil_tmp88 = *((int *)__cil_tmp87);
        __cil_tmp89 = (unsigned long )__cil_tmp88;
        __udelay(__cil_tmp89);
        }
      } else {
      }
      }
      {
      __cil_tmp90 = (unsigned long )pi;
      __cil_tmp91 = __cil_tmp90 + 8;
      __cil_tmp92 = *((int *)__cil_tmp91);
      __cil_tmp93 = __cil_tmp92 + 1;
      tmp = inb(__cil_tmp93);
      __cil_tmp94 = (int )tmp;
      a = __cil_tmp94 & 255;
      }
      if (a & 8) {
        b = a;
      } else {
        {
        __cil_tmp95 = 4 + ph;
        __cil_tmp96 = (unsigned char )__cil_tmp95;
        __cil_tmp97 = (unsigned long )pi;
        __cil_tmp98 = __cil_tmp97 + 8;
        __cil_tmp99 = *((int *)__cil_tmp98);
        __cil_tmp100 = __cil_tmp99 + 2;
        outb(__cil_tmp96, __cil_tmp100);
        }
        {
        __cil_tmp101 = (unsigned long )pi;
        __cil_tmp102 = __cil_tmp101 + 16;
        if (*((int *)__cil_tmp102)) {
          {
          __cil_tmp103 = (unsigned long )pi;
          __cil_tmp104 = __cil_tmp103 + 16;
          __cil_tmp105 = *((int *)__cil_tmp104);
          __cil_tmp106 = (unsigned long )__cil_tmp105;
          __udelay(__cil_tmp106);
          }
        } else {
        }
        }
        {
        __cil_tmp107 = (unsigned long )pi;
        __cil_tmp108 = __cil_tmp107 + 16;
        if (*((int *)__cil_tmp108)) {
          {
          __cil_tmp109 = (unsigned long )pi;
          __cil_tmp110 = __cil_tmp109 + 16;
          __cil_tmp111 = *((int *)__cil_tmp110);
          __cil_tmp112 = (unsigned long )__cil_tmp111;
          __udelay(__cil_tmp112);
          }
        } else {
        }
        }
        {
        __cil_tmp113 = (unsigned long )pi;
        __cil_tmp114 = __cil_tmp113 + 8;
        __cil_tmp115 = *((int *)__cil_tmp114);
        __cil_tmp116 = __cil_tmp115 + 1;
        tmp___0 = inb(__cil_tmp116);
        __cil_tmp117 = (int )tmp___0;
        b = __cil_tmp117 & 255;
        }
      }
      __cil_tmp118 = buf + k;
      __cil_tmp119 = b & 240;
      __cil_tmp120 = a >> 4;
      __cil_tmp121 = __cil_tmp120 & 15;
      __cil_tmp122 = __cil_tmp121 + __cil_tmp119;
      *__cil_tmp118 = (char )__cil_tmp122;
      ph = 1 - ph;
      k = k + 1;
    }
    while_break: ;
    }
    {
    __cil_tmp123 = (unsigned long )pi;
    __cil_tmp124 = __cil_tmp123 + 8;
    __cil_tmp125 = *((int *)__cil_tmp124);
    outb((unsigned char)0, __cil_tmp125);
    }
    {
    __cil_tmp126 = (unsigned long )pi;
    __cil_tmp127 = __cil_tmp126 + 16;
    if (*((int *)__cil_tmp127)) {
      {
      __cil_tmp128 = (unsigned long )pi;
      __cil_tmp129 = __cil_tmp128 + 16;
      __cil_tmp130 = *((int *)__cil_tmp129);
      __cil_tmp131 = (unsigned long )__cil_tmp130;
      __udelay(__cil_tmp131);
      }
    } else {
    }
    }
    {
    __cil_tmp132 = (unsigned long )pi;
    __cil_tmp133 = __cil_tmp132 + 8;
    __cil_tmp134 = *((int *)__cil_tmp133);
    __cil_tmp135 = __cil_tmp134 + 2;
    outb((unsigned char)4, __cil_tmp135);
    }
    {
    __cil_tmp136 = (unsigned long )pi;
    __cil_tmp137 = __cil_tmp136 + 16;
    if (*((int *)__cil_tmp137)) {
      {
      __cil_tmp138 = (unsigned long )pi;
      __cil_tmp139 = __cil_tmp138 + 16;
      __cil_tmp140 = *((int *)__cil_tmp139);
      __cil_tmp141 = (unsigned long )__cil_tmp140;
      __udelay(__cil_tmp141);
      }
    } else {
    }
    }
    goto switch_break;
    case_1:
    {
    __cil_tmp142 = (unsigned long )pi;
    __cil_tmp143 = __cil_tmp142 + 8;
    __cil_tmp144 = *((int *)__cil_tmp143);
    outb((unsigned char)71, __cil_tmp144);
    }
    {
    __cil_tmp145 = (unsigned long )pi;
    __cil_tmp146 = __cil_tmp145 + 16;
    if (*((int *)__cil_tmp146)) {
      {
      __cil_tmp147 = (unsigned long )pi;
      __cil_tmp148 = __cil_tmp147 + 16;
      __cil_tmp149 = *((int *)__cil_tmp148);
      __cil_tmp150 = (unsigned long )__cil_tmp149;
      __udelay(__cil_tmp150);
      }
    } else {
    }
    }
    {
    __cil_tmp151 = (unsigned long )pi;
    __cil_tmp152 = __cil_tmp151 + 8;
    __cil_tmp153 = *((int *)__cil_tmp152);
    __cil_tmp154 = __cil_tmp153 + 2;
    outb((unsigned char)1, __cil_tmp154);
    }
    {
    __cil_tmp155 = (unsigned long )pi;
    __cil_tmp156 = __cil_tmp155 + 16;
    if (*((int *)__cil_tmp156)) {
      {
      __cil_tmp157 = (unsigned long )pi;
      __cil_tmp158 = __cil_tmp157 + 16;
      __cil_tmp159 = *((int *)__cil_tmp158);
      __cil_tmp160 = (unsigned long )__cil_tmp159;
      __udelay(__cil_tmp160);
      }
    } else {
    }
    }
    {
    __cil_tmp161 = (unsigned long )pi;
    __cil_tmp162 = __cil_tmp161 + 8;
    __cil_tmp163 = *((int *)__cil_tmp162);
    __cil_tmp164 = __cil_tmp163 + 2;
    outb((unsigned char)5, __cil_tmp164);
    }
    {
    __cil_tmp165 = (unsigned long )pi;
    __cil_tmp166 = __cil_tmp165 + 16;
    if (*((int *)__cil_tmp166)) {
      {
      __cil_tmp167 = (unsigned long )pi;
      __cil_tmp168 = __cil_tmp167 + 16;
      __cil_tmp169 = *((int *)__cil_tmp168);
      __cil_tmp170 = (unsigned long )__cil_tmp169;
      __udelay(__cil_tmp170);
      }
    } else {
    }
    }
    {
    __cil_tmp171 = (unsigned long )pi;
    __cil_tmp172 = __cil_tmp171 + 8;
    __cil_tmp173 = *((int *)__cil_tmp172);
    outb((unsigned char)255, __cil_tmp173);
    }
    {
    __cil_tmp174 = (unsigned long )pi;
    __cil_tmp175 = __cil_tmp174 + 16;
    if (*((int *)__cil_tmp175)) {
      {
      __cil_tmp176 = (unsigned long )pi;
      __cil_tmp177 = __cil_tmp176 + 16;
      __cil_tmp178 = *((int *)__cil_tmp177);
      __cil_tmp179 = (unsigned long )__cil_tmp178;
      __udelay(__cil_tmp179);
      }
    } else {
    }
    }
    ph = 0;
    k = 0;
    {
    while (1) {
      while_continue___0: ;
      if (k < count) {
      } else {
        goto while_break___0;
      }
      {
      __cil_tmp180 = count - 1;
      if (k == __cil_tmp180) {
        {
        __cil_tmp181 = (unsigned long )pi;
        __cil_tmp182 = __cil_tmp181 + 8;
        __cil_tmp183 = *((int *)__cil_tmp182);
        outb((unsigned char)253, __cil_tmp183);
        }
        {
        __cil_tmp184 = (unsigned long )pi;
        __cil_tmp185 = __cil_tmp184 + 16;
        if (*((int *)__cil_tmp185)) {
          {
          __cil_tmp186 = (unsigned long )pi;
          __cil_tmp187 = __cil_tmp186 + 16;
          __cil_tmp188 = *((int *)__cil_tmp187);
          __cil_tmp189 = (unsigned long )__cil_tmp188;
          __udelay(__cil_tmp189);
          }
        } else {
        }
        }
      } else {
      }
      }
      {
      __cil_tmp190 = 4 + ph;
      __cil_tmp191 = (unsigned char )__cil_tmp190;
      __cil_tmp192 = (unsigned long )pi;
      __cil_tmp193 = __cil_tmp192 + 8;
      __cil_tmp194 = *((int *)__cil_tmp193);
      __cil_tmp195 = __cil_tmp194 + 2;
      outb(__cil_tmp191, __cil_tmp195);
      }
      {
      __cil_tmp196 = (unsigned long )pi;
      __cil_tmp197 = __cil_tmp196 + 16;
      if (*((int *)__cil_tmp197)) {
        {
        __cil_tmp198 = (unsigned long )pi;
        __cil_tmp199 = __cil_tmp198 + 16;
        __cil_tmp200 = *((int *)__cil_tmp199);
        __cil_tmp201 = (unsigned long )__cil_tmp200;
        __udelay(__cil_tmp201);
        }
      } else {
      }
      }
      {
      __cil_tmp202 = (unsigned long )pi;
      __cil_tmp203 = __cil_tmp202 + 16;
      if (*((int *)__cil_tmp203)) {
        {
        __cil_tmp204 = (unsigned long )pi;
        __cil_tmp205 = __cil_tmp204 + 16;
        __cil_tmp206 = *((int *)__cil_tmp205);
        __cil_tmp207 = (unsigned long )__cil_tmp206;
        __udelay(__cil_tmp207);
        }
      } else {
      }
      }
      {
      __cil_tmp208 = (unsigned long )pi;
      __cil_tmp209 = __cil_tmp208 + 8;
      __cil_tmp210 = *((int *)__cil_tmp209);
      __cil_tmp211 = __cil_tmp210 + 1;
      tmp___1 = inb(__cil_tmp211);
      __cil_tmp212 = (int )tmp___1;
      a = __cil_tmp212 & 255;
      }
      {
      __cil_tmp213 = (unsigned long )pi;
      __cil_tmp214 = __cil_tmp213 + 16;
      if (*((int *)__cil_tmp214)) {
        {
        __cil_tmp215 = (unsigned long )pi;
        __cil_tmp216 = __cil_tmp215 + 16;
        __cil_tmp217 = *((int *)__cil_tmp216);
        __cil_tmp218 = (unsigned long )__cil_tmp217;
        __udelay(__cil_tmp218);
        }
      } else {
      }
      }
      {
      __cil_tmp219 = (unsigned long )pi;
      __cil_tmp220 = __cil_tmp219 + 8;
      __cil_tmp221 = *((int *)__cil_tmp220);
      __cil_tmp222 = __cil_tmp221 + 2;
      tmp___2 = inb(__cil_tmp222);
      __cil_tmp223 = (int )tmp___2;
      b = __cil_tmp223 & 255;
      __cil_tmp224 = buf + k;
      __cil_tmp225 = b << 4;
      __cil_tmp226 = __cil_tmp225 & 224;
      __cil_tmp227 = a >> 3;
      __cil_tmp228 = __cil_tmp227 & 31;
      __cil_tmp229 = __cil_tmp228 + __cil_tmp226;
      *__cil_tmp224 = (char )__cil_tmp229;
      ph = 1 - ph;
      k = k + 1;
      }
    }
    while_break___0: ;
    }
    {
    __cil_tmp230 = (unsigned long )pi;
    __cil_tmp231 = __cil_tmp230 + 8;
    __cil_tmp232 = *((int *)__cil_tmp231);
    outb((unsigned char)0, __cil_tmp232);
    }
    {
    __cil_tmp233 = (unsigned long )pi;
    __cil_tmp234 = __cil_tmp233 + 16;
    if (*((int *)__cil_tmp234)) {
      {
      __cil_tmp235 = (unsigned long )pi;
      __cil_tmp236 = __cil_tmp235 + 16;
      __cil_tmp237 = *((int *)__cil_tmp236);
      __cil_tmp238 = (unsigned long )__cil_tmp237;
      __udelay(__cil_tmp238);
      }
    } else {
    }
    }
    {
    __cil_tmp239 = (unsigned long )pi;
    __cil_tmp240 = __cil_tmp239 + 8;
    __cil_tmp241 = *((int *)__cil_tmp240);
    __cil_tmp242 = __cil_tmp241 + 2;
    outb((unsigned char)4, __cil_tmp242);
    }
    {
    __cil_tmp243 = (unsigned long )pi;
    __cil_tmp244 = __cil_tmp243 + 16;
    if (*((int *)__cil_tmp244)) {
      {
      __cil_tmp245 = (unsigned long )pi;
      __cil_tmp246 = __cil_tmp245 + 16;
      __cil_tmp247 = *((int *)__cil_tmp246);
      __cil_tmp248 = (unsigned long )__cil_tmp247;
      __udelay(__cil_tmp248);
      }
    } else {
    }
    }
    goto switch_break;
    case_2:
    {
    __cil_tmp249 = (unsigned long )pi;
    __cil_tmp250 = __cil_tmp249 + 8;
    __cil_tmp251 = *((int *)__cil_tmp250);
    outb((unsigned char)39, __cil_tmp251);
    }
    {
    __cil_tmp252 = (unsigned long )pi;
    __cil_tmp253 = __cil_tmp252 + 16;
    if (*((int *)__cil_tmp253)) {
      {
      __cil_tmp254 = (unsigned long )pi;
      __cil_tmp255 = __cil_tmp254 + 16;
      __cil_tmp256 = *((int *)__cil_tmp255);
      __cil_tmp257 = (unsigned long )__cil_tmp256;
      __udelay(__cil_tmp257);
      }
    } else {
    }
    }
    {
    __cil_tmp258 = (unsigned long )pi;
    __cil_tmp259 = __cil_tmp258 + 8;
    __cil_tmp260 = *((int *)__cil_tmp259);
    __cil_tmp261 = __cil_tmp260 + 2;
    outb((unsigned char)1, __cil_tmp261);
    }
    {
    __cil_tmp262 = (unsigned long )pi;
    __cil_tmp263 = __cil_tmp262 + 16;
    if (*((int *)__cil_tmp263)) {
      {
      __cil_tmp264 = (unsigned long )pi;
      __cil_tmp265 = __cil_tmp264 + 16;
      __cil_tmp266 = *((int *)__cil_tmp265);
      __cil_tmp267 = (unsigned long )__cil_tmp266;
      __udelay(__cil_tmp267);
      }
    } else {
    }
    }
    {
    __cil_tmp268 = (unsigned long )pi;
    __cil_tmp269 = __cil_tmp268 + 8;
    __cil_tmp270 = *((int *)__cil_tmp269);
    __cil_tmp271 = __cil_tmp270 + 2;
    outb((unsigned char)37, __cil_tmp271);
    }
    {
    __cil_tmp272 = (unsigned long )pi;
    __cil_tmp273 = __cil_tmp272 + 16;
    if (*((int *)__cil_tmp273)) {
      {
      __cil_tmp274 = (unsigned long )pi;
      __cil_tmp275 = __cil_tmp274 + 16;
      __cil_tmp276 = *((int *)__cil_tmp275);
      __cil_tmp277 = (unsigned long )__cil_tmp276;
      __udelay(__cil_tmp277);
      }
    } else {
    }
    }
    {
    __cil_tmp278 = (unsigned long )pi;
    __cil_tmp279 = __cil_tmp278 + 8;
    __cil_tmp280 = *((int *)__cil_tmp279);
    outb((unsigned char)0, __cil_tmp280);
    }
    {
    __cil_tmp281 = (unsigned long )pi;
    __cil_tmp282 = __cil_tmp281 + 16;
    if (*((int *)__cil_tmp282)) {
      {
      __cil_tmp283 = (unsigned long )pi;
      __cil_tmp284 = __cil_tmp283 + 16;
      __cil_tmp285 = *((int *)__cil_tmp284);
      __cil_tmp286 = (unsigned long )__cil_tmp285;
      __udelay(__cil_tmp286);
      }
    } else {
    }
    }
    ph = 0;
    k = 0;
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp287 = count - 1;
      if (k < __cil_tmp287) {
      } else {
        goto while_break___1;
      }
      }
      {
      __cil_tmp288 = 36 + ph;
      __cil_tmp289 = (unsigned char )__cil_tmp288;
      __cil_tmp290 = (unsigned long )pi;
      __cil_tmp291 = __cil_tmp290 + 8;
      __cil_tmp292 = *((int *)__cil_tmp291);
      __cil_tmp293 = __cil_tmp292 + 2;
      outb(__cil_tmp289, __cil_tmp293);
      }
      {
      __cil_tmp294 = (unsigned long )pi;
      __cil_tmp295 = __cil_tmp294 + 16;
      if (*((int *)__cil_tmp295)) {
        {
        __cil_tmp296 = (unsigned long )pi;
        __cil_tmp297 = __cil_tmp296 + 16;
        __cil_tmp298 = *((int *)__cil_tmp297);
        __cil_tmp299 = (unsigned long )__cil_tmp298;
        __udelay(__cil_tmp299);
        }
      } else {
      }
      }
      {
      __cil_tmp300 = (unsigned long )pi;
      __cil_tmp301 = __cil_tmp300 + 16;
      if (*((int *)__cil_tmp301)) {
        {
        __cil_tmp302 = (unsigned long )pi;
        __cil_tmp303 = __cil_tmp302 + 16;
        __cil_tmp304 = *((int *)__cil_tmp303);
        __cil_tmp305 = (unsigned long )__cil_tmp304;
        __udelay(__cil_tmp305);
        }
      } else {
      }
      }
      {
      __cil_tmp306 = (unsigned long )pi;
      __cil_tmp307 = __cil_tmp306 + 8;
      __cil_tmp308 = *((int *)__cil_tmp307);
      tmp___3 = inb(__cil_tmp308);
      __cil_tmp309 = buf + k;
      __cil_tmp310 = (int )tmp___3;
      __cil_tmp311 = __cil_tmp310 & 255;
      *__cil_tmp309 = (char )__cil_tmp311;
      ph = 1 - ph;
      k = k + 1;
      }
    }
    while_break___1: ;
    }
    {
    __cil_tmp312 = (unsigned long )pi;
    __cil_tmp313 = __cil_tmp312 + 8;
    __cil_tmp314 = *((int *)__cil_tmp313);
    __cil_tmp315 = __cil_tmp314 + 2;
    outb((unsigned char)38, __cil_tmp315);
    }
    {
    __cil_tmp316 = (unsigned long )pi;
    __cil_tmp317 = __cil_tmp316 + 16;
    if (*((int *)__cil_tmp317)) {
      {
      __cil_tmp318 = (unsigned long )pi;
      __cil_tmp319 = __cil_tmp318 + 16;
      __cil_tmp320 = *((int *)__cil_tmp319);
      __cil_tmp321 = (unsigned long )__cil_tmp320;
      __udelay(__cil_tmp321);
      }
    } else {
    }
    }
    {
    __cil_tmp322 = (unsigned long )pi;
    __cil_tmp323 = __cil_tmp322 + 8;
    __cil_tmp324 = *((int *)__cil_tmp323);
    __cil_tmp325 = __cil_tmp324 + 2;
    outb((unsigned char)39, __cil_tmp325);
    }
    {
    __cil_tmp326 = (unsigned long )pi;
    __cil_tmp327 = __cil_tmp326 + 16;
    if (*((int *)__cil_tmp327)) {
      {
      __cil_tmp328 = (unsigned long )pi;
      __cil_tmp329 = __cil_tmp328 + 16;
      __cil_tmp330 = *((int *)__cil_tmp329);
      __cil_tmp331 = (unsigned long )__cil_tmp330;
      __udelay(__cil_tmp331);
      }
    } else {
    }
    }
    {
    __cil_tmp332 = (unsigned long )pi;
    __cil_tmp333 = __cil_tmp332 + 16;
    if (*((int *)__cil_tmp333)) {
      {
      __cil_tmp334 = (unsigned long )pi;
      __cil_tmp335 = __cil_tmp334 + 16;
      __cil_tmp336 = *((int *)__cil_tmp335);
      __cil_tmp337 = (unsigned long )__cil_tmp336;
      __udelay(__cil_tmp337);
      }
    } else {
    }
    }
    {
    __cil_tmp338 = (unsigned long )pi;
    __cil_tmp339 = __cil_tmp338 + 8;
    __cil_tmp340 = *((int *)__cil_tmp339);
    tmp___4 = inb(__cil_tmp340);
    __cil_tmp341 = count - 1;
    __cil_tmp342 = buf + __cil_tmp341;
    __cil_tmp343 = (int )tmp___4;
    __cil_tmp344 = __cil_tmp343 & 255;
    *__cil_tmp342 = (char )__cil_tmp344;
    __cil_tmp345 = (unsigned long )pi;
    __cil_tmp346 = __cil_tmp345 + 8;
    __cil_tmp347 = *((int *)__cil_tmp346);
    __cil_tmp348 = __cil_tmp347 + 2;
    outb((unsigned char)37, __cil_tmp348);
    }
    {
    __cil_tmp349 = (unsigned long )pi;
    __cil_tmp350 = __cil_tmp349 + 16;
    if (*((int *)__cil_tmp350)) {
      {
      __cil_tmp351 = (unsigned long )pi;
      __cil_tmp352 = __cil_tmp351 + 16;
      __cil_tmp353 = *((int *)__cil_tmp352);
      __cil_tmp354 = (unsigned long )__cil_tmp353;
      __udelay(__cil_tmp354);
      }
    } else {
    }
    }
    {
    __cil_tmp355 = (unsigned long )pi;
    __cil_tmp356 = __cil_tmp355 + 8;
    __cil_tmp357 = *((int *)__cil_tmp356);
    __cil_tmp358 = __cil_tmp357 + 2;
    outb((unsigned char)4, __cil_tmp358);
    }
    {
    __cil_tmp359 = (unsigned long )pi;
    __cil_tmp360 = __cil_tmp359 + 16;
    if (*((int *)__cil_tmp360)) {
      {
      __cil_tmp361 = (unsigned long )pi;
      __cil_tmp362 = __cil_tmp361 + 16;
      __cil_tmp363 = *((int *)__cil_tmp362);
      __cil_tmp364 = (unsigned long )__cil_tmp363;
      __udelay(__cil_tmp364);
      }
    } else {
    }
    }
    goto switch_break;
    case_3:
    {
    __cil_tmp365 = (unsigned long )pi;
    __cil_tmp366 = __cil_tmp365 + 8;
    __cil_tmp367 = *((int *)__cil_tmp366);
    __cil_tmp368 = __cil_tmp367 + 3;
    outb((unsigned char)128, __cil_tmp368);
    }
    {
    __cil_tmp369 = (unsigned long )pi;
    __cil_tmp370 = __cil_tmp369 + 16;
    if (*((int *)__cil_tmp370)) {
      {
      __cil_tmp371 = (unsigned long )pi;
      __cil_tmp372 = __cil_tmp371 + 16;
      __cil_tmp373 = *((int *)__cil_tmp372);
      __cil_tmp374 = (unsigned long )__cil_tmp373;
      __udelay(__cil_tmp374);
      }
    } else {
    }
    }
    {
    __cil_tmp375 = (unsigned long )pi;
    __cil_tmp376 = __cil_tmp375 + 8;
    __cil_tmp377 = *((int *)__cil_tmp376);
    __cil_tmp378 = __cil_tmp377 + 2;
    outb((unsigned char)36, __cil_tmp378);
    }
    {
    __cil_tmp379 = (unsigned long )pi;
    __cil_tmp380 = __cil_tmp379 + 16;
    if (*((int *)__cil_tmp380)) {
      {
      __cil_tmp381 = (unsigned long )pi;
      __cil_tmp382 = __cil_tmp381 + 16;
      __cil_tmp383 = *((int *)__cil_tmp382);
      __cil_tmp384 = (unsigned long )__cil_tmp383;
      __udelay(__cil_tmp384);
      }
    } else {
    }
    }
    k = 0;
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp385 = count - 1;
      if (k < __cil_tmp385) {
      } else {
        goto while_break___2;
      }
      }
      {
      __cil_tmp386 = (unsigned long )pi;
      __cil_tmp387 = __cil_tmp386 + 16;
      if (*((int *)__cil_tmp387)) {
        {
        __cil_tmp388 = (unsigned long )pi;
        __cil_tmp389 = __cil_tmp388 + 16;
        __cil_tmp390 = *((int *)__cil_tmp389);
        __cil_tmp391 = (unsigned long )__cil_tmp390;
        __udelay(__cil_tmp391);
        }
      } else {
      }
      }
      {
      __cil_tmp392 = (unsigned long )pi;
      __cil_tmp393 = __cil_tmp392 + 8;
      __cil_tmp394 = *((int *)__cil_tmp393);
      __cil_tmp395 = __cil_tmp394 + 4;
      tmp___5 = inb(__cil_tmp395);
      __cil_tmp396 = buf + k;
      __cil_tmp397 = (int )tmp___5;
      __cil_tmp398 = __cil_tmp397 & 255;
      *__cil_tmp396 = (char )__cil_tmp398;
      k = k + 1;
      }
    }
    while_break___2: ;
    }
    {
    __cil_tmp399 = (unsigned long )pi;
    __cil_tmp400 = __cil_tmp399 + 8;
    __cil_tmp401 = *((int *)__cil_tmp400);
    __cil_tmp402 = __cil_tmp401 + 2;
    outb((unsigned char)4, __cil_tmp402);
    }
    {
    __cil_tmp403 = (unsigned long )pi;
    __cil_tmp404 = __cil_tmp403 + 16;
    if (*((int *)__cil_tmp404)) {
      {
      __cil_tmp405 = (unsigned long )pi;
      __cil_tmp406 = __cil_tmp405 + 16;
      __cil_tmp407 = *((int *)__cil_tmp406);
      __cil_tmp408 = (unsigned long )__cil_tmp407;
      __udelay(__cil_tmp408);
      }
    } else {
    }
    }
    {
    __cil_tmp409 = (unsigned long )pi;
    __cil_tmp410 = __cil_tmp409 + 8;
    __cil_tmp411 = *((int *)__cil_tmp410);
    __cil_tmp412 = __cil_tmp411 + 3;
    outb((unsigned char)160, __cil_tmp412);
    }
    {
    __cil_tmp413 = (unsigned long )pi;
    __cil_tmp414 = __cil_tmp413 + 16;
    if (*((int *)__cil_tmp414)) {
      {
      __cil_tmp415 = (unsigned long )pi;
      __cil_tmp416 = __cil_tmp415 + 16;
      __cil_tmp417 = *((int *)__cil_tmp416);
      __cil_tmp418 = (unsigned long )__cil_tmp417;
      __udelay(__cil_tmp418);
      }
    } else {
    }
    }
    {
    __cil_tmp419 = (unsigned long )pi;
    __cil_tmp420 = __cil_tmp419 + 8;
    __cil_tmp421 = *((int *)__cil_tmp420);
    __cil_tmp422 = __cil_tmp421 + 2;
    outb((unsigned char)36, __cil_tmp422);
    }
    {
    __cil_tmp423 = (unsigned long )pi;
    __cil_tmp424 = __cil_tmp423 + 16;
    if (*((int *)__cil_tmp424)) {
      {
      __cil_tmp425 = (unsigned long )pi;
      __cil_tmp426 = __cil_tmp425 + 16;
      __cil_tmp427 = *((int *)__cil_tmp426);
      __cil_tmp428 = (unsigned long )__cil_tmp427;
      __udelay(__cil_tmp428);
      }
    } else {
    }
    }
    {
    __cil_tmp429 = (unsigned long )pi;
    __cil_tmp430 = __cil_tmp429 + 16;
    if (*((int *)__cil_tmp430)) {
      {
      __cil_tmp431 = (unsigned long )pi;
      __cil_tmp432 = __cil_tmp431 + 16;
      __cil_tmp433 = *((int *)__cil_tmp432);
      __cil_tmp434 = (unsigned long )__cil_tmp433;
      __udelay(__cil_tmp434);
      }
    } else {
    }
    }
    {
    __cil_tmp435 = (unsigned long )pi;
    __cil_tmp436 = __cil_tmp435 + 8;
    __cil_tmp437 = *((int *)__cil_tmp436);
    __cil_tmp438 = __cil_tmp437 + 4;
    tmp___6 = inb(__cil_tmp438);
    __cil_tmp439 = count - 1;
    __cil_tmp440 = buf + __cil_tmp439;
    __cil_tmp441 = (int )tmp___6;
    __cil_tmp442 = __cil_tmp441 & 255;
    *__cil_tmp440 = (char )__cil_tmp442;
    __cil_tmp443 = (unsigned long )pi;
    __cil_tmp444 = __cil_tmp443 + 8;
    __cil_tmp445 = *((int *)__cil_tmp444);
    __cil_tmp446 = __cil_tmp445 + 2;
    outb((unsigned char)4, __cil_tmp446);
    }
    {
    __cil_tmp447 = (unsigned long )pi;
    __cil_tmp448 = __cil_tmp447 + 16;
    if (*((int *)__cil_tmp448)) {
      {
      __cil_tmp449 = (unsigned long )pi;
      __cil_tmp450 = __cil_tmp449 + 16;
      __cil_tmp451 = *((int *)__cil_tmp450);
      __cil_tmp452 = (unsigned long )__cil_tmp451;
      __udelay(__cil_tmp452);
      }
    } else {
    }
    }
    goto switch_break;
    case_4:
    {
    __cil_tmp453 = (unsigned long )pi;
    __cil_tmp454 = __cil_tmp453 + 8;
    __cil_tmp455 = *((int *)__cil_tmp454);
    __cil_tmp456 = __cil_tmp455 + 3;
    outb((unsigned char)128, __cil_tmp456);
    }
    {
    __cil_tmp457 = (unsigned long )pi;
    __cil_tmp458 = __cil_tmp457 + 16;
    if (*((int *)__cil_tmp458)) {
      {
      __cil_tmp459 = (unsigned long )pi;
      __cil_tmp460 = __cil_tmp459 + 16;
      __cil_tmp461 = *((int *)__cil_tmp460);
      __cil_tmp462 = (unsigned long )__cil_tmp461;
      __udelay(__cil_tmp462);
      }
    } else {
    }
    }
    {
    __cil_tmp463 = (unsigned long )pi;
    __cil_tmp464 = __cil_tmp463 + 8;
    __cil_tmp465 = *((int *)__cil_tmp464);
    __cil_tmp466 = __cil_tmp465 + 2;
    outb((unsigned char)36, __cil_tmp466);
    }
    {
    __cil_tmp467 = (unsigned long )pi;
    __cil_tmp468 = __cil_tmp467 + 16;
    if (*((int *)__cil_tmp468)) {
      {
      __cil_tmp469 = (unsigned long )pi;
      __cil_tmp470 = __cil_tmp469 + 16;
      __cil_tmp471 = *((int *)__cil_tmp470);
      __cil_tmp472 = (unsigned long )__cil_tmp471;
      __udelay(__cil_tmp472);
      }
    } else {
    }
    }
    k = 0;
    {
    while (1) {
      while_continue___3: ;
      {
      __cil_tmp473 = count / 2;
      __cil_tmp474 = __cil_tmp473 - 1;
      if (k < __cil_tmp474) {
      } else {
        goto while_break___3;
      }
      }
      {
      __cil_tmp475 = (unsigned long )pi;
      __cil_tmp476 = __cil_tmp475 + 16;
      if (*((int *)__cil_tmp476)) {
        {
        __cil_tmp477 = (unsigned long )pi;
        __cil_tmp478 = __cil_tmp477 + 16;
        __cil_tmp479 = *((int *)__cil_tmp478);
        __cil_tmp480 = (unsigned long )__cil_tmp479;
        __udelay(__cil_tmp480);
        }
      } else {
      }
      }
      {
      __cil_tmp481 = (unsigned long )pi;
      __cil_tmp482 = __cil_tmp481 + 8;
      __cil_tmp483 = *((int *)__cil_tmp482);
      __cil_tmp484 = __cil_tmp483 + 4;
      tmp___7 = inw(__cil_tmp484);
      __cil_tmp485 = (u16 *)buf;
      __cil_tmp486 = __cil_tmp485 + k;
      __cil_tmp487 = (int )tmp___7;
      __cil_tmp488 = __cil_tmp487 & 65535;
      *__cil_tmp486 = (u16 )__cil_tmp488;
      k = k + 1;
      }
    }
    while_break___3: ;
    }
    {
    __cil_tmp489 = (unsigned long )pi;
    __cil_tmp490 = __cil_tmp489 + 16;
    if (*((int *)__cil_tmp490)) {
      {
      __cil_tmp491 = (unsigned long )pi;
      __cil_tmp492 = __cil_tmp491 + 16;
      __cil_tmp493 = *((int *)__cil_tmp492);
      __cil_tmp494 = (unsigned long )__cil_tmp493;
      __udelay(__cil_tmp494);
      }
    } else {
    }
    }
    {
    __cil_tmp495 = (unsigned long )pi;
    __cil_tmp496 = __cil_tmp495 + 8;
    __cil_tmp497 = *((int *)__cil_tmp496);
    __cil_tmp498 = __cil_tmp497 + 4;
    tmp___8 = inb(__cil_tmp498);
    __cil_tmp499 = count - 2;
    __cil_tmp500 = buf + __cil_tmp499;
    __cil_tmp501 = (int )tmp___8;
    __cil_tmp502 = __cil_tmp501 & 255;
    *__cil_tmp500 = (char )__cil_tmp502;
    __cil_tmp503 = (unsigned long )pi;
    __cil_tmp504 = __cil_tmp503 + 8;
    __cil_tmp505 = *((int *)__cil_tmp504);
    __cil_tmp506 = __cil_tmp505 + 2;
    outb((unsigned char)4, __cil_tmp506);
    }
    {
    __cil_tmp507 = (unsigned long )pi;
    __cil_tmp508 = __cil_tmp507 + 16;
    if (*((int *)__cil_tmp508)) {
      {
      __cil_tmp509 = (unsigned long )pi;
      __cil_tmp510 = __cil_tmp509 + 16;
      __cil_tmp511 = *((int *)__cil_tmp510);
      __cil_tmp512 = (unsigned long )__cil_tmp511;
      __udelay(__cil_tmp512);
      }
    } else {
    }
    }
    {
    __cil_tmp513 = (unsigned long )pi;
    __cil_tmp514 = __cil_tmp513 + 8;
    __cil_tmp515 = *((int *)__cil_tmp514);
    __cil_tmp516 = __cil_tmp515 + 3;
    outb((unsigned char)160, __cil_tmp516);
    }
    {
    __cil_tmp517 = (unsigned long )pi;
    __cil_tmp518 = __cil_tmp517 + 16;
    if (*((int *)__cil_tmp518)) {
      {
      __cil_tmp519 = (unsigned long )pi;
      __cil_tmp520 = __cil_tmp519 + 16;
      __cil_tmp521 = *((int *)__cil_tmp520);
      __cil_tmp522 = (unsigned long )__cil_tmp521;
      __udelay(__cil_tmp522);
      }
    } else {
    }
    }
    {
    __cil_tmp523 = (unsigned long )pi;
    __cil_tmp524 = __cil_tmp523 + 8;
    __cil_tmp525 = *((int *)__cil_tmp524);
    __cil_tmp526 = __cil_tmp525 + 2;
    outb((unsigned char)36, __cil_tmp526);
    }
    {
    __cil_tmp527 = (unsigned long )pi;
    __cil_tmp528 = __cil_tmp527 + 16;
    if (*((int *)__cil_tmp528)) {
      {
      __cil_tmp529 = (unsigned long )pi;
      __cil_tmp530 = __cil_tmp529 + 16;
      __cil_tmp531 = *((int *)__cil_tmp530);
      __cil_tmp532 = (unsigned long )__cil_tmp531;
      __udelay(__cil_tmp532);
      }
    } else {
    }
    }
    {
    __cil_tmp533 = (unsigned long )pi;
    __cil_tmp534 = __cil_tmp533 + 16;
    if (*((int *)__cil_tmp534)) {
      {
      __cil_tmp535 = (unsigned long )pi;
      __cil_tmp536 = __cil_tmp535 + 16;
      __cil_tmp537 = *((int *)__cil_tmp536);
      __cil_tmp538 = (unsigned long )__cil_tmp537;
      __udelay(__cil_tmp538);
      }
    } else {
    }
    }
    {
    __cil_tmp539 = (unsigned long )pi;
    __cil_tmp540 = __cil_tmp539 + 8;
    __cil_tmp541 = *((int *)__cil_tmp540);
    __cil_tmp542 = __cil_tmp541 + 4;
    tmp___9 = inb(__cil_tmp542);
    __cil_tmp543 = count - 1;
    __cil_tmp544 = buf + __cil_tmp543;
    __cil_tmp545 = (int )tmp___9;
    __cil_tmp546 = __cil_tmp545 & 255;
    *__cil_tmp544 = (char )__cil_tmp546;
    __cil_tmp547 = (unsigned long )pi;
    __cil_tmp548 = __cil_tmp547 + 8;
    __cil_tmp549 = *((int *)__cil_tmp548);
    __cil_tmp550 = __cil_tmp549 + 2;
    outb((unsigned char)4, __cil_tmp550);
    }
    {
    __cil_tmp551 = (unsigned long )pi;
    __cil_tmp552 = __cil_tmp551 + 16;
    if (*((int *)__cil_tmp552)) {
      {
      __cil_tmp553 = (unsigned long )pi;
      __cil_tmp554 = __cil_tmp553 + 16;
      __cil_tmp555 = *((int *)__cil_tmp554);
      __cil_tmp556 = (unsigned long )__cil_tmp555;
      __udelay(__cil_tmp556);
      }
    } else {
    }
    }
    goto switch_break;
    case_5:
    {
    __cil_tmp557 = (unsigned long )pi;
    __cil_tmp558 = __cil_tmp557 + 8;
    __cil_tmp559 = *((int *)__cil_tmp558);
    __cil_tmp560 = __cil_tmp559 + 3;
    outb((unsigned char)128, __cil_tmp560);
    }
    {
    __cil_tmp561 = (unsigned long )pi;
    __cil_tmp562 = __cil_tmp561 + 16;
    if (*((int *)__cil_tmp562)) {
      {
      __cil_tmp563 = (unsigned long )pi;
      __cil_tmp564 = __cil_tmp563 + 16;
      __cil_tmp565 = *((int *)__cil_tmp564);
      __cil_tmp566 = (unsigned long )__cil_tmp565;
      __udelay(__cil_tmp566);
      }
    } else {
    }
    }
    {
    __cil_tmp567 = (unsigned long )pi;
    __cil_tmp568 = __cil_tmp567 + 8;
    __cil_tmp569 = *((int *)__cil_tmp568);
    __cil_tmp570 = __cil_tmp569 + 2;
    outb((unsigned char)36, __cil_tmp570);
    }
    {
    __cil_tmp571 = (unsigned long )pi;
    __cil_tmp572 = __cil_tmp571 + 16;
    if (*((int *)__cil_tmp572)) {
      {
      __cil_tmp573 = (unsigned long )pi;
      __cil_tmp574 = __cil_tmp573 + 16;
      __cil_tmp575 = *((int *)__cil_tmp574);
      __cil_tmp576 = (unsigned long )__cil_tmp575;
      __udelay(__cil_tmp576);
      }
    } else {
    }
    }
    k = 0;
    {
    while (1) {
      while_continue___4: ;
      {
      __cil_tmp577 = count / 4;
      __cil_tmp578 = __cil_tmp577 - 1;
      if (k < __cil_tmp578) {
      } else {
        goto while_break___4;
      }
      }
      {
      __cil_tmp579 = (unsigned long )pi;
      __cil_tmp580 = __cil_tmp579 + 16;
      if (*((int *)__cil_tmp580)) {
        {
        __cil_tmp581 = (unsigned long )pi;
        __cil_tmp582 = __cil_tmp581 + 16;
        __cil_tmp583 = *((int *)__cil_tmp582);
        __cil_tmp584 = (unsigned long )__cil_tmp583;
        __udelay(__cil_tmp584);
        }
      } else {
      }
      }
      {
      __cil_tmp585 = (unsigned long )pi;
      __cil_tmp586 = __cil_tmp585 + 8;
      __cil_tmp587 = *((int *)__cil_tmp586);
      __cil_tmp588 = __cil_tmp587 + 4;
      tmp___10 = inl(__cil_tmp588);
      __cil_tmp589 = (u32 *)buf;
      __cil_tmp590 = __cil_tmp589 + k;
      *__cil_tmp590 = tmp___10 & 4294967295U;
      k = k + 1;
      }
    }
    while_break___4: ;
    }
    k = count - 4;
    {
    while (1) {
      while_continue___5: ;
      {
      __cil_tmp591 = count - 1;
      if (k < __cil_tmp591) {
      } else {
        goto while_break___5;
      }
      }
      {
      __cil_tmp592 = (unsigned long )pi;
      __cil_tmp593 = __cil_tmp592 + 16;
      if (*((int *)__cil_tmp593)) {
        {
        __cil_tmp594 = (unsigned long )pi;
        __cil_tmp595 = __cil_tmp594 + 16;
        __cil_tmp596 = *((int *)__cil_tmp595);
        __cil_tmp597 = (unsigned long )__cil_tmp596;
        __udelay(__cil_tmp597);
        }
      } else {
      }
      }
      {
      __cil_tmp598 = (unsigned long )pi;
      __cil_tmp599 = __cil_tmp598 + 8;
      __cil_tmp600 = *((int *)__cil_tmp599);
      __cil_tmp601 = __cil_tmp600 + 4;
      tmp___11 = inb(__cil_tmp601);
      __cil_tmp602 = buf + k;
      __cil_tmp603 = (int )tmp___11;
      __cil_tmp604 = __cil_tmp603 & 255;
      *__cil_tmp602 = (char )__cil_tmp604;
      k = k + 1;
      }
    }
    while_break___5: ;
    }
    {
    __cil_tmp605 = (unsigned long )pi;
    __cil_tmp606 = __cil_tmp605 + 8;
    __cil_tmp607 = *((int *)__cil_tmp606);
    __cil_tmp608 = __cil_tmp607 + 2;
    outb((unsigned char)4, __cil_tmp608);
    }
    {
    __cil_tmp609 = (unsigned long )pi;
    __cil_tmp610 = __cil_tmp609 + 16;
    if (*((int *)__cil_tmp610)) {
      {
      __cil_tmp611 = (unsigned long )pi;
      __cil_tmp612 = __cil_tmp611 + 16;
      __cil_tmp613 = *((int *)__cil_tmp612);
      __cil_tmp614 = (unsigned long )__cil_tmp613;
      __udelay(__cil_tmp614);
      }
    } else {
    }
    }
    {
    __cil_tmp615 = (unsigned long )pi;
    __cil_tmp616 = __cil_tmp615 + 8;
    __cil_tmp617 = *((int *)__cil_tmp616);
    __cil_tmp618 = __cil_tmp617 + 3;
    outb((unsigned char)160, __cil_tmp618);
    }
    {
    __cil_tmp619 = (unsigned long )pi;
    __cil_tmp620 = __cil_tmp619 + 16;
    if (*((int *)__cil_tmp620)) {
      {
      __cil_tmp621 = (unsigned long )pi;
      __cil_tmp622 = __cil_tmp621 + 16;
      __cil_tmp623 = *((int *)__cil_tmp622);
      __cil_tmp624 = (unsigned long )__cil_tmp623;
      __udelay(__cil_tmp624);
      }
    } else {
    }
    }
    {
    __cil_tmp625 = (unsigned long )pi;
    __cil_tmp626 = __cil_tmp625 + 8;
    __cil_tmp627 = *((int *)__cil_tmp626);
    __cil_tmp628 = __cil_tmp627 + 2;
    outb((unsigned char)36, __cil_tmp628);
    }
    {
    __cil_tmp629 = (unsigned long )pi;
    __cil_tmp630 = __cil_tmp629 + 16;
    if (*((int *)__cil_tmp630)) {
      {
      __cil_tmp631 = (unsigned long )pi;
      __cil_tmp632 = __cil_tmp631 + 16;
      __cil_tmp633 = *((int *)__cil_tmp632);
      __cil_tmp634 = (unsigned long )__cil_tmp633;
      __udelay(__cil_tmp634);
      }
    } else {
    }
    }
    {
    __cil_tmp635 = (unsigned long )pi;
    __cil_tmp636 = __cil_tmp635 + 16;
    if (*((int *)__cil_tmp636)) {
      {
      __cil_tmp637 = (unsigned long )pi;
      __cil_tmp638 = __cil_tmp637 + 16;
      __cil_tmp639 = *((int *)__cil_tmp638);
      __cil_tmp640 = (unsigned long )__cil_tmp639;
      __udelay(__cil_tmp640);
      }
    } else {
    }
    }
    {
    __cil_tmp641 = (unsigned long )pi;
    __cil_tmp642 = __cil_tmp641 + 8;
    __cil_tmp643 = *((int *)__cil_tmp642);
    __cil_tmp644 = __cil_tmp643 + 4;
    tmp___12 = inb(__cil_tmp644);
    __cil_tmp645 = count - 1;
    __cil_tmp646 = buf + __cil_tmp645;
    __cil_tmp647 = (int )tmp___12;
    __cil_tmp648 = __cil_tmp647 & 255;
    *__cil_tmp646 = (char )__cil_tmp648;
    __cil_tmp649 = (unsigned long )pi;
    __cil_tmp650 = __cil_tmp649 + 8;
    __cil_tmp651 = *((int *)__cil_tmp650);
    __cil_tmp652 = __cil_tmp651 + 2;
    outb((unsigned char)4, __cil_tmp652);
    }
    {
    __cil_tmp653 = (unsigned long )pi;
    __cil_tmp654 = __cil_tmp653 + 16;
    if (*((int *)__cil_tmp654)) {
      {
      __cil_tmp655 = (unsigned long )pi;
      __cil_tmp656 = __cil_tmp655 + 16;
      __cil_tmp657 = *((int *)__cil_tmp656);
      __cil_tmp658 = (unsigned long )__cil_tmp657;
      __udelay(__cil_tmp658);
      }
    } else {
    }
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  return;
}
}
static void epat_write_block(PIA *pi , char *buf , int count )
{ int ph ;
  int k ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  char *__cil_tmp37 ;
  char __cil_tmp38 ;
  unsigned char __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned char __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  int __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  int __cil_tmp83 ;
  int __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  int __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  char *__cil_tmp91 ;
  char __cil_tmp92 ;
  unsigned char __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  int __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  int __cil_tmp106 ;
  int __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  int __cil_tmp116 ;
  int __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  int __cil_tmp124 ;
  u16 *__cil_tmp125 ;
  u16 *__cil_tmp126 ;
  u16 __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  int __cil_tmp130 ;
  int __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  int __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  int __cil_tmp140 ;
  int __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  int __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  int __cil_tmp150 ;
  int __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  int __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  int __cil_tmp158 ;
  u32 *__cil_tmp159 ;
  u32 *__cil_tmp160 ;
  u32 __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  int __cil_tmp164 ;
  int __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  int __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  int __cil_tmp174 ;
  int __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  int __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  {
  {
  __cil_tmp6 = (unsigned long )pi;
  __cil_tmp7 = __cil_tmp6 + 12;
  if (*((int *)__cil_tmp7) == 0) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp7) == 1) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp7) == 2) {
    goto case_0;
  } else
  if (*((int *)__cil_tmp7) == 3) {
    goto case_3;
  } else
  if (*((int *)__cil_tmp7) == 4) {
    goto case_4;
  } else
  if (*((int *)__cil_tmp7) == 5) {
    goto case_5;
  } else
  if (0) {
    case_0:
    case_1:
    case_2:
    {
    __cil_tmp8 = (unsigned long )pi;
    __cil_tmp9 = __cil_tmp8 + 8;
    __cil_tmp10 = *((int *)__cil_tmp9);
    outb((unsigned char)103, __cil_tmp10);
    }
    {
    __cil_tmp11 = (unsigned long )pi;
    __cil_tmp12 = __cil_tmp11 + 16;
    if (*((int *)__cil_tmp12)) {
      {
      __cil_tmp13 = (unsigned long )pi;
      __cil_tmp14 = __cil_tmp13 + 16;
      __cil_tmp15 = *((int *)__cil_tmp14);
      __cil_tmp16 = (unsigned long )__cil_tmp15;
      __udelay(__cil_tmp16);
      }
    } else {
    }
    }
    {
    __cil_tmp17 = (unsigned long )pi;
    __cil_tmp18 = __cil_tmp17 + 8;
    __cil_tmp19 = *((int *)__cil_tmp18);
    __cil_tmp20 = __cil_tmp19 + 2;
    outb((unsigned char)1, __cil_tmp20);
    }
    {
    __cil_tmp21 = (unsigned long )pi;
    __cil_tmp22 = __cil_tmp21 + 16;
    if (*((int *)__cil_tmp22)) {
      {
      __cil_tmp23 = (unsigned long )pi;
      __cil_tmp24 = __cil_tmp23 + 16;
      __cil_tmp25 = *((int *)__cil_tmp24);
      __cil_tmp26 = (unsigned long )__cil_tmp25;
      __udelay(__cil_tmp26);
      }
    } else {
    }
    }
    {
    __cil_tmp27 = (unsigned long )pi;
    __cil_tmp28 = __cil_tmp27 + 8;
    __cil_tmp29 = *((int *)__cil_tmp28);
    __cil_tmp30 = __cil_tmp29 + 2;
    outb((unsigned char)5, __cil_tmp30);
    }
    {
    __cil_tmp31 = (unsigned long )pi;
    __cil_tmp32 = __cil_tmp31 + 16;
    if (*((int *)__cil_tmp32)) {
      {
      __cil_tmp33 = (unsigned long )pi;
      __cil_tmp34 = __cil_tmp33 + 16;
      __cil_tmp35 = *((int *)__cil_tmp34);
      __cil_tmp36 = (unsigned long )__cil_tmp35;
      __udelay(__cil_tmp36);
      }
    } else {
    }
    }
    ph = 0;
    k = 0;
    {
    while (1) {
      while_continue: ;
      if (k < count) {
      } else {
        goto while_break;
      }
      {
      __cil_tmp37 = buf + k;
      __cil_tmp38 = *__cil_tmp37;
      __cil_tmp39 = (unsigned char )__cil_tmp38;
      __cil_tmp40 = (unsigned long )pi;
      __cil_tmp41 = __cil_tmp40 + 8;
      __cil_tmp42 = *((int *)__cil_tmp41);
      outb(__cil_tmp39, __cil_tmp42);
      }
      {
      __cil_tmp43 = (unsigned long )pi;
      __cil_tmp44 = __cil_tmp43 + 16;
      if (*((int *)__cil_tmp44)) {
        {
        __cil_tmp45 = (unsigned long )pi;
        __cil_tmp46 = __cil_tmp45 + 16;
        __cil_tmp47 = *((int *)__cil_tmp46);
        __cil_tmp48 = (unsigned long )__cil_tmp47;
        __udelay(__cil_tmp48);
        }
      } else {
      }
      }
      {
      __cil_tmp49 = 4 + ph;
      __cil_tmp50 = (unsigned char )__cil_tmp49;
      __cil_tmp51 = (unsigned long )pi;
      __cil_tmp52 = __cil_tmp51 + 8;
      __cil_tmp53 = *((int *)__cil_tmp52);
      __cil_tmp54 = __cil_tmp53 + 2;
      outb(__cil_tmp50, __cil_tmp54);
      }
      {
      __cil_tmp55 = (unsigned long )pi;
      __cil_tmp56 = __cil_tmp55 + 16;
      if (*((int *)__cil_tmp56)) {
        {
        __cil_tmp57 = (unsigned long )pi;
        __cil_tmp58 = __cil_tmp57 + 16;
        __cil_tmp59 = *((int *)__cil_tmp58);
        __cil_tmp60 = (unsigned long )__cil_tmp59;
        __udelay(__cil_tmp60);
        }
      } else {
      }
      }
      ph = 1 - ph;
      k = k + 1;
    }
    while_break: ;
    }
    {
    __cil_tmp61 = (unsigned long )pi;
    __cil_tmp62 = __cil_tmp61 + 8;
    __cil_tmp63 = *((int *)__cil_tmp62);
    __cil_tmp64 = __cil_tmp63 + 2;
    outb((unsigned char)7, __cil_tmp64);
    }
    {
    __cil_tmp65 = (unsigned long )pi;
    __cil_tmp66 = __cil_tmp65 + 16;
    if (*((int *)__cil_tmp66)) {
      {
      __cil_tmp67 = (unsigned long )pi;
      __cil_tmp68 = __cil_tmp67 + 16;
      __cil_tmp69 = *((int *)__cil_tmp68);
      __cil_tmp70 = (unsigned long )__cil_tmp69;
      __udelay(__cil_tmp70);
      }
    } else {
    }
    }
    {
    __cil_tmp71 = (unsigned long )pi;
    __cil_tmp72 = __cil_tmp71 + 8;
    __cil_tmp73 = *((int *)__cil_tmp72);
    __cil_tmp74 = __cil_tmp73 + 2;
    outb((unsigned char)4, __cil_tmp74);
    }
    {
    __cil_tmp75 = (unsigned long )pi;
    __cil_tmp76 = __cil_tmp75 + 16;
    if (*((int *)__cil_tmp76)) {
      {
      __cil_tmp77 = (unsigned long )pi;
      __cil_tmp78 = __cil_tmp77 + 16;
      __cil_tmp79 = *((int *)__cil_tmp78);
      __cil_tmp80 = (unsigned long )__cil_tmp79;
      __udelay(__cil_tmp80);
      }
    } else {
    }
    }
    goto switch_break;
    case_3:
    {
    __cil_tmp81 = (unsigned long )pi;
    __cil_tmp82 = __cil_tmp81 + 8;
    __cil_tmp83 = *((int *)__cil_tmp82);
    __cil_tmp84 = __cil_tmp83 + 3;
    outb((unsigned char)192, __cil_tmp84);
    }
    {
    __cil_tmp85 = (unsigned long )pi;
    __cil_tmp86 = __cil_tmp85 + 16;
    if (*((int *)__cil_tmp86)) {
      {
      __cil_tmp87 = (unsigned long )pi;
      __cil_tmp88 = __cil_tmp87 + 16;
      __cil_tmp89 = *((int *)__cil_tmp88);
      __cil_tmp90 = (unsigned long )__cil_tmp89;
      __udelay(__cil_tmp90);
      }
    } else {
    }
    }
    k = 0;
    {
    while (1) {
      while_continue___0: ;
      if (k < count) {
      } else {
        goto while_break___0;
      }
      {
      __cil_tmp91 = buf + k;
      __cil_tmp92 = *__cil_tmp91;
      __cil_tmp93 = (unsigned char )__cil_tmp92;
      __cil_tmp94 = (unsigned long )pi;
      __cil_tmp95 = __cil_tmp94 + 8;
      __cil_tmp96 = *((int *)__cil_tmp95);
      __cil_tmp97 = __cil_tmp96 + 4;
      outb(__cil_tmp93, __cil_tmp97);
      }
      {
      __cil_tmp98 = (unsigned long )pi;
      __cil_tmp99 = __cil_tmp98 + 16;
      if (*((int *)__cil_tmp99)) {
        {
        __cil_tmp100 = (unsigned long )pi;
        __cil_tmp101 = __cil_tmp100 + 16;
        __cil_tmp102 = *((int *)__cil_tmp101);
        __cil_tmp103 = (unsigned long )__cil_tmp102;
        __udelay(__cil_tmp103);
        }
      } else {
      }
      }
      k = k + 1;
    }
    while_break___0: ;
    }
    {
    __cil_tmp104 = (unsigned long )pi;
    __cil_tmp105 = __cil_tmp104 + 8;
    __cil_tmp106 = *((int *)__cil_tmp105);
    __cil_tmp107 = __cil_tmp106 + 2;
    outb((unsigned char)4, __cil_tmp107);
    }
    {
    __cil_tmp108 = (unsigned long )pi;
    __cil_tmp109 = __cil_tmp108 + 16;
    if (*((int *)__cil_tmp109)) {
      {
      __cil_tmp110 = (unsigned long )pi;
      __cil_tmp111 = __cil_tmp110 + 16;
      __cil_tmp112 = *((int *)__cil_tmp111);
      __cil_tmp113 = (unsigned long )__cil_tmp112;
      __udelay(__cil_tmp113);
      }
    } else {
    }
    }
    goto switch_break;
    case_4:
    {
    __cil_tmp114 = (unsigned long )pi;
    __cil_tmp115 = __cil_tmp114 + 8;
    __cil_tmp116 = *((int *)__cil_tmp115);
    __cil_tmp117 = __cil_tmp116 + 3;
    outb((unsigned char)192, __cil_tmp117);
    }
    {
    __cil_tmp118 = (unsigned long )pi;
    __cil_tmp119 = __cil_tmp118 + 16;
    if (*((int *)__cil_tmp119)) {
      {
      __cil_tmp120 = (unsigned long )pi;
      __cil_tmp121 = __cil_tmp120 + 16;
      __cil_tmp122 = *((int *)__cil_tmp121);
      __cil_tmp123 = (unsigned long )__cil_tmp122;
      __udelay(__cil_tmp123);
      }
    } else {
    }
    }
    k = 0;
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp124 = count / 2;
      if (k < __cil_tmp124) {
      } else {
        goto while_break___1;
      }
      }
      {
      __cil_tmp125 = (u16 *)buf;
      __cil_tmp126 = __cil_tmp125 + k;
      __cil_tmp127 = *__cil_tmp126;
      __cil_tmp128 = (unsigned long )pi;
      __cil_tmp129 = __cil_tmp128 + 8;
      __cil_tmp130 = *((int *)__cil_tmp129);
      __cil_tmp131 = __cil_tmp130 + 4;
      outw(__cil_tmp127, __cil_tmp131);
      }
      {
      __cil_tmp132 = (unsigned long )pi;
      __cil_tmp133 = __cil_tmp132 + 16;
      if (*((int *)__cil_tmp133)) {
        {
        __cil_tmp134 = (unsigned long )pi;
        __cil_tmp135 = __cil_tmp134 + 16;
        __cil_tmp136 = *((int *)__cil_tmp135);
        __cil_tmp137 = (unsigned long )__cil_tmp136;
        __udelay(__cil_tmp137);
        }
      } else {
      }
      }
      k = k + 1;
    }
    while_break___1: ;
    }
    {
    __cil_tmp138 = (unsigned long )pi;
    __cil_tmp139 = __cil_tmp138 + 8;
    __cil_tmp140 = *((int *)__cil_tmp139);
    __cil_tmp141 = __cil_tmp140 + 2;
    outb((unsigned char)4, __cil_tmp141);
    }
    {
    __cil_tmp142 = (unsigned long )pi;
    __cil_tmp143 = __cil_tmp142 + 16;
    if (*((int *)__cil_tmp143)) {
      {
      __cil_tmp144 = (unsigned long )pi;
      __cil_tmp145 = __cil_tmp144 + 16;
      __cil_tmp146 = *((int *)__cil_tmp145);
      __cil_tmp147 = (unsigned long )__cil_tmp146;
      __udelay(__cil_tmp147);
      }
    } else {
    }
    }
    goto switch_break;
    case_5:
    {
    __cil_tmp148 = (unsigned long )pi;
    __cil_tmp149 = __cil_tmp148 + 8;
    __cil_tmp150 = *((int *)__cil_tmp149);
    __cil_tmp151 = __cil_tmp150 + 3;
    outb((unsigned char)192, __cil_tmp151);
    }
    {
    __cil_tmp152 = (unsigned long )pi;
    __cil_tmp153 = __cil_tmp152 + 16;
    if (*((int *)__cil_tmp153)) {
      {
      __cil_tmp154 = (unsigned long )pi;
      __cil_tmp155 = __cil_tmp154 + 16;
      __cil_tmp156 = *((int *)__cil_tmp155);
      __cil_tmp157 = (unsigned long )__cil_tmp156;
      __udelay(__cil_tmp157);
      }
    } else {
    }
    }
    k = 0;
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp158 = count / 4;
      if (k < __cil_tmp158) {
      } else {
        goto while_break___2;
      }
      }
      {
      __cil_tmp159 = (u32 *)buf;
      __cil_tmp160 = __cil_tmp159 + k;
      __cil_tmp161 = *__cil_tmp160;
      __cil_tmp162 = (unsigned long )pi;
      __cil_tmp163 = __cil_tmp162 + 8;
      __cil_tmp164 = *((int *)__cil_tmp163);
      __cil_tmp165 = __cil_tmp164 + 4;
      outl(__cil_tmp161, __cil_tmp165);
      }
      {
      __cil_tmp166 = (unsigned long )pi;
      __cil_tmp167 = __cil_tmp166 + 16;
      if (*((int *)__cil_tmp167)) {
        {
        __cil_tmp168 = (unsigned long )pi;
        __cil_tmp169 = __cil_tmp168 + 16;
        __cil_tmp170 = *((int *)__cil_tmp169);
        __cil_tmp171 = (unsigned long )__cil_tmp170;
        __udelay(__cil_tmp171);
        }
      } else {
      }
      }
      k = k + 1;
    }
    while_break___2: ;
    }
    {
    __cil_tmp172 = (unsigned long )pi;
    __cil_tmp173 = __cil_tmp172 + 8;
    __cil_tmp174 = *((int *)__cil_tmp173);
    __cil_tmp175 = __cil_tmp174 + 2;
    outb((unsigned char)4, __cil_tmp175);
    }
    {
    __cil_tmp176 = (unsigned long )pi;
    __cil_tmp177 = __cil_tmp176 + 16;
    if (*((int *)__cil_tmp177)) {
      {
      __cil_tmp178 = (unsigned long )pi;
      __cil_tmp179 = __cil_tmp178 + 16;
      __cil_tmp180 = *((int *)__cil_tmp179);
      __cil_tmp181 = (unsigned long )__cil_tmp180;
      __udelay(__cil_tmp181);
      }
    } else {
    }
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  return;
}
}
static void epat_connect(PIA *pi )
{ unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  int __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  int __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  int __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  int __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  int __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  int __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  int __cil_tmp113 ;
  int __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  int __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  int __cil_tmp123 ;
  int __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  int __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  int __cil_tmp133 ;
  int __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  int __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  int __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  int __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  int *__cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  int __cil_tmp153 ;
  int __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  int __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  int __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  int __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  int __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  int __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  int __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  int __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  int __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  int __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  int __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  unsigned long __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  int __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  int __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  int __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  int __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  unsigned long __cil_tmp221 ;
  int __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  int __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  int __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  int __cil_tmp235 ;
  int __cil_tmp236 ;
  unsigned long __cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  int __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  unsigned long __cil_tmp244 ;
  int __cil_tmp245 ;
  int __cil_tmp246 ;
  unsigned long __cil_tmp247 ;
  unsigned long __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  unsigned long __cil_tmp250 ;
  int __cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  unsigned long __cil_tmp253 ;
  unsigned long __cil_tmp254 ;
  int __cil_tmp255 ;
  int __cil_tmp256 ;
  unsigned long __cil_tmp257 ;
  unsigned long __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  unsigned long __cil_tmp260 ;
  int __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  unsigned long __cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  int __cil_tmp265 ;
  unsigned long __cil_tmp266 ;
  unsigned long __cil_tmp267 ;
  unsigned long __cil_tmp268 ;
  unsigned long __cil_tmp269 ;
  int __cil_tmp270 ;
  unsigned long __cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  int __cil_tmp274 ;
  int __cil_tmp275 ;
  unsigned long __cil_tmp276 ;
  unsigned long __cil_tmp277 ;
  unsigned long __cil_tmp278 ;
  unsigned long __cil_tmp279 ;
  int __cil_tmp280 ;
  unsigned long __cil_tmp281 ;
  unsigned long __cil_tmp282 ;
  unsigned long __cil_tmp283 ;
  int __cil_tmp284 ;
  unsigned long __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  unsigned long __cil_tmp287 ;
  unsigned long __cil_tmp288 ;
  int __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  unsigned long __cil_tmp291 ;
  unsigned long __cil_tmp292 ;
  int __cil_tmp293 ;
  unsigned long __cil_tmp294 ;
  unsigned long __cil_tmp295 ;
  unsigned long __cil_tmp296 ;
  unsigned long __cil_tmp297 ;
  int __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  unsigned long __cil_tmp301 ;
  int __cil_tmp302 ;
  unsigned long __cil_tmp303 ;
  unsigned long __cil_tmp304 ;
  unsigned long __cil_tmp305 ;
  unsigned long __cil_tmp306 ;
  int __cil_tmp307 ;
  unsigned long __cil_tmp308 ;
  unsigned long __cil_tmp309 ;
  unsigned long __cil_tmp310 ;
  int __cil_tmp311 ;
  unsigned long __cil_tmp312 ;
  unsigned long __cil_tmp313 ;
  unsigned long __cil_tmp314 ;
  unsigned long __cil_tmp315 ;
  int __cil_tmp316 ;
  unsigned long __cil_tmp317 ;
  unsigned long __cil_tmp318 ;
  unsigned long __cil_tmp319 ;
  int __cil_tmp320 ;
  unsigned long __cil_tmp321 ;
  unsigned long __cil_tmp322 ;
  unsigned long __cil_tmp323 ;
  unsigned long __cil_tmp324 ;
  int __cil_tmp325 ;
  unsigned long __cil_tmp326 ;
  unsigned long __cil_tmp327 ;
  unsigned long __cil_tmp328 ;
  int __cil_tmp329 ;
  unsigned long __cil_tmp330 ;
  unsigned long __cil_tmp331 ;
  unsigned long __cil_tmp332 ;
  unsigned long __cil_tmp333 ;
  int __cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  unsigned long __cil_tmp336 ;
  unsigned long __cil_tmp337 ;
  int __cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  unsigned long __cil_tmp340 ;
  unsigned long __cil_tmp341 ;
  unsigned long __cil_tmp342 ;
  int __cil_tmp343 ;
  unsigned long __cil_tmp344 ;
  unsigned long __cil_tmp345 ;
  unsigned long __cil_tmp346 ;
  int __cil_tmp347 ;
  unsigned long __cil_tmp348 ;
  unsigned long __cil_tmp349 ;
  unsigned long __cil_tmp350 ;
  unsigned long __cil_tmp351 ;
  int __cil_tmp352 ;
  unsigned long __cil_tmp353 ;
  unsigned long __cil_tmp354 ;
  unsigned long __cil_tmp355 ;
  int __cil_tmp356 ;
  int __cil_tmp357 ;
  unsigned long __cil_tmp358 ;
  unsigned long __cil_tmp359 ;
  unsigned long __cil_tmp360 ;
  unsigned long __cil_tmp361 ;
  int __cil_tmp362 ;
  unsigned long __cil_tmp363 ;
  unsigned long __cil_tmp364 ;
  unsigned long __cil_tmp365 ;
  int __cil_tmp366 ;
  int __cil_tmp367 ;
  unsigned long __cil_tmp368 ;
  unsigned long __cil_tmp369 ;
  unsigned long __cil_tmp370 ;
  unsigned long __cil_tmp371 ;
  int __cil_tmp372 ;
  unsigned long __cil_tmp373 ;
  unsigned long __cil_tmp374 ;
  unsigned long __cil_tmp375 ;
  int __cil_tmp376 ;
  int __cil_tmp377 ;
  unsigned long __cil_tmp378 ;
  unsigned long __cil_tmp379 ;
  unsigned long __cil_tmp380 ;
  unsigned long __cil_tmp381 ;
  int __cil_tmp382 ;
  unsigned long __cil_tmp383 ;
  unsigned long __cil_tmp384 ;
  unsigned long __cil_tmp385 ;
  int __cil_tmp386 ;
  unsigned long __cil_tmp387 ;
  unsigned long __cil_tmp388 ;
  unsigned long __cil_tmp389 ;
  unsigned long __cil_tmp390 ;
  int __cil_tmp391 ;
  unsigned long __cil_tmp392 ;
  unsigned long __cil_tmp393 ;
  unsigned long __cil_tmp394 ;
  int __cil_tmp395 ;
  unsigned long __cil_tmp396 ;
  unsigned long __cil_tmp397 ;
  unsigned long __cil_tmp398 ;
  unsigned long __cil_tmp399 ;
  int __cil_tmp400 ;
  unsigned long __cil_tmp401 ;
  unsigned long __cil_tmp402 ;
  unsigned long __cil_tmp403 ;
  int __cil_tmp404 ;
  int __cil_tmp405 ;
  unsigned long __cil_tmp406 ;
  unsigned long __cil_tmp407 ;
  unsigned long __cil_tmp408 ;
  unsigned long __cil_tmp409 ;
  int __cil_tmp410 ;
  unsigned long __cil_tmp411 ;
  unsigned long __cil_tmp412 ;
  unsigned long __cil_tmp413 ;
  int __cil_tmp414 ;
  int __cil_tmp415 ;
  unsigned long __cil_tmp416 ;
  unsigned long __cil_tmp417 ;
  unsigned long __cil_tmp418 ;
  unsigned long __cil_tmp419 ;
  int __cil_tmp420 ;
  unsigned long __cil_tmp421 ;
  unsigned long __cil_tmp422 ;
  unsigned long __cil_tmp423 ;
  int __cil_tmp424 ;
  int __cil_tmp425 ;
  unsigned long __cil_tmp426 ;
  unsigned long __cil_tmp427 ;
  unsigned long __cil_tmp428 ;
  unsigned long __cil_tmp429 ;
  int __cil_tmp430 ;
  unsigned long __cil_tmp431 ;
  unsigned long __cil_tmp432 ;
  unsigned long __cil_tmp433 ;
  int __cil_tmp434 ;
  unsigned long __cil_tmp435 ;
  unsigned long __cil_tmp436 ;
  unsigned long __cil_tmp437 ;
  unsigned long __cil_tmp438 ;
  int __cil_tmp439 ;
  unsigned long __cil_tmp440 ;
  unsigned long __cil_tmp441 ;
  unsigned long __cil_tmp442 ;
  int __cil_tmp443 ;
  unsigned long __cil_tmp444 ;
  unsigned long __cil_tmp445 ;
  unsigned long __cil_tmp446 ;
  unsigned long __cil_tmp447 ;
  int __cil_tmp448 ;
  unsigned long __cil_tmp449 ;
  unsigned long __cil_tmp450 ;
  unsigned long __cil_tmp451 ;
  int __cil_tmp452 ;
  unsigned long __cil_tmp453 ;
  unsigned long __cil_tmp454 ;
  unsigned long __cil_tmp455 ;
  unsigned long __cil_tmp456 ;
  int __cil_tmp457 ;
  unsigned long __cil_tmp458 ;
  unsigned long __cil_tmp459 ;
  unsigned long __cil_tmp460 ;
  int __cil_tmp461 ;
  unsigned long __cil_tmp462 ;
  unsigned long __cil_tmp463 ;
  unsigned long __cil_tmp464 ;
  unsigned long __cil_tmp465 ;
  int __cil_tmp466 ;
  unsigned long __cil_tmp467 ;
  unsigned long __cil_tmp468 ;
  unsigned long __cil_tmp469 ;
  int __cil_tmp470 ;
  unsigned long __cil_tmp471 ;
  unsigned long __cil_tmp472 ;
  unsigned long __cil_tmp473 ;
  unsigned long __cil_tmp474 ;
  int __cil_tmp475 ;
  unsigned long __cil_tmp476 ;
  unsigned long __cil_tmp477 ;
  unsigned long __cil_tmp478 ;
  int __cil_tmp479 ;
  unsigned long __cil_tmp480 ;
  unsigned long __cil_tmp481 ;
  unsigned long __cil_tmp482 ;
  unsigned long __cil_tmp483 ;
  int __cil_tmp484 ;
  unsigned long __cil_tmp485 ;
  unsigned long __cil_tmp486 ;
  unsigned long __cil_tmp487 ;
  int __cil_tmp488 ;
  unsigned long __cil_tmp489 ;
  unsigned long __cil_tmp490 ;
  unsigned long __cil_tmp491 ;
  unsigned long __cil_tmp492 ;
  int __cil_tmp493 ;
  unsigned long __cil_tmp494 ;
  unsigned long __cil_tmp495 ;
  unsigned long __cil_tmp496 ;
  int __cil_tmp497 ;
  unsigned long __cil_tmp498 ;
  unsigned long __cil_tmp499 ;
  unsigned long __cil_tmp500 ;
  unsigned long __cil_tmp501 ;
  int __cil_tmp502 ;
  unsigned long __cil_tmp503 ;
  unsigned long __cil_tmp504 ;
  unsigned long __cil_tmp505 ;
  int __cil_tmp506 ;
  int __cil_tmp507 ;
  unsigned long __cil_tmp508 ;
  unsigned long __cil_tmp509 ;
  unsigned long __cil_tmp510 ;
  unsigned long __cil_tmp511 ;
  int __cil_tmp512 ;
  unsigned long __cil_tmp513 ;
  unsigned long __cil_tmp514 ;
  unsigned long __cil_tmp515 ;
  int __cil_tmp516 ;
  int __cil_tmp517 ;
  unsigned long __cil_tmp518 ;
  unsigned long __cil_tmp519 ;
  unsigned long __cil_tmp520 ;
  unsigned long __cil_tmp521 ;
  int __cil_tmp522 ;
  unsigned long __cil_tmp523 ;
  unsigned long __cil_tmp524 ;
  unsigned long __cil_tmp525 ;
  int __cil_tmp526 ;
  int __cil_tmp527 ;
  unsigned long __cil_tmp528 ;
  unsigned long __cil_tmp529 ;
  unsigned long __cil_tmp530 ;
  unsigned long __cil_tmp531 ;
  int __cil_tmp532 ;
  unsigned long __cil_tmp533 ;
  unsigned long __cil_tmp534 ;
  unsigned long __cil_tmp535 ;
  int __cil_tmp536 ;
  unsigned long __cil_tmp537 ;
  unsigned long __cil_tmp538 ;
  unsigned long __cil_tmp539 ;
  unsigned long __cil_tmp540 ;
  int __cil_tmp541 ;
  unsigned long __cil_tmp542 ;
  unsigned long __cil_tmp543 ;
  unsigned long __cil_tmp544 ;
  int __cil_tmp545 ;
  unsigned long __cil_tmp546 ;
  unsigned long __cil_tmp547 ;
  unsigned long __cil_tmp548 ;
  unsigned long __cil_tmp549 ;
  int __cil_tmp550 ;
  unsigned long __cil_tmp551 ;
  unsigned long __cil_tmp552 ;
  unsigned long __cil_tmp553 ;
  int __cil_tmp554 ;
  int __cil_tmp555 ;
  unsigned long __cil_tmp556 ;
  unsigned long __cil_tmp557 ;
  unsigned long __cil_tmp558 ;
  unsigned long __cil_tmp559 ;
  int __cil_tmp560 ;
  unsigned long __cil_tmp561 ;
  unsigned long __cil_tmp562 ;
  unsigned long __cil_tmp563 ;
  int __cil_tmp564 ;
  int __cil_tmp565 ;
  unsigned long __cil_tmp566 ;
  unsigned long __cil_tmp567 ;
  unsigned long __cil_tmp568 ;
  unsigned long __cil_tmp569 ;
  int __cil_tmp570 ;
  unsigned long __cil_tmp571 ;
  unsigned long __cil_tmp572 ;
  unsigned long __cil_tmp573 ;
  int __cil_tmp574 ;
  unsigned long __cil_tmp575 ;
  unsigned long __cil_tmp576 ;
  int __cil_tmp577 ;
  unsigned long __cil_tmp578 ;
  unsigned long __cil_tmp579 ;
  unsigned long __cil_tmp580 ;
  unsigned long __cil_tmp581 ;
  int __cil_tmp582 ;
  unsigned long __cil_tmp583 ;
  unsigned long __cil_tmp584 ;
  unsigned long __cil_tmp585 ;
  int __cil_tmp586 ;
  int __cil_tmp587 ;
  unsigned long __cil_tmp588 ;
  unsigned long __cil_tmp589 ;
  unsigned long __cil_tmp590 ;
  unsigned long __cil_tmp591 ;
  int __cil_tmp592 ;
  unsigned long __cil_tmp593 ;
  unsigned long __cil_tmp594 ;
  unsigned long __cil_tmp595 ;
  int __cil_tmp596 ;
  int __cil_tmp597 ;
  unsigned long __cil_tmp598 ;
  unsigned long __cil_tmp599 ;
  unsigned long __cil_tmp600 ;
  unsigned long __cil_tmp601 ;
  int __cil_tmp602 ;
  unsigned long __cil_tmp603 ;
  unsigned long __cil_tmp604 ;
  unsigned long __cil_tmp605 ;
  int __cil_tmp606 ;
  int __cil_tmp607 ;
  unsigned long __cil_tmp608 ;
  unsigned long __cil_tmp609 ;
  unsigned long __cil_tmp610 ;
  unsigned long __cil_tmp611 ;
  int __cil_tmp612 ;
  unsigned long __cil_tmp613 ;
  unsigned long __cil_tmp614 ;
  unsigned long __cil_tmp615 ;
  int __cil_tmp616 ;
  unsigned long __cil_tmp617 ;
  unsigned long __cil_tmp618 ;
  unsigned long __cil_tmp619 ;
  unsigned long __cil_tmp620 ;
  int __cil_tmp621 ;
  unsigned long __cil_tmp622 ;
  unsigned long __cil_tmp623 ;
  unsigned long __cil_tmp624 ;
  int __cil_tmp625 ;
  int __cil_tmp626 ;
  unsigned long __cil_tmp627 ;
  unsigned long __cil_tmp628 ;
  unsigned long __cil_tmp629 ;
  unsigned long __cil_tmp630 ;
  int __cil_tmp631 ;
  unsigned long __cil_tmp632 ;
  unsigned long __cil_tmp633 ;
  unsigned long __cil_tmp634 ;
  int __cil_tmp635 ;
  int __cil_tmp636 ;
  unsigned long __cil_tmp637 ;
  unsigned long __cil_tmp638 ;
  unsigned long __cil_tmp639 ;
  unsigned long __cil_tmp640 ;
  int __cil_tmp641 ;
  unsigned long __cil_tmp642 ;
  unsigned long __cil_tmp643 ;
  unsigned long __cil_tmp644 ;
  int __cil_tmp645 ;
  int __cil_tmp646 ;
  unsigned long __cil_tmp647 ;
  unsigned long __cil_tmp648 ;
  unsigned long __cil_tmp649 ;
  unsigned long __cil_tmp650 ;
  int __cil_tmp651 ;
  unsigned long __cil_tmp652 ;
  unsigned long __cil_tmp653 ;
  unsigned long __cil_tmp654 ;
  int __cil_tmp655 ;
  int __cil_tmp656 ;
  unsigned long __cil_tmp657 ;
  unsigned long __cil_tmp658 ;
  unsigned long __cil_tmp659 ;
  unsigned long __cil_tmp660 ;
  int __cil_tmp661 ;
  unsigned long __cil_tmp662 ;
  unsigned long __cil_tmp663 ;
  unsigned long __cil_tmp664 ;
  int __cil_tmp665 ;
  int __cil_tmp666 ;
  unsigned long __cil_tmp667 ;
  unsigned long __cil_tmp668 ;
  unsigned long __cil_tmp669 ;
  unsigned long __cil_tmp670 ;
  int __cil_tmp671 ;
  unsigned long __cil_tmp672 ;
  int *__cil_tmp673 ;
  int __cil_tmp674 ;
  {
  {
  __cil_tmp4 = (unsigned long )pi;
  __cil_tmp5 = __cil_tmp4 + 16;
  if (*((int *)__cil_tmp5)) {
    {
    __cil_tmp6 = (unsigned long )pi;
    __cil_tmp7 = __cil_tmp6 + 16;
    __cil_tmp8 = *((int *)__cil_tmp7);
    __cil_tmp9 = (unsigned long )__cil_tmp8;
    __udelay(__cil_tmp9);
    }
  } else {
  }
  }
  {
  __cil_tmp10 = (unsigned long )pi;
  __cil_tmp11 = __cil_tmp10 + 8;
  __cil_tmp12 = *((int *)__cil_tmp11);
  tmp = inb(__cil_tmp12);
  __cil_tmp13 = (unsigned long )pi;
  __cil_tmp14 = __cil_tmp13 + 36;
  __cil_tmp15 = (int )tmp;
  *((int *)__cil_tmp14) = __cil_tmp15 & 255;
  }
  {
  __cil_tmp16 = (unsigned long )pi;
  __cil_tmp17 = __cil_tmp16 + 16;
  if (*((int *)__cil_tmp17)) {
    {
    __cil_tmp18 = (unsigned long )pi;
    __cil_tmp19 = __cil_tmp18 + 16;
    __cil_tmp20 = *((int *)__cil_tmp19);
    __cil_tmp21 = (unsigned long )__cil_tmp20;
    __udelay(__cil_tmp21);
    }
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )pi;
  __cil_tmp23 = __cil_tmp22 + 8;
  __cil_tmp24 = *((int *)__cil_tmp23);
  __cil_tmp25 = __cil_tmp24 + 2;
  tmp___0 = inb(__cil_tmp25);
  __cil_tmp26 = (unsigned long )pi;
  __cil_tmp27 = __cil_tmp26 + 40;
  __cil_tmp28 = (int )tmp___0;
  *((int *)__cil_tmp27) = __cil_tmp28 & 255;
  __cil_tmp29 = (unsigned long )pi;
  __cil_tmp30 = __cil_tmp29 + 8;
  __cil_tmp31 = *((int *)__cil_tmp30);
  __cil_tmp32 = __cil_tmp31 + 2;
  outb((unsigned char)4, __cil_tmp32);
  }
  {
  __cil_tmp33 = (unsigned long )pi;
  __cil_tmp34 = __cil_tmp33 + 16;
  if (*((int *)__cil_tmp34)) {
    {
    __cil_tmp35 = (unsigned long )pi;
    __cil_tmp36 = __cil_tmp35 + 16;
    __cil_tmp37 = *((int *)__cil_tmp36);
    __cil_tmp38 = (unsigned long )__cil_tmp37;
    __udelay(__cil_tmp38);
    }
  } else {
  }
  }
  {
  __cil_tmp39 = (unsigned long )pi;
  __cil_tmp40 = __cil_tmp39 + 8;
  __cil_tmp41 = *((int *)__cil_tmp40);
  outb((unsigned char)34, __cil_tmp41);
  }
  {
  __cil_tmp42 = (unsigned long )pi;
  __cil_tmp43 = __cil_tmp42 + 16;
  if (*((int *)__cil_tmp43)) {
    {
    __cil_tmp44 = (unsigned long )pi;
    __cil_tmp45 = __cil_tmp44 + 16;
    __cil_tmp46 = *((int *)__cil_tmp45);
    __cil_tmp47 = (unsigned long )__cil_tmp46;
    __udelay(__cil_tmp47);
    }
  } else {
  }
  }
  {
  __cil_tmp48 = (unsigned long )pi;
  __cil_tmp49 = __cil_tmp48 + 8;
  __cil_tmp50 = *((int *)__cil_tmp49);
  outb((unsigned char)170, __cil_tmp50);
  }
  {
  __cil_tmp51 = (unsigned long )pi;
  __cil_tmp52 = __cil_tmp51 + 16;
  if (*((int *)__cil_tmp52)) {
    {
    __cil_tmp53 = (unsigned long )pi;
    __cil_tmp54 = __cil_tmp53 + 16;
    __cil_tmp55 = *((int *)__cil_tmp54);
    __cil_tmp56 = (unsigned long )__cil_tmp55;
    __udelay(__cil_tmp56);
    }
  } else {
  }
  }
  {
  __cil_tmp57 = (unsigned long )pi;
  __cil_tmp58 = __cil_tmp57 + 8;
  __cil_tmp59 = *((int *)__cil_tmp58);
  outb((unsigned char)85, __cil_tmp59);
  }
  {
  __cil_tmp60 = (unsigned long )pi;
  __cil_tmp61 = __cil_tmp60 + 16;
  if (*((int *)__cil_tmp61)) {
    {
    __cil_tmp62 = (unsigned long )pi;
    __cil_tmp63 = __cil_tmp62 + 16;
    __cil_tmp64 = *((int *)__cil_tmp63);
    __cil_tmp65 = (unsigned long )__cil_tmp64;
    __udelay(__cil_tmp65);
    }
  } else {
  }
  }
  {
  __cil_tmp66 = (unsigned long )pi;
  __cil_tmp67 = __cil_tmp66 + 8;
  __cil_tmp68 = *((int *)__cil_tmp67);
  outb((unsigned char)0, __cil_tmp68);
  }
  {
  __cil_tmp69 = (unsigned long )pi;
  __cil_tmp70 = __cil_tmp69 + 16;
  if (*((int *)__cil_tmp70)) {
    {
    __cil_tmp71 = (unsigned long )pi;
    __cil_tmp72 = __cil_tmp71 + 16;
    __cil_tmp73 = *((int *)__cil_tmp72);
    __cil_tmp74 = (unsigned long )__cil_tmp73;
    __udelay(__cil_tmp74);
    }
  } else {
  }
  }
  {
  __cil_tmp75 = (unsigned long )pi;
  __cil_tmp76 = __cil_tmp75 + 8;
  __cil_tmp77 = *((int *)__cil_tmp76);
  outb((unsigned char)255, __cil_tmp77);
  }
  {
  __cil_tmp78 = (unsigned long )pi;
  __cil_tmp79 = __cil_tmp78 + 16;
  if (*((int *)__cil_tmp79)) {
    {
    __cil_tmp80 = (unsigned long )pi;
    __cil_tmp81 = __cil_tmp80 + 16;
    __cil_tmp82 = *((int *)__cil_tmp81);
    __cil_tmp83 = (unsigned long )__cil_tmp82;
    __udelay(__cil_tmp83);
    }
  } else {
  }
  }
  {
  __cil_tmp84 = (unsigned long )pi;
  __cil_tmp85 = __cil_tmp84 + 8;
  __cil_tmp86 = *((int *)__cil_tmp85);
  outb((unsigned char)135, __cil_tmp86);
  }
  {
  __cil_tmp87 = (unsigned long )pi;
  __cil_tmp88 = __cil_tmp87 + 16;
  if (*((int *)__cil_tmp88)) {
    {
    __cil_tmp89 = (unsigned long )pi;
    __cil_tmp90 = __cil_tmp89 + 16;
    __cil_tmp91 = *((int *)__cil_tmp90);
    __cil_tmp92 = (unsigned long )__cil_tmp91;
    __udelay(__cil_tmp92);
    }
  } else {
  }
  }
  {
  __cil_tmp93 = (unsigned long )pi;
  __cil_tmp94 = __cil_tmp93 + 8;
  __cil_tmp95 = *((int *)__cil_tmp94);
  outb((unsigned char)120, __cil_tmp95);
  }
  {
  __cil_tmp96 = (unsigned long )pi;
  __cil_tmp97 = __cil_tmp96 + 16;
  if (*((int *)__cil_tmp97)) {
    {
    __cil_tmp98 = (unsigned long )pi;
    __cil_tmp99 = __cil_tmp98 + 16;
    __cil_tmp100 = *((int *)__cil_tmp99);
    __cil_tmp101 = (unsigned long )__cil_tmp100;
    __udelay(__cil_tmp101);
    }
  } else {
  }
  }
  {
  __cil_tmp102 = (unsigned long )pi;
  __cil_tmp103 = __cil_tmp102 + 8;
  __cil_tmp104 = *((int *)__cil_tmp103);
  outb((unsigned char)0, __cil_tmp104);
  }
  {
  __cil_tmp105 = (unsigned long )pi;
  __cil_tmp106 = __cil_tmp105 + 16;
  if (*((int *)__cil_tmp106)) {
    {
    __cil_tmp107 = (unsigned long )pi;
    __cil_tmp108 = __cil_tmp107 + 16;
    __cil_tmp109 = *((int *)__cil_tmp108);
    __cil_tmp110 = (unsigned long )__cil_tmp109;
    __udelay(__cil_tmp110);
    }
  } else {
  }
  }
  {
  __cil_tmp111 = (unsigned long )pi;
  __cil_tmp112 = __cil_tmp111 + 8;
  __cil_tmp113 = *((int *)__cil_tmp112);
  __cil_tmp114 = __cil_tmp113 + 2;
  outb((unsigned char)4, __cil_tmp114);
  }
  {
  __cil_tmp115 = (unsigned long )pi;
  __cil_tmp116 = __cil_tmp115 + 16;
  if (*((int *)__cil_tmp116)) {
    {
    __cil_tmp117 = (unsigned long )pi;
    __cil_tmp118 = __cil_tmp117 + 16;
    __cil_tmp119 = *((int *)__cil_tmp118);
    __cil_tmp120 = (unsigned long )__cil_tmp119;
    __udelay(__cil_tmp120);
    }
  } else {
  }
  }
  {
  __cil_tmp121 = (unsigned long )pi;
  __cil_tmp122 = __cil_tmp121 + 8;
  __cil_tmp123 = *((int *)__cil_tmp122);
  __cil_tmp124 = __cil_tmp123 + 2;
  outb((unsigned char)5, __cil_tmp124);
  }
  {
  __cil_tmp125 = (unsigned long )pi;
  __cil_tmp126 = __cil_tmp125 + 16;
  if (*((int *)__cil_tmp126)) {
    {
    __cil_tmp127 = (unsigned long )pi;
    __cil_tmp128 = __cil_tmp127 + 16;
    __cil_tmp129 = *((int *)__cil_tmp128);
    __cil_tmp130 = (unsigned long )__cil_tmp129;
    __udelay(__cil_tmp130);
    }
  } else {
  }
  }
  {
  __cil_tmp131 = (unsigned long )pi;
  __cil_tmp132 = __cil_tmp131 + 8;
  __cil_tmp133 = *((int *)__cil_tmp132);
  __cil_tmp134 = __cil_tmp133 + 2;
  outb((unsigned char)4, __cil_tmp134);
  }
  {
  __cil_tmp135 = (unsigned long )pi;
  __cil_tmp136 = __cil_tmp135 + 16;
  if (*((int *)__cil_tmp136)) {
    {
    __cil_tmp137 = (unsigned long )pi;
    __cil_tmp138 = __cil_tmp137 + 16;
    __cil_tmp139 = *((int *)__cil_tmp138);
    __cil_tmp140 = (unsigned long )__cil_tmp139;
    __udelay(__cil_tmp140);
    }
  } else {
  }
  }
  {
  __cil_tmp141 = (unsigned long )pi;
  __cil_tmp142 = __cil_tmp141 + 8;
  __cil_tmp143 = *((int *)__cil_tmp142);
  outb((unsigned char)255, __cil_tmp143);
  }
  {
  __cil_tmp144 = (unsigned long )pi;
  __cil_tmp145 = __cil_tmp144 + 16;
  if (*((int *)__cil_tmp145)) {
    {
    __cil_tmp146 = (unsigned long )pi;
    __cil_tmp147 = __cil_tmp146 + 16;
    __cil_tmp148 = *((int *)__cil_tmp147);
    __cil_tmp149 = (unsigned long )__cil_tmp148;
    __udelay(__cil_tmp149);
    }
  } else {
  }
  }
  {
  __cil_tmp150 = & epatc8;
  if (*__cil_tmp150) {
    {
    __cil_tmp151 = (unsigned long )pi;
    __cil_tmp152 = __cil_tmp151 + 8;
    __cil_tmp153 = *((int *)__cil_tmp152);
    __cil_tmp154 = __cil_tmp153 + 2;
    outb((unsigned char)4, __cil_tmp154);
    }
    {
    __cil_tmp155 = (unsigned long )pi;
    __cil_tmp156 = __cil_tmp155 + 16;
    if (*((int *)__cil_tmp156)) {
      {
      __cil_tmp157 = (unsigned long )pi;
      __cil_tmp158 = __cil_tmp157 + 16;
      __cil_tmp159 = *((int *)__cil_tmp158);
      __cil_tmp160 = (unsigned long )__cil_tmp159;
      __udelay(__cil_tmp160);
      }
    } else {
    }
    }
    {
    __cil_tmp161 = (unsigned long )pi;
    __cil_tmp162 = __cil_tmp161 + 8;
    __cil_tmp163 = *((int *)__cil_tmp162);
    outb((unsigned char)34, __cil_tmp163);
    }
    {
    __cil_tmp164 = (unsigned long )pi;
    __cil_tmp165 = __cil_tmp164 + 16;
    if (*((int *)__cil_tmp165)) {
      {
      __cil_tmp166 = (unsigned long )pi;
      __cil_tmp167 = __cil_tmp166 + 16;
      __cil_tmp168 = *((int *)__cil_tmp167);
      __cil_tmp169 = (unsigned long )__cil_tmp168;
      __udelay(__cil_tmp169);
      }
    } else {
    }
    }
    {
    __cil_tmp170 = (unsigned long )pi;
    __cil_tmp171 = __cil_tmp170 + 8;
    __cil_tmp172 = *((int *)__cil_tmp171);
    outb((unsigned char)170, __cil_tmp172);
    }
    {
    __cil_tmp173 = (unsigned long )pi;
    __cil_tmp174 = __cil_tmp173 + 16;
    if (*((int *)__cil_tmp174)) {
      {
      __cil_tmp175 = (unsigned long )pi;
      __cil_tmp176 = __cil_tmp175 + 16;
      __cil_tmp177 = *((int *)__cil_tmp176);
      __cil_tmp178 = (unsigned long )__cil_tmp177;
      __udelay(__cil_tmp178);
      }
    } else {
    }
    }
    {
    __cil_tmp179 = (unsigned long )pi;
    __cil_tmp180 = __cil_tmp179 + 8;
    __cil_tmp181 = *((int *)__cil_tmp180);
    outb((unsigned char)85, __cil_tmp181);
    }
    {
    __cil_tmp182 = (unsigned long )pi;
    __cil_tmp183 = __cil_tmp182 + 16;
    if (*((int *)__cil_tmp183)) {
      {
      __cil_tmp184 = (unsigned long )pi;
      __cil_tmp185 = __cil_tmp184 + 16;
      __cil_tmp186 = *((int *)__cil_tmp185);
      __cil_tmp187 = (unsigned long )__cil_tmp186;
      __udelay(__cil_tmp187);
      }
    } else {
    }
    }
    {
    __cil_tmp188 = (unsigned long )pi;
    __cil_tmp189 = __cil_tmp188 + 8;
    __cil_tmp190 = *((int *)__cil_tmp189);
    outb((unsigned char)0, __cil_tmp190);
    }
    {
    __cil_tmp191 = (unsigned long )pi;
    __cil_tmp192 = __cil_tmp191 + 16;
    if (*((int *)__cil_tmp192)) {
      {
      __cil_tmp193 = (unsigned long )pi;
      __cil_tmp194 = __cil_tmp193 + 16;
      __cil_tmp195 = *((int *)__cil_tmp194);
      __cil_tmp196 = (unsigned long )__cil_tmp195;
      __udelay(__cil_tmp196);
      }
    } else {
    }
    }
    {
    __cil_tmp197 = (unsigned long )pi;
    __cil_tmp198 = __cil_tmp197 + 8;
    __cil_tmp199 = *((int *)__cil_tmp198);
    outb((unsigned char)255, __cil_tmp199);
    }
    {
    __cil_tmp200 = (unsigned long )pi;
    __cil_tmp201 = __cil_tmp200 + 16;
    if (*((int *)__cil_tmp201)) {
      {
      __cil_tmp202 = (unsigned long )pi;
      __cil_tmp203 = __cil_tmp202 + 16;
      __cil_tmp204 = *((int *)__cil_tmp203);
      __cil_tmp205 = (unsigned long )__cil_tmp204;
      __udelay(__cil_tmp205);
      }
    } else {
    }
    }
    {
    __cil_tmp206 = (unsigned long )pi;
    __cil_tmp207 = __cil_tmp206 + 8;
    __cil_tmp208 = *((int *)__cil_tmp207);
    outb((unsigned char)135, __cil_tmp208);
    }
    {
    __cil_tmp209 = (unsigned long )pi;
    __cil_tmp210 = __cil_tmp209 + 16;
    if (*((int *)__cil_tmp210)) {
      {
      __cil_tmp211 = (unsigned long )pi;
      __cil_tmp212 = __cil_tmp211 + 16;
      __cil_tmp213 = *((int *)__cil_tmp212);
      __cil_tmp214 = (unsigned long )__cil_tmp213;
      __udelay(__cil_tmp214);
      }
    } else {
    }
    }
    {
    __cil_tmp215 = (unsigned long )pi;
    __cil_tmp216 = __cil_tmp215 + 8;
    __cil_tmp217 = *((int *)__cil_tmp216);
    outb((unsigned char)120, __cil_tmp217);
    }
    {
    __cil_tmp218 = (unsigned long )pi;
    __cil_tmp219 = __cil_tmp218 + 16;
    if (*((int *)__cil_tmp219)) {
      {
      __cil_tmp220 = (unsigned long )pi;
      __cil_tmp221 = __cil_tmp220 + 16;
      __cil_tmp222 = *((int *)__cil_tmp221);
      __cil_tmp223 = (unsigned long )__cil_tmp222;
      __udelay(__cil_tmp223);
      }
    } else {
    }
    }
    {
    __cil_tmp224 = (unsigned long )pi;
    __cil_tmp225 = __cil_tmp224 + 8;
    __cil_tmp226 = *((int *)__cil_tmp225);
    outb((unsigned char)64, __cil_tmp226);
    }
    {
    __cil_tmp227 = (unsigned long )pi;
    __cil_tmp228 = __cil_tmp227 + 16;
    if (*((int *)__cil_tmp228)) {
      {
      __cil_tmp229 = (unsigned long )pi;
      __cil_tmp230 = __cil_tmp229 + 16;
      __cil_tmp231 = *((int *)__cil_tmp230);
      __cil_tmp232 = (unsigned long )__cil_tmp231;
      __udelay(__cil_tmp232);
      }
    } else {
    }
    }
    {
    __cil_tmp233 = (unsigned long )pi;
    __cil_tmp234 = __cil_tmp233 + 8;
    __cil_tmp235 = *((int *)__cil_tmp234);
    __cil_tmp236 = __cil_tmp235 + 2;
    outb((unsigned char)4, __cil_tmp236);
    }
    {
    __cil_tmp237 = (unsigned long )pi;
    __cil_tmp238 = __cil_tmp237 + 16;
    if (*((int *)__cil_tmp238)) {
      {
      __cil_tmp239 = (unsigned long )pi;
      __cil_tmp240 = __cil_tmp239 + 16;
      __cil_tmp241 = *((int *)__cil_tmp240);
      __cil_tmp242 = (unsigned long )__cil_tmp241;
      __udelay(__cil_tmp242);
      }
    } else {
    }
    }
    {
    __cil_tmp243 = (unsigned long )pi;
    __cil_tmp244 = __cil_tmp243 + 8;
    __cil_tmp245 = *((int *)__cil_tmp244);
    __cil_tmp246 = __cil_tmp245 + 2;
    outb((unsigned char)5, __cil_tmp246);
    }
    {
    __cil_tmp247 = (unsigned long )pi;
    __cil_tmp248 = __cil_tmp247 + 16;
    if (*((int *)__cil_tmp248)) {
      {
      __cil_tmp249 = (unsigned long )pi;
      __cil_tmp250 = __cil_tmp249 + 16;
      __cil_tmp251 = *((int *)__cil_tmp250);
      __cil_tmp252 = (unsigned long )__cil_tmp251;
      __udelay(__cil_tmp252);
      }
    } else {
    }
    }
    {
    __cil_tmp253 = (unsigned long )pi;
    __cil_tmp254 = __cil_tmp253 + 8;
    __cil_tmp255 = *((int *)__cil_tmp254);
    __cil_tmp256 = __cil_tmp255 + 2;
    outb((unsigned char)4, __cil_tmp256);
    }
    {
    __cil_tmp257 = (unsigned long )pi;
    __cil_tmp258 = __cil_tmp257 + 16;
    if (*((int *)__cil_tmp258)) {
      {
      __cil_tmp259 = (unsigned long )pi;
      __cil_tmp260 = __cil_tmp259 + 16;
      __cil_tmp261 = *((int *)__cil_tmp260);
      __cil_tmp262 = (unsigned long )__cil_tmp261;
      __udelay(__cil_tmp262);
      }
    } else {
    }
    }
    {
    __cil_tmp263 = (unsigned long )pi;
    __cil_tmp264 = __cil_tmp263 + 8;
    __cil_tmp265 = *((int *)__cil_tmp264);
    outb((unsigned char)255, __cil_tmp265);
    }
    {
    __cil_tmp266 = (unsigned long )pi;
    __cil_tmp267 = __cil_tmp266 + 16;
    if (*((int *)__cil_tmp267)) {
      {
      __cil_tmp268 = (unsigned long )pi;
      __cil_tmp269 = __cil_tmp268 + 16;
      __cil_tmp270 = *((int *)__cil_tmp269);
      __cil_tmp271 = (unsigned long )__cil_tmp270;
      __udelay(__cil_tmp271);
      }
    } else {
    }
    }
    {
    __cil_tmp272 = (unsigned long )pi;
    __cil_tmp273 = __cil_tmp272 + 8;
    __cil_tmp274 = *((int *)__cil_tmp273);
    __cil_tmp275 = __cil_tmp274 + 2;
    outb((unsigned char)4, __cil_tmp275);
    }
    {
    __cil_tmp276 = (unsigned long )pi;
    __cil_tmp277 = __cil_tmp276 + 16;
    if (*((int *)__cil_tmp277)) {
      {
      __cil_tmp278 = (unsigned long )pi;
      __cil_tmp279 = __cil_tmp278 + 16;
      __cil_tmp280 = *((int *)__cil_tmp279);
      __cil_tmp281 = (unsigned long )__cil_tmp280;
      __udelay(__cil_tmp281);
      }
    } else {
    }
    }
    {
    __cil_tmp282 = (unsigned long )pi;
    __cil_tmp283 = __cil_tmp282 + 8;
    __cil_tmp284 = *((int *)__cil_tmp283);
    outb((unsigned char)34, __cil_tmp284);
    }
    {
    __cil_tmp285 = (unsigned long )pi;
    __cil_tmp286 = __cil_tmp285 + 16;
    if (*((int *)__cil_tmp286)) {
      {
      __cil_tmp287 = (unsigned long )pi;
      __cil_tmp288 = __cil_tmp287 + 16;
      __cil_tmp289 = *((int *)__cil_tmp288);
      __cil_tmp290 = (unsigned long )__cil_tmp289;
      __udelay(__cil_tmp290);
      }
    } else {
    }
    }
    {
    __cil_tmp291 = (unsigned long )pi;
    __cil_tmp292 = __cil_tmp291 + 8;
    __cil_tmp293 = *((int *)__cil_tmp292);
    outb((unsigned char)170, __cil_tmp293);
    }
    {
    __cil_tmp294 = (unsigned long )pi;
    __cil_tmp295 = __cil_tmp294 + 16;
    if (*((int *)__cil_tmp295)) {
      {
      __cil_tmp296 = (unsigned long )pi;
      __cil_tmp297 = __cil_tmp296 + 16;
      __cil_tmp298 = *((int *)__cil_tmp297);
      __cil_tmp299 = (unsigned long )__cil_tmp298;
      __udelay(__cil_tmp299);
      }
    } else {
    }
    }
    {
    __cil_tmp300 = (unsigned long )pi;
    __cil_tmp301 = __cil_tmp300 + 8;
    __cil_tmp302 = *((int *)__cil_tmp301);
    outb((unsigned char)85, __cil_tmp302);
    }
    {
    __cil_tmp303 = (unsigned long )pi;
    __cil_tmp304 = __cil_tmp303 + 16;
    if (*((int *)__cil_tmp304)) {
      {
      __cil_tmp305 = (unsigned long )pi;
      __cil_tmp306 = __cil_tmp305 + 16;
      __cil_tmp307 = *((int *)__cil_tmp306);
      __cil_tmp308 = (unsigned long )__cil_tmp307;
      __udelay(__cil_tmp308);
      }
    } else {
    }
    }
    {
    __cil_tmp309 = (unsigned long )pi;
    __cil_tmp310 = __cil_tmp309 + 8;
    __cil_tmp311 = *((int *)__cil_tmp310);
    outb((unsigned char)0, __cil_tmp311);
    }
    {
    __cil_tmp312 = (unsigned long )pi;
    __cil_tmp313 = __cil_tmp312 + 16;
    if (*((int *)__cil_tmp313)) {
      {
      __cil_tmp314 = (unsigned long )pi;
      __cil_tmp315 = __cil_tmp314 + 16;
      __cil_tmp316 = *((int *)__cil_tmp315);
      __cil_tmp317 = (unsigned long )__cil_tmp316;
      __udelay(__cil_tmp317);
      }
    } else {
    }
    }
    {
    __cil_tmp318 = (unsigned long )pi;
    __cil_tmp319 = __cil_tmp318 + 8;
    __cil_tmp320 = *((int *)__cil_tmp319);
    outb((unsigned char)255, __cil_tmp320);
    }
    {
    __cil_tmp321 = (unsigned long )pi;
    __cil_tmp322 = __cil_tmp321 + 16;
    if (*((int *)__cil_tmp322)) {
      {
      __cil_tmp323 = (unsigned long )pi;
      __cil_tmp324 = __cil_tmp323 + 16;
      __cil_tmp325 = *((int *)__cil_tmp324);
      __cil_tmp326 = (unsigned long )__cil_tmp325;
      __udelay(__cil_tmp326);
      }
    } else {
    }
    }
    {
    __cil_tmp327 = (unsigned long )pi;
    __cil_tmp328 = __cil_tmp327 + 8;
    __cil_tmp329 = *((int *)__cil_tmp328);
    outb((unsigned char)135, __cil_tmp329);
    }
    {
    __cil_tmp330 = (unsigned long )pi;
    __cil_tmp331 = __cil_tmp330 + 16;
    if (*((int *)__cil_tmp331)) {
      {
      __cil_tmp332 = (unsigned long )pi;
      __cil_tmp333 = __cil_tmp332 + 16;
      __cil_tmp334 = *((int *)__cil_tmp333);
      __cil_tmp335 = (unsigned long )__cil_tmp334;
      __udelay(__cil_tmp335);
      }
    } else {
    }
    }
    {
    __cil_tmp336 = (unsigned long )pi;
    __cil_tmp337 = __cil_tmp336 + 8;
    __cil_tmp338 = *((int *)__cil_tmp337);
    outb((unsigned char)120, __cil_tmp338);
    }
    {
    __cil_tmp339 = (unsigned long )pi;
    __cil_tmp340 = __cil_tmp339 + 16;
    if (*((int *)__cil_tmp340)) {
      {
      __cil_tmp341 = (unsigned long )pi;
      __cil_tmp342 = __cil_tmp341 + 16;
      __cil_tmp343 = *((int *)__cil_tmp342);
      __cil_tmp344 = (unsigned long )__cil_tmp343;
      __udelay(__cil_tmp344);
      }
    } else {
    }
    }
    {
    __cil_tmp345 = (unsigned long )pi;
    __cil_tmp346 = __cil_tmp345 + 8;
    __cil_tmp347 = *((int *)__cil_tmp346);
    outb((unsigned char)224, __cil_tmp347);
    }
    {
    __cil_tmp348 = (unsigned long )pi;
    __cil_tmp349 = __cil_tmp348 + 16;
    if (*((int *)__cil_tmp349)) {
      {
      __cil_tmp350 = (unsigned long )pi;
      __cil_tmp351 = __cil_tmp350 + 16;
      __cil_tmp352 = *((int *)__cil_tmp351);
      __cil_tmp353 = (unsigned long )__cil_tmp352;
      __udelay(__cil_tmp353);
      }
    } else {
    }
    }
    {
    __cil_tmp354 = (unsigned long )pi;
    __cil_tmp355 = __cil_tmp354 + 8;
    __cil_tmp356 = *((int *)__cil_tmp355);
    __cil_tmp357 = __cil_tmp356 + 2;
    outb((unsigned char)4, __cil_tmp357);
    }
    {
    __cil_tmp358 = (unsigned long )pi;
    __cil_tmp359 = __cil_tmp358 + 16;
    if (*((int *)__cil_tmp359)) {
      {
      __cil_tmp360 = (unsigned long )pi;
      __cil_tmp361 = __cil_tmp360 + 16;
      __cil_tmp362 = *((int *)__cil_tmp361);
      __cil_tmp363 = (unsigned long )__cil_tmp362;
      __udelay(__cil_tmp363);
      }
    } else {
    }
    }
    {
    __cil_tmp364 = (unsigned long )pi;
    __cil_tmp365 = __cil_tmp364 + 8;
    __cil_tmp366 = *((int *)__cil_tmp365);
    __cil_tmp367 = __cil_tmp366 + 2;
    outb((unsigned char)5, __cil_tmp367);
    }
    {
    __cil_tmp368 = (unsigned long )pi;
    __cil_tmp369 = __cil_tmp368 + 16;
    if (*((int *)__cil_tmp369)) {
      {
      __cil_tmp370 = (unsigned long )pi;
      __cil_tmp371 = __cil_tmp370 + 16;
      __cil_tmp372 = *((int *)__cil_tmp371);
      __cil_tmp373 = (unsigned long )__cil_tmp372;
      __udelay(__cil_tmp373);
      }
    } else {
    }
    }
    {
    __cil_tmp374 = (unsigned long )pi;
    __cil_tmp375 = __cil_tmp374 + 8;
    __cil_tmp376 = *((int *)__cil_tmp375);
    __cil_tmp377 = __cil_tmp376 + 2;
    outb((unsigned char)4, __cil_tmp377);
    }
    {
    __cil_tmp378 = (unsigned long )pi;
    __cil_tmp379 = __cil_tmp378 + 16;
    if (*((int *)__cil_tmp379)) {
      {
      __cil_tmp380 = (unsigned long )pi;
      __cil_tmp381 = __cil_tmp380 + 16;
      __cil_tmp382 = *((int *)__cil_tmp381);
      __cil_tmp383 = (unsigned long )__cil_tmp382;
      __udelay(__cil_tmp383);
      }
    } else {
    }
    }
    {
    __cil_tmp384 = (unsigned long )pi;
    __cil_tmp385 = __cil_tmp384 + 8;
    __cil_tmp386 = *((int *)__cil_tmp385);
    outb((unsigned char)255, __cil_tmp386);
    }
    {
    __cil_tmp387 = (unsigned long )pi;
    __cil_tmp388 = __cil_tmp387 + 16;
    if (*((int *)__cil_tmp388)) {
      {
      __cil_tmp389 = (unsigned long )pi;
      __cil_tmp390 = __cil_tmp389 + 16;
      __cil_tmp391 = *((int *)__cil_tmp390);
      __cil_tmp392 = (unsigned long )__cil_tmp391;
      __udelay(__cil_tmp392);
      }
    } else {
    }
    }
    {
    __cil_tmp393 = (unsigned long )pi;
    __cil_tmp394 = __cil_tmp393 + 8;
    __cil_tmp395 = *((int *)__cil_tmp394);
    outb((unsigned char)0, __cil_tmp395);
    }
    {
    __cil_tmp396 = (unsigned long )pi;
    __cil_tmp397 = __cil_tmp396 + 16;
    if (*((int *)__cil_tmp397)) {
      {
      __cil_tmp398 = (unsigned long )pi;
      __cil_tmp399 = __cil_tmp398 + 16;
      __cil_tmp400 = *((int *)__cil_tmp399);
      __cil_tmp401 = (unsigned long )__cil_tmp400;
      __udelay(__cil_tmp401);
      }
    } else {
    }
    }
    {
    __cil_tmp402 = (unsigned long )pi;
    __cil_tmp403 = __cil_tmp402 + 8;
    __cil_tmp404 = *((int *)__cil_tmp403);
    __cil_tmp405 = __cil_tmp404 + 2;
    outb((unsigned char)1, __cil_tmp405);
    }
    {
    __cil_tmp406 = (unsigned long )pi;
    __cil_tmp407 = __cil_tmp406 + 16;
    if (*((int *)__cil_tmp407)) {
      {
      __cil_tmp408 = (unsigned long )pi;
      __cil_tmp409 = __cil_tmp408 + 16;
      __cil_tmp410 = *((int *)__cil_tmp409);
      __cil_tmp411 = (unsigned long )__cil_tmp410;
      __udelay(__cil_tmp411);
      }
    } else {
    }
    }
    {
    __cil_tmp412 = (unsigned long )pi;
    __cil_tmp413 = __cil_tmp412 + 8;
    __cil_tmp414 = *((int *)__cil_tmp413);
    __cil_tmp415 = __cil_tmp414 + 2;
    outb((unsigned char)4, __cil_tmp415);
    }
    {
    __cil_tmp416 = (unsigned long )pi;
    __cil_tmp417 = __cil_tmp416 + 16;
    if (*((int *)__cil_tmp417)) {
      {
      __cil_tmp418 = (unsigned long )pi;
      __cil_tmp419 = __cil_tmp418 + 16;
      __cil_tmp420 = *((int *)__cil_tmp419);
      __cil_tmp421 = (unsigned long )__cil_tmp420;
      __udelay(__cil_tmp421);
      }
    } else {
    }
    }
    {
    epat_write_regr(pi, 2, 8, 18);
    epat_write_regr(pi, 2, 12, 20);
    epat_write_regr(pi, 2, 18, 16);
    epat_write_regr(pi, 2, 14, 15);
    epat_write_regr(pi, 2, 15, 4);
    epat_write_regr(pi, 2, 14, 13);
    epat_write_regr(pi, 2, 15, 0);
    }
  } else {
  }
  }
  {
  __cil_tmp422 = (unsigned long )pi;
  __cil_tmp423 = __cil_tmp422 + 8;
  __cil_tmp424 = *((int *)__cil_tmp423);
  __cil_tmp425 = __cil_tmp424 + 2;
  outb((unsigned char)4, __cil_tmp425);
  }
  {
  __cil_tmp426 = (unsigned long )pi;
  __cil_tmp427 = __cil_tmp426 + 16;
  if (*((int *)__cil_tmp427)) {
    {
    __cil_tmp428 = (unsigned long )pi;
    __cil_tmp429 = __cil_tmp428 + 16;
    __cil_tmp430 = *((int *)__cil_tmp429);
    __cil_tmp431 = (unsigned long )__cil_tmp430;
    __udelay(__cil_tmp431);
    }
  } else {
  }
  }
  {
  __cil_tmp432 = (unsigned long )pi;
  __cil_tmp433 = __cil_tmp432 + 8;
  __cil_tmp434 = *((int *)__cil_tmp433);
  outb((unsigned char)34, __cil_tmp434);
  }
  {
  __cil_tmp435 = (unsigned long )pi;
  __cil_tmp436 = __cil_tmp435 + 16;
  if (*((int *)__cil_tmp436)) {
    {
    __cil_tmp437 = (unsigned long )pi;
    __cil_tmp438 = __cil_tmp437 + 16;
    __cil_tmp439 = *((int *)__cil_tmp438);
    __cil_tmp440 = (unsigned long )__cil_tmp439;
    __udelay(__cil_tmp440);
    }
  } else {
  }
  }
  {
  __cil_tmp441 = (unsigned long )pi;
  __cil_tmp442 = __cil_tmp441 + 8;
  __cil_tmp443 = *((int *)__cil_tmp442);
  outb((unsigned char)170, __cil_tmp443);
  }
  {
  __cil_tmp444 = (unsigned long )pi;
  __cil_tmp445 = __cil_tmp444 + 16;
  if (*((int *)__cil_tmp445)) {
    {
    __cil_tmp446 = (unsigned long )pi;
    __cil_tmp447 = __cil_tmp446 + 16;
    __cil_tmp448 = *((int *)__cil_tmp447);
    __cil_tmp449 = (unsigned long )__cil_tmp448;
    __udelay(__cil_tmp449);
    }
  } else {
  }
  }
  {
  __cil_tmp450 = (unsigned long )pi;
  __cil_tmp451 = __cil_tmp450 + 8;
  __cil_tmp452 = *((int *)__cil_tmp451);
  outb((unsigned char)85, __cil_tmp452);
  }
  {
  __cil_tmp453 = (unsigned long )pi;
  __cil_tmp454 = __cil_tmp453 + 16;
  if (*((int *)__cil_tmp454)) {
    {
    __cil_tmp455 = (unsigned long )pi;
    __cil_tmp456 = __cil_tmp455 + 16;
    __cil_tmp457 = *((int *)__cil_tmp456);
    __cil_tmp458 = (unsigned long )__cil_tmp457;
    __udelay(__cil_tmp458);
    }
  } else {
  }
  }
  {
  __cil_tmp459 = (unsigned long )pi;
  __cil_tmp460 = __cil_tmp459 + 8;
  __cil_tmp461 = *((int *)__cil_tmp460);
  outb((unsigned char)0, __cil_tmp461);
  }
  {
  __cil_tmp462 = (unsigned long )pi;
  __cil_tmp463 = __cil_tmp462 + 16;
  if (*((int *)__cil_tmp463)) {
    {
    __cil_tmp464 = (unsigned long )pi;
    __cil_tmp465 = __cil_tmp464 + 16;
    __cil_tmp466 = *((int *)__cil_tmp465);
    __cil_tmp467 = (unsigned long )__cil_tmp466;
    __udelay(__cil_tmp467);
    }
  } else {
  }
  }
  {
  __cil_tmp468 = (unsigned long )pi;
  __cil_tmp469 = __cil_tmp468 + 8;
  __cil_tmp470 = *((int *)__cil_tmp469);
  outb((unsigned char)255, __cil_tmp470);
  }
  {
  __cil_tmp471 = (unsigned long )pi;
  __cil_tmp472 = __cil_tmp471 + 16;
  if (*((int *)__cil_tmp472)) {
    {
    __cil_tmp473 = (unsigned long )pi;
    __cil_tmp474 = __cil_tmp473 + 16;
    __cil_tmp475 = *((int *)__cil_tmp474);
    __cil_tmp476 = (unsigned long )__cil_tmp475;
    __udelay(__cil_tmp476);
    }
  } else {
  }
  }
  {
  __cil_tmp477 = (unsigned long )pi;
  __cil_tmp478 = __cil_tmp477 + 8;
  __cil_tmp479 = *((int *)__cil_tmp478);
  outb((unsigned char)135, __cil_tmp479);
  }
  {
  __cil_tmp480 = (unsigned long )pi;
  __cil_tmp481 = __cil_tmp480 + 16;
  if (*((int *)__cil_tmp481)) {
    {
    __cil_tmp482 = (unsigned long )pi;
    __cil_tmp483 = __cil_tmp482 + 16;
    __cil_tmp484 = *((int *)__cil_tmp483);
    __cil_tmp485 = (unsigned long )__cil_tmp484;
    __udelay(__cil_tmp485);
    }
  } else {
  }
  }
  {
  __cil_tmp486 = (unsigned long )pi;
  __cil_tmp487 = __cil_tmp486 + 8;
  __cil_tmp488 = *((int *)__cil_tmp487);
  outb((unsigned char)120, __cil_tmp488);
  }
  {
  __cil_tmp489 = (unsigned long )pi;
  __cil_tmp490 = __cil_tmp489 + 16;
  if (*((int *)__cil_tmp490)) {
    {
    __cil_tmp491 = (unsigned long )pi;
    __cil_tmp492 = __cil_tmp491 + 16;
    __cil_tmp493 = *((int *)__cil_tmp492);
    __cil_tmp494 = (unsigned long )__cil_tmp493;
    __udelay(__cil_tmp494);
    }
  } else {
  }
  }
  {
  __cil_tmp495 = (unsigned long )pi;
  __cil_tmp496 = __cil_tmp495 + 8;
  __cil_tmp497 = *((int *)__cil_tmp496);
  outb((unsigned char)224, __cil_tmp497);
  }
  {
  __cil_tmp498 = (unsigned long )pi;
  __cil_tmp499 = __cil_tmp498 + 16;
  if (*((int *)__cil_tmp499)) {
    {
    __cil_tmp500 = (unsigned long )pi;
    __cil_tmp501 = __cil_tmp500 + 16;
    __cil_tmp502 = *((int *)__cil_tmp501);
    __cil_tmp503 = (unsigned long )__cil_tmp502;
    __udelay(__cil_tmp503);
    }
  } else {
  }
  }
  {
  __cil_tmp504 = (unsigned long )pi;
  __cil_tmp505 = __cil_tmp504 + 8;
  __cil_tmp506 = *((int *)__cil_tmp505);
  __cil_tmp507 = __cil_tmp506 + 2;
  outb((unsigned char)4, __cil_tmp507);
  }
  {
  __cil_tmp508 = (unsigned long )pi;
  __cil_tmp509 = __cil_tmp508 + 16;
  if (*((int *)__cil_tmp509)) {
    {
    __cil_tmp510 = (unsigned long )pi;
    __cil_tmp511 = __cil_tmp510 + 16;
    __cil_tmp512 = *((int *)__cil_tmp511);
    __cil_tmp513 = (unsigned long )__cil_tmp512;
    __udelay(__cil_tmp513);
    }
  } else {
  }
  }
  {
  __cil_tmp514 = (unsigned long )pi;
  __cil_tmp515 = __cil_tmp514 + 8;
  __cil_tmp516 = *((int *)__cil_tmp515);
  __cil_tmp517 = __cil_tmp516 + 2;
  outb((unsigned char)5, __cil_tmp517);
  }
  {
  __cil_tmp518 = (unsigned long )pi;
  __cil_tmp519 = __cil_tmp518 + 16;
  if (*((int *)__cil_tmp519)) {
    {
    __cil_tmp520 = (unsigned long )pi;
    __cil_tmp521 = __cil_tmp520 + 16;
    __cil_tmp522 = *((int *)__cil_tmp521);
    __cil_tmp523 = (unsigned long )__cil_tmp522;
    __udelay(__cil_tmp523);
    }
  } else {
  }
  }
  {
  __cil_tmp524 = (unsigned long )pi;
  __cil_tmp525 = __cil_tmp524 + 8;
  __cil_tmp526 = *((int *)__cil_tmp525);
  __cil_tmp527 = __cil_tmp526 + 2;
  outb((unsigned char)4, __cil_tmp527);
  }
  {
  __cil_tmp528 = (unsigned long )pi;
  __cil_tmp529 = __cil_tmp528 + 16;
  if (*((int *)__cil_tmp529)) {
    {
    __cil_tmp530 = (unsigned long )pi;
    __cil_tmp531 = __cil_tmp530 + 16;
    __cil_tmp532 = *((int *)__cil_tmp531);
    __cil_tmp533 = (unsigned long )__cil_tmp532;
    __udelay(__cil_tmp533);
    }
  } else {
  }
  }
  {
  __cil_tmp534 = (unsigned long )pi;
  __cil_tmp535 = __cil_tmp534 + 8;
  __cil_tmp536 = *((int *)__cil_tmp535);
  outb((unsigned char)255, __cil_tmp536);
  }
  {
  __cil_tmp537 = (unsigned long )pi;
  __cil_tmp538 = __cil_tmp537 + 16;
  if (*((int *)__cil_tmp538)) {
    {
    __cil_tmp539 = (unsigned long )pi;
    __cil_tmp540 = __cil_tmp539 + 16;
    __cil_tmp541 = *((int *)__cil_tmp540);
    __cil_tmp542 = (unsigned long )__cil_tmp541;
    __udelay(__cil_tmp542);
    }
  } else {
  }
  }
  {
  __cil_tmp543 = (unsigned long )pi;
  __cil_tmp544 = __cil_tmp543 + 8;
  __cil_tmp545 = *((int *)__cil_tmp544);
  outb((unsigned char)0, __cil_tmp545);
  }
  {
  __cil_tmp546 = (unsigned long )pi;
  __cil_tmp547 = __cil_tmp546 + 16;
  if (*((int *)__cil_tmp547)) {
    {
    __cil_tmp548 = (unsigned long )pi;
    __cil_tmp549 = __cil_tmp548 + 16;
    __cil_tmp550 = *((int *)__cil_tmp549);
    __cil_tmp551 = (unsigned long )__cil_tmp550;
    __udelay(__cil_tmp551);
    }
  } else {
  }
  }
  {
  __cil_tmp552 = (unsigned long )pi;
  __cil_tmp553 = __cil_tmp552 + 8;
  __cil_tmp554 = *((int *)__cil_tmp553);
  __cil_tmp555 = __cil_tmp554 + 2;
  outb((unsigned char)1, __cil_tmp555);
  }
  {
  __cil_tmp556 = (unsigned long )pi;
  __cil_tmp557 = __cil_tmp556 + 16;
  if (*((int *)__cil_tmp557)) {
    {
    __cil_tmp558 = (unsigned long )pi;
    __cil_tmp559 = __cil_tmp558 + 16;
    __cil_tmp560 = *((int *)__cil_tmp559);
    __cil_tmp561 = (unsigned long )__cil_tmp560;
    __udelay(__cil_tmp561);
    }
  } else {
  }
  }
  {
  __cil_tmp562 = (unsigned long )pi;
  __cil_tmp563 = __cil_tmp562 + 8;
  __cil_tmp564 = *((int *)__cil_tmp563);
  __cil_tmp565 = __cil_tmp564 + 2;
  outb((unsigned char)4, __cil_tmp565);
  }
  {
  __cil_tmp566 = (unsigned long )pi;
  __cil_tmp567 = __cil_tmp566 + 16;
  if (*((int *)__cil_tmp567)) {
    {
    __cil_tmp568 = (unsigned long )pi;
    __cil_tmp569 = __cil_tmp568 + 16;
    __cil_tmp570 = *((int *)__cil_tmp569);
    __cil_tmp571 = (unsigned long )__cil_tmp570;
    __udelay(__cil_tmp571);
    }
  } else {
  }
  }
  {
  __cil_tmp572 = (unsigned long )pi;
  __cil_tmp573 = __cil_tmp572 + 12;
  __cil_tmp574 = *((int *)__cil_tmp573);
  if (__cil_tmp574 >= 3) {
    {
    __cil_tmp575 = (unsigned long )pi;
    __cil_tmp576 = __cil_tmp575 + 8;
    __cil_tmp577 = *((int *)__cil_tmp576);
    outb((unsigned char)0, __cil_tmp577);
    }
    {
    __cil_tmp578 = (unsigned long )pi;
    __cil_tmp579 = __cil_tmp578 + 16;
    if (*((int *)__cil_tmp579)) {
      {
      __cil_tmp580 = (unsigned long )pi;
      __cil_tmp581 = __cil_tmp580 + 16;
      __cil_tmp582 = *((int *)__cil_tmp581);
      __cil_tmp583 = (unsigned long )__cil_tmp582;
      __udelay(__cil_tmp583);
      }
    } else {
    }
    }
    {
    __cil_tmp584 = (unsigned long )pi;
    __cil_tmp585 = __cil_tmp584 + 8;
    __cil_tmp586 = *((int *)__cil_tmp585);
    __cil_tmp587 = __cil_tmp586 + 2;
    outb((unsigned char)1, __cil_tmp587);
    }
    {
    __cil_tmp588 = (unsigned long )pi;
    __cil_tmp589 = __cil_tmp588 + 16;
    if (*((int *)__cil_tmp589)) {
      {
      __cil_tmp590 = (unsigned long )pi;
      __cil_tmp591 = __cil_tmp590 + 16;
      __cil_tmp592 = *((int *)__cil_tmp591);
      __cil_tmp593 = (unsigned long )__cil_tmp592;
      __udelay(__cil_tmp593);
      }
    } else {
    }
    }
    {
    __cil_tmp594 = (unsigned long )pi;
    __cil_tmp595 = __cil_tmp594 + 8;
    __cil_tmp596 = *((int *)__cil_tmp595);
    __cil_tmp597 = __cil_tmp596 + 2;
    outb((unsigned char)4, __cil_tmp597);
    }
    {
    __cil_tmp598 = (unsigned long )pi;
    __cil_tmp599 = __cil_tmp598 + 16;
    if (*((int *)__cil_tmp599)) {
      {
      __cil_tmp600 = (unsigned long )pi;
      __cil_tmp601 = __cil_tmp600 + 16;
      __cil_tmp602 = *((int *)__cil_tmp601);
      __cil_tmp603 = (unsigned long )__cil_tmp602;
      __udelay(__cil_tmp603);
      }
    } else {
    }
    }
    {
    __cil_tmp604 = (unsigned long )pi;
    __cil_tmp605 = __cil_tmp604 + 8;
    __cil_tmp606 = *((int *)__cil_tmp605);
    __cil_tmp607 = __cil_tmp606 + 2;
    outb((unsigned char)12, __cil_tmp607);
    }
    {
    __cil_tmp608 = (unsigned long )pi;
    __cil_tmp609 = __cil_tmp608 + 16;
    if (*((int *)__cil_tmp609)) {
      {
      __cil_tmp610 = (unsigned long )pi;
      __cil_tmp611 = __cil_tmp610 + 16;
      __cil_tmp612 = *((int *)__cil_tmp611);
      __cil_tmp613 = (unsigned long )__cil_tmp612;
      __udelay(__cil_tmp613);
      }
    } else {
    }
    }
    {
    __cil_tmp614 = (unsigned long )pi;
    __cil_tmp615 = __cil_tmp614 + 8;
    __cil_tmp616 = *((int *)__cil_tmp615);
    outb((unsigned char)64, __cil_tmp616);
    }
    {
    __cil_tmp617 = (unsigned long )pi;
    __cil_tmp618 = __cil_tmp617 + 16;
    if (*((int *)__cil_tmp618)) {
      {
      __cil_tmp619 = (unsigned long )pi;
      __cil_tmp620 = __cil_tmp619 + 16;
      __cil_tmp621 = *((int *)__cil_tmp620);
      __cil_tmp622 = (unsigned long )__cil_tmp621;
      __udelay(__cil_tmp622);
      }
    } else {
    }
    }
    {
    __cil_tmp623 = (unsigned long )pi;
    __cil_tmp624 = __cil_tmp623 + 8;
    __cil_tmp625 = *((int *)__cil_tmp624);
    __cil_tmp626 = __cil_tmp625 + 2;
    outb((unsigned char)6, __cil_tmp626);
    }
    {
    __cil_tmp627 = (unsigned long )pi;
    __cil_tmp628 = __cil_tmp627 + 16;
    if (*((int *)__cil_tmp628)) {
      {
      __cil_tmp629 = (unsigned long )pi;
      __cil_tmp630 = __cil_tmp629 + 16;
      __cil_tmp631 = *((int *)__cil_tmp630);
      __cil_tmp632 = (unsigned long )__cil_tmp631;
      __udelay(__cil_tmp632);
      }
    } else {
    }
    }
    {
    __cil_tmp633 = (unsigned long )pi;
    __cil_tmp634 = __cil_tmp633 + 8;
    __cil_tmp635 = *((int *)__cil_tmp634);
    __cil_tmp636 = __cil_tmp635 + 2;
    outb((unsigned char)7, __cil_tmp636);
    }
    {
    __cil_tmp637 = (unsigned long )pi;
    __cil_tmp638 = __cil_tmp637 + 16;
    if (*((int *)__cil_tmp638)) {
      {
      __cil_tmp639 = (unsigned long )pi;
      __cil_tmp640 = __cil_tmp639 + 16;
      __cil_tmp641 = *((int *)__cil_tmp640);
      __cil_tmp642 = (unsigned long )__cil_tmp641;
      __udelay(__cil_tmp642);
      }
    } else {
    }
    }
    {
    __cil_tmp643 = (unsigned long )pi;
    __cil_tmp644 = __cil_tmp643 + 8;
    __cil_tmp645 = *((int *)__cil_tmp644);
    __cil_tmp646 = __cil_tmp645 + 2;
    outb((unsigned char)4, __cil_tmp646);
    }
    {
    __cil_tmp647 = (unsigned long )pi;
    __cil_tmp648 = __cil_tmp647 + 16;
    if (*((int *)__cil_tmp648)) {
      {
      __cil_tmp649 = (unsigned long )pi;
      __cil_tmp650 = __cil_tmp649 + 16;
      __cil_tmp651 = *((int *)__cil_tmp650);
      __cil_tmp652 = (unsigned long )__cil_tmp651;
      __udelay(__cil_tmp652);
      }
    } else {
    }
    }
    {
    __cil_tmp653 = (unsigned long )pi;
    __cil_tmp654 = __cil_tmp653 + 8;
    __cil_tmp655 = *((int *)__cil_tmp654);
    __cil_tmp656 = __cil_tmp655 + 2;
    outb((unsigned char)12, __cil_tmp656);
    }
    {
    __cil_tmp657 = (unsigned long )pi;
    __cil_tmp658 = __cil_tmp657 + 16;
    if (*((int *)__cil_tmp658)) {
      {
      __cil_tmp659 = (unsigned long )pi;
      __cil_tmp660 = __cil_tmp659 + 16;
      __cil_tmp661 = *((int *)__cil_tmp660);
      __cil_tmp662 = (unsigned long )__cil_tmp661;
      __udelay(__cil_tmp662);
      }
    } else {
    }
    }
    {
    __cil_tmp663 = (unsigned long )pi;
    __cil_tmp664 = __cil_tmp663 + 8;
    __cil_tmp665 = *((int *)__cil_tmp664);
    __cil_tmp666 = __cil_tmp665 + 2;
    outb((unsigned char)4, __cil_tmp666);
    }
    {
    __cil_tmp667 = (unsigned long )pi;
    __cil_tmp668 = __cil_tmp667 + 16;
    if (*((int *)__cil_tmp668)) {
      {
      __cil_tmp669 = (unsigned long )pi;
      __cil_tmp670 = __cil_tmp669 + 16;
      __cil_tmp671 = *((int *)__cil_tmp670);
      __cil_tmp672 = (unsigned long )__cil_tmp671;
      __udelay(__cil_tmp672);
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp673 = & epatc8;
  __cil_tmp674 = *__cil_tmp673;
  if (! __cil_tmp674) {
    {
    epat_write_regr(pi, 2, 8, 16);
    epat_write_regr(pi, 2, 12, 20);
    epat_write_regr(pi, 2, 10, 56);
    epat_write_regr(pi, 2, 18, 16);
    }
  } else {
  }
  }
  return;
}
}
static void epat_disconnect(PIA *pi )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  int __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  int __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  int __cil_tmp106 ;
  int __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  int __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  int __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  int __cil_tmp125 ;
  unsigned char __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  int __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  int __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  int __cil_tmp138 ;
  unsigned char __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  int __cil_tmp142 ;
  int __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  int __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  {
  {
  __cil_tmp2 = (unsigned long )pi;
  __cil_tmp3 = __cil_tmp2 + 8;
  __cil_tmp4 = *((int *)__cil_tmp3);
  __cil_tmp5 = __cil_tmp4 + 2;
  outb((unsigned char)4, __cil_tmp5);
  }
  {
  __cil_tmp6 = (unsigned long )pi;
  __cil_tmp7 = __cil_tmp6 + 16;
  if (*((int *)__cil_tmp7)) {
    {
    __cil_tmp8 = (unsigned long )pi;
    __cil_tmp9 = __cil_tmp8 + 16;
    __cil_tmp10 = *((int *)__cil_tmp9);
    __cil_tmp11 = (unsigned long )__cil_tmp10;
    __udelay(__cil_tmp11);
    }
  } else {
  }
  }
  {
  __cil_tmp12 = (unsigned long )pi;
  __cil_tmp13 = __cil_tmp12 + 8;
  __cil_tmp14 = *((int *)__cil_tmp13);
  outb((unsigned char)34, __cil_tmp14);
  }
  {
  __cil_tmp15 = (unsigned long )pi;
  __cil_tmp16 = __cil_tmp15 + 16;
  if (*((int *)__cil_tmp16)) {
    {
    __cil_tmp17 = (unsigned long )pi;
    __cil_tmp18 = __cil_tmp17 + 16;
    __cil_tmp19 = *((int *)__cil_tmp18);
    __cil_tmp20 = (unsigned long )__cil_tmp19;
    __udelay(__cil_tmp20);
    }
  } else {
  }
  }
  {
  __cil_tmp21 = (unsigned long )pi;
  __cil_tmp22 = __cil_tmp21 + 8;
  __cil_tmp23 = *((int *)__cil_tmp22);
  outb((unsigned char)170, __cil_tmp23);
  }
  {
  __cil_tmp24 = (unsigned long )pi;
  __cil_tmp25 = __cil_tmp24 + 16;
  if (*((int *)__cil_tmp25)) {
    {
    __cil_tmp26 = (unsigned long )pi;
    __cil_tmp27 = __cil_tmp26 + 16;
    __cil_tmp28 = *((int *)__cil_tmp27);
    __cil_tmp29 = (unsigned long )__cil_tmp28;
    __udelay(__cil_tmp29);
    }
  } else {
  }
  }
  {
  __cil_tmp30 = (unsigned long )pi;
  __cil_tmp31 = __cil_tmp30 + 8;
  __cil_tmp32 = *((int *)__cil_tmp31);
  outb((unsigned char)85, __cil_tmp32);
  }
  {
  __cil_tmp33 = (unsigned long )pi;
  __cil_tmp34 = __cil_tmp33 + 16;
  if (*((int *)__cil_tmp34)) {
    {
    __cil_tmp35 = (unsigned long )pi;
    __cil_tmp36 = __cil_tmp35 + 16;
    __cil_tmp37 = *((int *)__cil_tmp36);
    __cil_tmp38 = (unsigned long )__cil_tmp37;
    __udelay(__cil_tmp38);
    }
  } else {
  }
  }
  {
  __cil_tmp39 = (unsigned long )pi;
  __cil_tmp40 = __cil_tmp39 + 8;
  __cil_tmp41 = *((int *)__cil_tmp40);
  outb((unsigned char)0, __cil_tmp41);
  }
  {
  __cil_tmp42 = (unsigned long )pi;
  __cil_tmp43 = __cil_tmp42 + 16;
  if (*((int *)__cil_tmp43)) {
    {
    __cil_tmp44 = (unsigned long )pi;
    __cil_tmp45 = __cil_tmp44 + 16;
    __cil_tmp46 = *((int *)__cil_tmp45);
    __cil_tmp47 = (unsigned long )__cil_tmp46;
    __udelay(__cil_tmp47);
    }
  } else {
  }
  }
  {
  __cil_tmp48 = (unsigned long )pi;
  __cil_tmp49 = __cil_tmp48 + 8;
  __cil_tmp50 = *((int *)__cil_tmp49);
  outb((unsigned char)255, __cil_tmp50);
  }
  {
  __cil_tmp51 = (unsigned long )pi;
  __cil_tmp52 = __cil_tmp51 + 16;
  if (*((int *)__cil_tmp52)) {
    {
    __cil_tmp53 = (unsigned long )pi;
    __cil_tmp54 = __cil_tmp53 + 16;
    __cil_tmp55 = *((int *)__cil_tmp54);
    __cil_tmp56 = (unsigned long )__cil_tmp55;
    __udelay(__cil_tmp56);
    }
  } else {
  }
  }
  {
  __cil_tmp57 = (unsigned long )pi;
  __cil_tmp58 = __cil_tmp57 + 8;
  __cil_tmp59 = *((int *)__cil_tmp58);
  outb((unsigned char)135, __cil_tmp59);
  }
  {
  __cil_tmp60 = (unsigned long )pi;
  __cil_tmp61 = __cil_tmp60 + 16;
  if (*((int *)__cil_tmp61)) {
    {
    __cil_tmp62 = (unsigned long )pi;
    __cil_tmp63 = __cil_tmp62 + 16;
    __cil_tmp64 = *((int *)__cil_tmp63);
    __cil_tmp65 = (unsigned long )__cil_tmp64;
    __udelay(__cil_tmp65);
    }
  } else {
  }
  }
  {
  __cil_tmp66 = (unsigned long )pi;
  __cil_tmp67 = __cil_tmp66 + 8;
  __cil_tmp68 = *((int *)__cil_tmp67);
  outb((unsigned char)120, __cil_tmp68);
  }
  {
  __cil_tmp69 = (unsigned long )pi;
  __cil_tmp70 = __cil_tmp69 + 16;
  if (*((int *)__cil_tmp70)) {
    {
    __cil_tmp71 = (unsigned long )pi;
    __cil_tmp72 = __cil_tmp71 + 16;
    __cil_tmp73 = *((int *)__cil_tmp72);
    __cil_tmp74 = (unsigned long )__cil_tmp73;
    __udelay(__cil_tmp74);
    }
  } else {
  }
  }
  {
  __cil_tmp75 = (unsigned long )pi;
  __cil_tmp76 = __cil_tmp75 + 8;
  __cil_tmp77 = *((int *)__cil_tmp76);
  outb((unsigned char)48, __cil_tmp77);
  }
  {
  __cil_tmp78 = (unsigned long )pi;
  __cil_tmp79 = __cil_tmp78 + 16;
  if (*((int *)__cil_tmp79)) {
    {
    __cil_tmp80 = (unsigned long )pi;
    __cil_tmp81 = __cil_tmp80 + 16;
    __cil_tmp82 = *((int *)__cil_tmp81);
    __cil_tmp83 = (unsigned long )__cil_tmp82;
    __udelay(__cil_tmp83);
    }
  } else {
  }
  }
  {
  __cil_tmp84 = (unsigned long )pi;
  __cil_tmp85 = __cil_tmp84 + 8;
  __cil_tmp86 = *((int *)__cil_tmp85);
  __cil_tmp87 = __cil_tmp86 + 2;
  outb((unsigned char)4, __cil_tmp87);
  }
  {
  __cil_tmp88 = (unsigned long )pi;
  __cil_tmp89 = __cil_tmp88 + 16;
  if (*((int *)__cil_tmp89)) {
    {
    __cil_tmp90 = (unsigned long )pi;
    __cil_tmp91 = __cil_tmp90 + 16;
    __cil_tmp92 = *((int *)__cil_tmp91);
    __cil_tmp93 = (unsigned long )__cil_tmp92;
    __udelay(__cil_tmp93);
    }
  } else {
  }
  }
  {
  __cil_tmp94 = (unsigned long )pi;
  __cil_tmp95 = __cil_tmp94 + 8;
  __cil_tmp96 = *((int *)__cil_tmp95);
  __cil_tmp97 = __cil_tmp96 + 2;
  outb((unsigned char)5, __cil_tmp97);
  }
  {
  __cil_tmp98 = (unsigned long )pi;
  __cil_tmp99 = __cil_tmp98 + 16;
  if (*((int *)__cil_tmp99)) {
    {
    __cil_tmp100 = (unsigned long )pi;
    __cil_tmp101 = __cil_tmp100 + 16;
    __cil_tmp102 = *((int *)__cil_tmp101);
    __cil_tmp103 = (unsigned long )__cil_tmp102;
    __udelay(__cil_tmp103);
    }
  } else {
  }
  }
  {
  __cil_tmp104 = (unsigned long )pi;
  __cil_tmp105 = __cil_tmp104 + 8;
  __cil_tmp106 = *((int *)__cil_tmp105);
  __cil_tmp107 = __cil_tmp106 + 2;
  outb((unsigned char)4, __cil_tmp107);
  }
  {
  __cil_tmp108 = (unsigned long )pi;
  __cil_tmp109 = __cil_tmp108 + 16;
  if (*((int *)__cil_tmp109)) {
    {
    __cil_tmp110 = (unsigned long )pi;
    __cil_tmp111 = __cil_tmp110 + 16;
    __cil_tmp112 = *((int *)__cil_tmp111);
    __cil_tmp113 = (unsigned long )__cil_tmp112;
    __udelay(__cil_tmp113);
    }
  } else {
  }
  }
  {
  __cil_tmp114 = (unsigned long )pi;
  __cil_tmp115 = __cil_tmp114 + 8;
  __cil_tmp116 = *((int *)__cil_tmp115);
  outb((unsigned char)255, __cil_tmp116);
  }
  {
  __cil_tmp117 = (unsigned long )pi;
  __cil_tmp118 = __cil_tmp117 + 16;
  if (*((int *)__cil_tmp118)) {
    {
    __cil_tmp119 = (unsigned long )pi;
    __cil_tmp120 = __cil_tmp119 + 16;
    __cil_tmp121 = *((int *)__cil_tmp120);
    __cil_tmp122 = (unsigned long )__cil_tmp121;
    __udelay(__cil_tmp122);
    }
  } else {
  }
  }
  {
  __cil_tmp123 = (unsigned long )pi;
  __cil_tmp124 = __cil_tmp123 + 36;
  __cil_tmp125 = *((int *)__cil_tmp124);
  __cil_tmp126 = (unsigned char )__cil_tmp125;
  __cil_tmp127 = (unsigned long )pi;
  __cil_tmp128 = __cil_tmp127 + 8;
  __cil_tmp129 = *((int *)__cil_tmp128);
  outb(__cil_tmp126, __cil_tmp129);
  }
  {
  __cil_tmp130 = (unsigned long )pi;
  __cil_tmp131 = __cil_tmp130 + 16;
  if (*((int *)__cil_tmp131)) {
    {
    __cil_tmp132 = (unsigned long )pi;
    __cil_tmp133 = __cil_tmp132 + 16;
    __cil_tmp134 = *((int *)__cil_tmp133);
    __cil_tmp135 = (unsigned long )__cil_tmp134;
    __udelay(__cil_tmp135);
    }
  } else {
  }
  }
  {
  __cil_tmp136 = (unsigned long )pi;
  __cil_tmp137 = __cil_tmp136 + 40;
  __cil_tmp138 = *((int *)__cil_tmp137);
  __cil_tmp139 = (unsigned char )__cil_tmp138;
  __cil_tmp140 = (unsigned long )pi;
  __cil_tmp141 = __cil_tmp140 + 8;
  __cil_tmp142 = *((int *)__cil_tmp141);
  __cil_tmp143 = __cil_tmp142 + 2;
  outb(__cil_tmp139, __cil_tmp143);
  }
  {
  __cil_tmp144 = (unsigned long )pi;
  __cil_tmp145 = __cil_tmp144 + 16;
  if (*((int *)__cil_tmp145)) {
    {
    __cil_tmp146 = (unsigned long )pi;
    __cil_tmp147 = __cil_tmp146 + 16;
    __cil_tmp148 = *((int *)__cil_tmp147);
    __cil_tmp149 = (unsigned long )__cil_tmp148;
    __udelay(__cil_tmp149);
    }
  } else {
  }
  }
  return;
}
}
static int epat_test_proto(PIA *pi , char *scratch , int verbose )
{ int k ;
  int j ;
  int f ;
  int cc ;
  int e[2] ;
  int tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  char *__cil_tmp26 ;
  char __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  char *__cil_tmp33 ;
  char __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  char *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  {
  {
  __cil_tmp11 = 0 * 4UL;
  __cil_tmp12 = (unsigned long )(e) + __cil_tmp11;
  *((int *)__cil_tmp12) = 0;
  __cil_tmp13 = 1 * 4UL;
  __cil_tmp14 = (unsigned long )(e) + __cil_tmp13;
  *((int *)__cil_tmp14) = 0;
  epat_connect(pi);
  cc = epat_read_regr(pi, 2, 13);
  epat_disconnect(pi);
  epat_connect(pi);
  j = 0;
  }
  {
  while (1) {
    while_continue: ;
    if (j < 2) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp15 = j * 16;
    __cil_tmp16 = 160 + __cil_tmp15;
    epat_write_regr(pi, 0, 6, __cil_tmp16);
    k = 0;
    }
    {
    while (1) {
      while_continue___0: ;
      if (k < 256) {
      } else {
        goto while_break___0;
      }
      {
      __cil_tmp17 = k ^ 170;
      epat_write_regr(pi, 0, 2, __cil_tmp17);
      __cil_tmp18 = k ^ 85;
      epat_write_regr(pi, 0, 3, __cil_tmp18);
      tmp = epat_read_regr(pi, 0, 2);
      }
      {
      __cil_tmp19 = k ^ 170;
      if (tmp != __cil_tmp19) {
        __cil_tmp20 = j * 4UL;
        __cil_tmp21 = (unsigned long )(e) + __cil_tmp20;
        __cil_tmp22 = j * 4UL;
        __cil_tmp23 = (unsigned long )(e) + __cil_tmp22;
        __cil_tmp24 = *((int *)__cil_tmp23);
        *((int *)__cil_tmp21) = __cil_tmp24 + 1;
      } else {
      }
      }
      k = k + 1;
    }
    while_break___0: ;
    }
    j = j + 1;
  }
  while_break: ;
  }
  {
  epat_disconnect(pi);
  f = 0;
  epat_connect(pi);
  epat_write_regr(pi, 2, 19, 1);
  epat_write_regr(pi, 2, 19, 0);
  epat_write_regr(pi, 2, 10, 17);
  epat_read_block(pi, scratch, 512);
  k = 0;
  }
  {
  while (1) {
    while_continue___1: ;
    if (k < 256) {
    } else {
      goto while_break___1;
    }
    {
    __cil_tmp25 = 2 * k;
    __cil_tmp26 = scratch + __cil_tmp25;
    __cil_tmp27 = *__cil_tmp26;
    __cil_tmp28 = (int )__cil_tmp27;
    __cil_tmp29 = __cil_tmp28 & 255;
    if (__cil_tmp29 != k) {
      f = f + 1;
    } else {
    }
    }
    {
    __cil_tmp30 = 255 - k;
    __cil_tmp31 = 2 * k;
    __cil_tmp32 = __cil_tmp31 + 1;
    __cil_tmp33 = scratch + __cil_tmp32;
    __cil_tmp34 = *__cil_tmp33;
    __cil_tmp35 = (int )__cil_tmp34;
    __cil_tmp36 = __cil_tmp35 & 255;
    if (__cil_tmp36 != __cil_tmp30) {
      f = f + 1;
    } else {
    }
    }
    k = k + 1;
  }
  while_break___1: ;
  }
  {
  epat_disconnect(pi);
  }
  if (verbose) {
    {
    __cil_tmp37 = (unsigned long )pi;
    __cil_tmp38 = __cil_tmp37 + 24;
    __cil_tmp39 = *((char **)__cil_tmp38);
    __cil_tmp40 = (unsigned long )pi;
    __cil_tmp41 = __cil_tmp40 + 8;
    __cil_tmp42 = *((int *)__cil_tmp41);
    __cil_tmp43 = (unsigned long )pi;
    __cil_tmp44 = __cil_tmp43 + 12;
    __cil_tmp45 = *((int *)__cil_tmp44);
    __cil_tmp46 = 0 * 4UL;
    __cil_tmp47 = (unsigned long )(e) + __cil_tmp46;
    __cil_tmp48 = *((int *)__cil_tmp47);
    __cil_tmp49 = 1 * 4UL;
    __cil_tmp50 = (unsigned long )(e) + __cil_tmp49;
    __cil_tmp51 = *((int *)__cil_tmp50);
    printk("%s: epat: port 0x%x, mode %d, ccr %x, test=(%d,%d,%d)\n", __cil_tmp39,
           __cil_tmp42, __cil_tmp45, cc, __cil_tmp48, __cil_tmp51, f);
    }
  } else {
  }
  {
  __cil_tmp52 = 0 * 4UL;
  __cil_tmp53 = (unsigned long )(e) + __cil_tmp52;
  if (*((int *)__cil_tmp53)) {
    {
    __cil_tmp54 = 1 * 4UL;
    __cil_tmp55 = (unsigned long )(e) + __cil_tmp54;
    if (*((int *)__cil_tmp55)) {
      tmp___0 = 1;
    } else {
      goto _L;
    }
    }
  } else
  _L:
  if (f) {
    tmp___0 = 1;
  } else {
    tmp___0 = 0;
  }
  }
  return (tmp___0);
}
}
static void epat_log_adapter(PIA *pi , char *scratch , int verbose )
{ int ver ;
  char *mode_string[6] ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  char *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  char *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  {
  {
  __cil_tmp6 = 0 * 8UL;
  __cil_tmp7 = (unsigned long )(mode_string) + __cil_tmp6;
  *((char **)__cil_tmp7) = (char *)"4-bit";
  __cil_tmp8 = 1 * 8UL;
  __cil_tmp9 = (unsigned long )(mode_string) + __cil_tmp8;
  *((char **)__cil_tmp9) = (char *)"5/3";
  __cil_tmp10 = 2 * 8UL;
  __cil_tmp11 = (unsigned long )(mode_string) + __cil_tmp10;
  *((char **)__cil_tmp11) = (char *)"8-bit";
  __cil_tmp12 = 3 * 8UL;
  __cil_tmp13 = (unsigned long )(mode_string) + __cil_tmp12;
  *((char **)__cil_tmp13) = (char *)"EPP-8";
  __cil_tmp14 = 4 * 8UL;
  __cil_tmp15 = (unsigned long )(mode_string) + __cil_tmp14;
  *((char **)__cil_tmp15) = (char *)"EPP-16";
  __cil_tmp16 = 5 * 8UL;
  __cil_tmp17 = (unsigned long )(mode_string) + __cil_tmp16;
  *((char **)__cil_tmp17) = (char *)"EPP-32";
  epat_connect(pi);
  epat_write_regr(pi, 2, 10, 56);
  ver = epat_read_regr(pi, 2, 11);
  epat_disconnect(pi);
  __cil_tmp18 = (unsigned long )pi;
  __cil_tmp19 = __cil_tmp18 + 24;
  __cil_tmp20 = *((char **)__cil_tmp19);
  __cil_tmp21 = (unsigned long )pi;
  __cil_tmp22 = __cil_tmp21 + 8;
  __cil_tmp23 = *((int *)__cil_tmp22);
  printk("%s: epat %s, Shuttle EPAT chip %x at 0x%x, ", __cil_tmp20, "1.02", ver,
         __cil_tmp23);
  __cil_tmp24 = (unsigned long )pi;
  __cil_tmp25 = __cil_tmp24 + 12;
  __cil_tmp26 = *((int *)__cil_tmp25);
  __cil_tmp27 = (unsigned long )pi;
  __cil_tmp28 = __cil_tmp27 + 12;
  __cil_tmp29 = *((int *)__cil_tmp28);
  __cil_tmp30 = __cil_tmp29 * 8UL;
  __cil_tmp31 = (unsigned long )(mode_string) + __cil_tmp30;
  __cil_tmp32 = *((char **)__cil_tmp31);
  __cil_tmp33 = (unsigned long )pi;
  __cil_tmp34 = __cil_tmp33 + 16;
  __cil_tmp35 = *((int *)__cil_tmp34);
  printk("mode %d (%s), delay %d\n", __cil_tmp26, __cil_tmp32, __cil_tmp35);
  }
  return;
}
}
static struct pi_protocol epat =
     {{(char )'e', (char )'p', (char )'a', (char )'t', (char )'\000', (char)0, (char)0,
     (char)0}, 0, 6, 3, 1, 1, & epat_write_regr, & epat_read_regr, & epat_write_block,
    & epat_read_block, & epat_connect, & epat_disconnect, (int (*)(PIA * ))0, (int (*)(PIA * ))0,
    & epat_test_proto, & epat_log_adapter, (int (*)(PIA * ))0, (void (*)(PIA * ))0,
    & __this_module};
static int epat_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int epat_init(void)
{ int tmp ;
  int *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = & epatc8;
  *__cil_tmp2 = 1;
  tmp = paride_register(& epat);
  }
  return (tmp);
}
}
static void epat_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void epat_exit(void)
{
  {
  {
  paride_unregister(& epat);
  }
  return;
}
}
static char const __mod_license339[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
int init_module(void)
{ int tmp ;
  {
  {
  tmp = epat_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  epat_exit();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ PIA *var_epat_write_regr_0_p0 ;
  int var_epat_write_regr_0_p1 ;
  int var_epat_write_regr_0_p2 ;
  int var_epat_write_regr_0_p3 ;
  PIA *var_epat_read_regr_1_p0 ;
  int var_epat_read_regr_1_p1 ;
  int var_epat_read_regr_1_p2 ;
  PIA *var_epat_write_block_3_p0 ;
  char *var_epat_write_block_3_p1 ;
  int var_epat_write_block_3_p2 ;
  PIA *var_epat_read_block_2_p0 ;
  char *var_epat_read_block_2_p1 ;
  int var_epat_read_block_2_p2 ;
  PIA *var_epat_connect_4_p0 ;
  PIA *var_epat_disconnect_5_p0 ;
  PIA *var_epat_test_proto_6_p0 ;
  char *var_epat_test_proto_6_p1 ;
  int var_epat_test_proto_6_p2 ;
  PIA *var_epat_log_adapter_7_p0 ;
  char *var_epat_log_adapter_7_p1 ;
  int var_epat_log_adapter_7_p2 ;
  int tmp ;
  int ldv_s_epat_pi_protocol ;
  int tmp___0 ;
  int tmp___1 ;
  int __cil_tmp26 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = epat_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  ldv_s_epat_pi_protocol = 0;
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      {
      __cil_tmp26 = ldv_s_epat_pi_protocol == 0;
      if (! __cil_tmp26) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0 == 0) {
      goto case_0;
    } else
    if (tmp___0 == 1) {
      goto case_1;
    } else
    if (tmp___0 == 2) {
      goto case_2;
    } else
    if (tmp___0 == 3) {
      goto case_3;
    } else
    if (tmp___0 == 4) {
      goto case_4;
    } else
    if (tmp___0 == 5) {
      goto case_5;
    } else
    if (tmp___0 == 6) {
      goto case_6;
    } else
    if (tmp___0 == 7) {
      goto case_7;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_epat_pi_protocol == 0) {
          {
          epat_connect(var_epat_connect_4_p0);
          ldv_s_epat_pi_protocol = ldv_s_epat_pi_protocol + 1;
          }
        } else {
        }
        goto switch_break;
        case_1:
        if (ldv_s_epat_pi_protocol == 1) {
          {
          epat_disconnect(var_epat_disconnect_5_p0);
          ldv_s_epat_pi_protocol = 0;
          }
        } else {
        }
        goto switch_break;
        case_2:
        {
        epat_write_regr(var_epat_write_regr_0_p0, var_epat_write_regr_0_p1, var_epat_write_regr_0_p2,
                        var_epat_write_regr_0_p3);
        }
        goto switch_break;
        case_3:
        {
        epat_read_regr(var_epat_read_regr_1_p0, var_epat_read_regr_1_p1, var_epat_read_regr_1_p2);
        }
        goto switch_break;
        case_4:
        {
        epat_write_block(var_epat_write_block_3_p0, var_epat_write_block_3_p1, var_epat_write_block_3_p2);
        }
        goto switch_break;
        case_5:
        {
        epat_read_block(var_epat_read_block_2_p0, var_epat_read_block_2_p1, var_epat_read_block_2_p2);
        }
        goto switch_break;
        case_6:
        {
        epat_test_proto(var_epat_test_proto_6_p0, var_epat_test_proto_6_p1, var_epat_test_proto_6_p2);
        }
        goto switch_break;
        case_7:
        {
        epat_log_adapter(var_epat_log_adapter_7_p0, var_epat_log_adapter_7_p1, var_epat_log_adapter_7_p2);
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  {
  epat_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void __udelay(unsigned long arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int paride_register(PIP *arg0) {
  return __VERIFIER_nondet_int();
}
void paride_unregister(PIP *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
