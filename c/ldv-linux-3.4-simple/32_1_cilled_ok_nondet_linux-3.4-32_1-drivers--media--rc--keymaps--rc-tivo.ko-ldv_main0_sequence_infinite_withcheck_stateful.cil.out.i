extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct task_struct;
struct task_struct;
struct task_struct;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
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
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   u64 rc_type ;
   char const *name ;
   spinlock_t lock ;
};
struct rc_map_list {
   struct list_head list ;
   struct rc_map map ;
};
struct task_struct;
struct __anonstruct_220 {
   int : 0 ;
};
long ldv__builtin_expect(long val , long res ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int rc_map_register(struct rc_map_list *map ) ;
extern void rc_map_unregister(struct rc_map_list *map ) ;
int init_module(void) ;
void cleanup_module(void) ;
static struct rc_map_table tivo[45] =
  { {2701955087U, (u32 )226},
        {2701920263U, (u32 )356},
        {2701953031U, (u32 )377},
        {2701929475U, (u32 )241},
        {2701969415U, (u32 )358},
        {2701982213U, (u32 )154},
        {(u32 )8728671, (u32 )154},
        {2701945859U, (u32 )365},
        {2701928455U, (u32 )103},
        {2701944839U, (u32 )108},
        {2701977607U, (u32 )105},
        {2701961223U, (u32 )106},
        {2701924359U, (u32 )178},
        {2701957127U, (u32 )353},
        {2701940743U, (u32 )177},
        {2701932551U, (u32 )115},
        {2701965319U, (u32 )114},
        {2701973511U, (u32 )113},
        {2701919243U, (u32 )167},
        {2701948935U, (u32 )402},
        {2701981703U, (u32 )403},
        {(u32 )8728607, (u32 )403},
        {2701952011U, (u32 )207},
        {2701968395U, (u32 )119},
        {2701960203U, (u32 )409},
        {2701935627U, (u32 )168},
        {2701927435U, (u32 )208},
        {2701943819U, (u32 )412},
        {2701976587U, (u32 )407},
        {2701926925U, (u32 )372},
        {2701922829U, (u32 )128},
        {2701939213U, (u32 )389},
        {2701923339U, (u32 )513},
        {2701956107U, (u32 )514},
        {2701939723U, (u32 )515},
        {2701972491U, (u32 )516},
        {2701931531U, (u32 )517},
        {2701964299U, (u32 )518},
        {2701947915U, (u32 )519},
        {2701980683U, (u32 )520},
        {(u32 )8728623, (u32 )520},
        {2701921283U, (u32 )521},
        {2701954051U, (u32 )512},
        {2701970435U, (u32 )28},
        {2701937667U, (u32 )355}};
static struct rc_map_list tivo_map = {{(struct list_head *)0, (struct list_head *)0}, {tivo, (unsigned int )(sizeof(tivo) / sizeof(tivo[0]) + sizeof(struct __anonstruct_220 )),
                                                     0U, 0U, (u64 )(1 << 1), "rc-tivo",
                                                     {{{{{0U}}, 0U, 0U, (void *)0}}}}};
static int init_rc_map_tivo(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int init_rc_map_tivo(void)
{ int tmp ;
  {
  {
  tmp = rc_map_register(& tivo_map);
  }
  return (tmp);
}
}
static void exit_rc_map_tivo(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void exit_rc_map_tivo(void)
{
  {
  {
  rc_map_unregister(& tivo_map);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = init_rc_map_tivo();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  exit_rc_map_tivo();
  }
  return;
}
}
static char const __mod_license99[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author100[39] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'J',
        (char const )'a', (char const )'r', (char const )'o', (char const )'d',
        (char const )' ', (char const )'W', (char const )'i', (char const )'l',
        (char const )'s', (char const )'o', (char const )'n', (char const )' ',
        (char const )'<', (char const )'j', (char const )'a', (char const )'r',
        (char const )'o', (char const )'d', (char const )'@', (char const )'r',
        (char const )'e', (char const )'d', (char const )'h', (char const )'a',
        (char const )'t', (char const )'.', (char const )'c', (char const )'o',
        (char const )'m', (char const )'>', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = init_rc_map_tivo();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      goto while_break;
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    {
    goto switch_default;
    if (0) {
      switch_default:
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  while_break: ;
  }
  {
  exit_rc_map_tivo();
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
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int rc_map_register(struct rc_map_list *arg0) {
  return __VERIFIER_nondet_int();
}
void rc_map_unregister(struct rc_map_list *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
