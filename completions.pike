/*
  This script generates Pike.sublime-completions
*/

// Index is the trigger, value the expansion
mapping builtins = ([

  /* Language constants */
  "UNDEFINED"         : "UNDEFINED",
  "__MAJOR__"         : "__MAJOR__",
  "__MINOR__"         : "__MINOR__",
  "__BUILD__"         : "__BUILD__",
  "__REAL_VERSION__"  : "__REAL_VERSION__",
  "__REAL_MAJOR__"    : "__REAL_MAJOR__",
  "__REAL_MINOR__"    : "__REAL_MINOR__",
  "__REAL_BUILD__"    : "__REAL_BUILD__",
  "__DATE__"          : "__DATE__",
  "__TIME__"          : "__TIME__",
  "__AUTO_BIGNUM__"   : "__AUTO_BIGNUM__",
  "__NT__"            : "__NT__",
  "__PIKE__"          : "__PIKE__",
  "__amigaos__"       : "__amigaos__",
  "__VERSION__"       : "__VERSION__",
  "__DIR__"           : "__DIR__",
  "__FILE__"          : "__FILE__",
  "__LINE__"          : "__LINE__",
  "__func__"          : "__func__",
  "this_program"      : "this_program",

  /* Storage modifiers */
  "public"            : "public ${1}",
  "protected"         : "protected ${1}",
  "private"           : "private ${1}",
  "static"            : "static ${1}",
  "constant"          : "constant ${1}",
  "local"             : "local ${1}",
  "final"             : "final ${1}",
  "optional"          : "optional ${1}",

  /* Built-in functions */
  "abs": "abs(${1:float|int|object arg})",
  "access": "access(${1:string path}, ${2:string|void mode})",
  "acos": "acos(${1:float arg})",
  "acosh": "acosh(${1:float arg})",
  "add_constant":"add_constant(${1:string name}, ${2:mixed value})",
  "add_include_path":"add_include_path(${1:string tmp})",
  "add_module_path":"add_module_path(${1:string tmp})",
  "add_program_path":"add_program_path(${1:string tmp})",
  "aggregate":"aggregate(${1:mixed ... elements})",
  "aggregate_mapping":"aggregate_mapping(${1:mixed ... elements})",
  "aggregate_multiset":"aggregate_multiset(${1:mixed ... elements})",
  "alarm":"alarm(${1:int seconds})",
  "all_constants":"all_constants()",
  "all_threads":"all_threads()",
  "allocate":"allocate(${1:int size}${2:, mixed init})",
  "array_sscanf":"array_sscanf(${1:string data}, ${2:string format})",
  "arrayp":"arrayp(${1:mixed ... arg})",
  "asin":"asin(${1:int|float f})",
  "asinh":"asinh(${1:int|float f})",
  "atan":"atan(${1:int|float f1}, ${2:int|float f2})",
  "atan2":"atan2(${1:int|float f1}, ${2:int|float f2})",
  "atanh":"atanh(${1:int|float f})",
  "atexit":"atexit(${1:function(:void) callback})",

  "backtrace":"backtrace()",
  "basename":"basename(${1:string path})",
  "basetype":"basetype(${1:mixed value})",
  "bool":"bool",

  "call_function":"call_function(${1:function(:void) fun}, ${2:mixed ... args})",
  "call_out": "call_out(${1:function f}, ${2:float|int delay}, ${3:void|mixed ... args});",
  "call_out_info":"call_out_info()",
  "callablep": "callablep(${1:mixed arg})",
  "cd":"cd(${1:string path})",
  "ceil":"ceil(${1:float f})",
  "chmod":"chmod(${1:string path}, ${2:int mode})",
  "chown":"chown",
  "chroot":"chroot",
  "cleargroups":"cleargroups",
  "closelog":"closelog",
  "column":"column(${1:array data}, ${2:mixed index})",
  "combine_path":"combine_path(${1:string path}, ${2:string ... paths})",
  "combine_path_amigaos":"combine_path_amigaos(${1:string path}, ${2:string ... paths})",
  "combine_path_nt":"combine_path_nt(${1:string path}, ${2:string ... paths})",
  "combine_path_unix":"combine_path_unix(${1:string path}, ${2:string ... paths})",
  "compile":"compile(${1:string source}, ${2:CompilationHandler|void handler}, ${3:int|void major}, ${4:int|void minor}, ${5:program|void target}, ${6:object|void placeholder})",
  "compile_file":"compile_file(${1:string filename}, ${2:object|void handler}, ${3:void|program p}, ${4:void|object o})",
  "compile_string":"compile_string(${1:string source}, ${2:void|string filename}, ${3:object|void handler}, ${4:void|program p}, ${5:void|object o}, ${6:void|int _show_if_constant_errors})",
  "copy_value": "copy_value(${1:mixed value})",
  "cos":"cos(${1:int|float f})",
  "cosh":"cosh(${1:int|float f})",
  "cpp":"cpp(${1:string data}, ${2:mapping|string|void current_file}, ${3:int|string|void charset}, ${4:object|void handler}, ${5:void|int compat_major}, ${6:void|int compat_minor}, ${7:void|int picky_cpp})",
  "crypt":"crypt(${1:string password_or_typed_password}${2:, string crypted_password})",
  "ctime":"ctime(${1:int timestamp})",

  "decode_value":"decode_value(${1:string coded_value}${2:, void|Codec codec})",
  "delay":"delay(${1:int|float s})",
  "describe_backtrace":"describe_backtrace(${1:mixed trace}${2:, void|int linewidth})",
  "describe_error":"describe_error(${1:mixed err})",
  "destruct":"destruct(${1:void|object o})",
  "destructedp":"destructedp(${1:mixed arg})",
  "dirname":"dirname(${1:string path})",

  "encode_value":"encode_value(${1:mixed value}${2:, Codec|void codec})",
  "encode_value_canonic":"encode_value_canonic(${1:mixed value}${2:, Codec|void codec})",
  "enumerate":"enumerate(${1:int n}${2:, void|mixed step}${3:, void|mixed start}${4:, void|function(:void) operator})",
  "equal":"equal(${1:mixed a}, ${2:mixed b})",
  "errno":"errno()",
  "error":"error(${1:sprintf_format f}, ${2:sprintf_args ... args})",
  "exece":"exece(${1:string file}, ${2:array(string) args}${3:, void|mapping(string:string) env})",
  "exit":"exit(${1:int returncode}${2:, void|string fmt}${3:, mixed ... extra})",
  "exp":"exp(${1:float|int f})",
  "explode_path":"explode_path(${1:string p})",


  "create"         : "void create(${1:mixed ... arg})\\n{\\n\\t${2:}\\n}",

  "object_program" : "object_program(${1:this})",

  "mappingp"       : "mappingp(${1:mixed arg})",
  "floatp"         : "floatp(${1:mixed arg})",
  "intp"           : "intp(${1:mixed arg})",
  "objectp"        : "objectp(${1:mixed arg})",
  "functionp"      : "functionp(${1:mixed arg})",

  "stringp"        : "stringp(${1:mixed arg})",

  "sprintf"        : "sprintf(\\\"$1:format\\\", ${2:mixed arg})",
  "_sprintf"       : "_sprintf(\\\"$1:format\\\", ${2:mixed arg})",
  "write"          : "write(\\\"${1:format}\\\\n\\\", ${2:mixed ... args});",
  "werror"         : "werror(\\\"${1:format}\\\\n\\\", ${2:mixed ... args});",

  "m_delete"       : "m_delete(${1:mapping}, ${2:mixed key})",
  "utf8_to_string" : "utf8_to_string(${1:string str})",
  "string_to_utf8" : "string_to_utf8(${1:string str})",
  "search"         : "search(${1:mixed haystack}, ${2:mixed needle}${3:, mixed|void start})",
  "sscanf"         : "sscanf(${1:string data}, ${2:string format}, ${3:mixed ... lvalues})",
  "replace"        : "replace(${1:string data}, ${2:string from}, ${3:string to})",



  // Parser.XML.Tree
  /*
  "->get_attributes"    : "->get_attributes()",
  "->get_children"      : "->get_children()",
  "->get_first_element" : "->get_first_element()",
  "->get_full_name"     : "->get_full_name()",
  "->get_node_type"     : "->get_node_type()",
  "->get_tag_name"      : "->get_tag_name()",
  "->value_of_node"     : "->value_of_node()"
  */
]);


mapping classes = ([
  "Roxen.http_encode_url"  : "Roxen.http_encode_url(${1:string url})",

  "Stdio.write_file"     : "Stdio.write_file(${1:string filename}, ${2:string content})",
  "Stdio.read_file"      : "Stdio.write_file(${1:string filename})",
  "Stdio.exist"          : "Stdio.exist(${1:string filename})",
  "Protocols.HTTP.Query" : "Protocols.HTTP.Query",
]);

mapping macros = ([
  "define" : "#define ${1:WHAT}",
  "ifdef" : "#ifdef ${1:WHAT}\\n  ${2:// Code}\\n#endif",
  "ifconstant" : "#if constant(${1:WHAT})\\n  ${2:// Code}\\n#endif",
]);

mapping userdef = ([
  "TRACE"          : "TRACE(\\\"${1:format}\\\\n\\\", ${2:mixed ... args});",
]);

#if 0
mapping all_funcs = ([
  "`!":`!,
  "`!=":`!=,
  "`%":`%,
  "`&":`&,
  "`()":`(),
  "`*":`*,
  "`+":`+,
  "`-":`-,
  "`->":`->,
  "`->=":`->=,
  "`/":`/,
  "`<":`<,
  "`<<":`<<,
  "`<=":`<=,
  "`==":`==,
  "`>":`>,
  "`>=":`>=,
  "`>>":`>>,
  "`[..]":`[..],
  "`[]":`[],
  "`[]=":`[]=,
  "`^":`^,
  "`|":`|,
  "`~":`~,
  "abs":abs,
  "acos":acos,
  "acosh":acosh,
  "add_constant":add_constant,
  "add_include_path":add_include_path,
  "add_module_path":add_module_path,
  "add_program_path":add_program_path,
  "aggregate":aggregate,
  "aggregate_mapping":aggregate_mapping,
  "aggregate_multiset":aggregate_multiset,
  "alarm":alarm,
  "all_constants":all_constants,
  "all_threads":all_threads,
  "allocate":allocate,
  "array_sscanf":array_sscanf,
  "arrayp":arrayp,
  "asin":asin,
  "asinh":asinh,
  "atan":atan,
  "atan2":atan2,
  "atanh":atanh,
  "atexit":atexit,
  "backtrace":backtrace,
  "basename":basename,
  "basetype":basetype,
  "bool":bool,
  "call_function":call_function,
  "call_out":call_out,
  "call_out_info":call_out_info,
  "callablep":callablep,
  "cd":cd,
  "ceil":ceil,
  "chmod":chmod,
  "chown":chown,
  "chroot":chroot,
  "cleargroups":cleargroups,
  "closelog":closelog,
  "column":column,
  "combine_path":combine_path,
  "combine_path_amigaos":combine_path_amigaos,
  "combine_path_nt":combine_path_nt,
  "combine_path_unix":combine_path_unix,
  "compile":compile,
  "compile_file":compile_file,
  "compile_string":compile_string,
  "copy_value":copy_value,
  "cos":cos,
  "cosh":cosh,
  "cpp":cpp,
  "crypt":crypt,
  "ctime":ctime,
  "decode_value":decode_value,
  "delay":delay,
  "describe_backtrace":describe_backtrace,
  "describe_error":describe_error,
  "destruct":destruct,
  "destructedp":destructedp,
  "dirname":dirname,
  "encode_value":encode_value,
  "encode_value_canonic":encode_value_canonic,
  "enumerate":enumerate,
  "equal":equal,
  "errno":errno,
  "error":error,
  "exece":exece,
  "exit":exit,
  "exp":exp,
  "explode_path":explode_path,
  "false":false,
  "file_stat":file_stat,
  "file_truncate":file_truncate,
  "filesystem_stat":filesystem_stat,
  "filter":filter,
  "find_call_out":find_call_out,
  "floatp":floatp,
  "floor":floor,
  "fork":fork,
  "function_name":function_name,
  "function_object":function_object,
  "function_program":function_program,
  "functionp":functionp,
  "gc":gc,
  "get_active_compilation_handler":get_active_compilation_handler,
  "get_active_error_handler":get_active_error_handler,
  "get_all_groups":get_all_groups,
  "get_all_users":get_all_users,
  "get_backtrace":get_backtrace,
  "get_dir":get_dir,
  "get_groups_for_user":get_groups_for_user,
  "get_iterator":get_iterator,
  "get_weak_flag":get_weak_flag,
  "getcwd":getcwd,
  "getegid":getegid,
  "getenv":getenv,
  "geteuid":geteuid,
  "getgid":getgid,
  "getgrgid":getgrgid,
  "getgrnam":getgrnam,
  "getgroups":getgroups,
  "gethostbyaddr":gethostbyaddr,
  "gethostbyname":gethostbyname,
  "gethostname":gethostname,
  "gethrtime":gethrtime,
  "gethrvtime":gethrvtime,
  "getpgrp":getpgrp,
  "getpid":getpid,
  "getppid":getppid,
  "getpwnam":getpwnam,
  "getpwuid":getpwuid,
  "getsid":getsid,
  "getuid":getuid,
  "getxattr":getxattr,
  "glob":glob,
  "gmtime":gmtime,
  "hardlink":hardlink,
  "has_index":has_index,
  "has_prefix":has_prefix,
  "has_suffix":has_suffix,
  "has_value":has_value,
  "hash":hash,
  "hash_value":hash_value,
  "indices":indices,
  "initgroups":initgroups,
  "innetgr":innetgr,
  "int2char":int2char,
  "int2hex":int2hex,
  "intp":intp,
  "is_absolute_path":is_absolute_path,
  "kill":kill,
  "limit":limit,
  "listxattr":listxattr,
  "load_module":load_module,
  "localtime":localtime,
  "log":log,
  "lower_case":lower_case,
  "m_delete":m_delete,
  "map":map,
  "mappingp":mappingp,
  "master":master,
  "max":max,
  "min":min,
  "mkdir":mkdir,
  "mkmapping":mkmapping,
  "mkmultiset":mkmultiset,
  "mktime":mktime,
  "multisetp":multisetp,
  "mv":mv,
  "next_object":next_object,
  "normalize_path":normalize_path,
  "object_program":object_program,
  "object_variablep":object_variablep,
  "objectp":objectp,
  "openlog":openlog,
  "pow":pow,
  "programp":programp,
  "putenv":putenv,
  "query_num_arg":query_num_arg,
  "random":random,
  "random_seed":random_seed,
  "random_string":random_string,
  "readlink":readlink,
  "remove_call_out":remove_call_out,
  "remove_include_path":remove_include_path,
  "remove_module_path":remove_module_path,
  "remove_program_path":remove_program_path,
  "removexattr":removexattr,
  "replace":replace,
  "replace_master":replace_master,
  "resolvepath":resolvepath,
  "reverse":reverse,
  "rm":rm,
  "round":round,
  "rows":rows,
  "search":search,
  "set_priority":set_priority,
  "set_weak_flag":set_weak_flag,
  "setegid":setegid,
  "seteuid":seteuid,
  "setgid":setgid,
  "setgroups":setgroups,
  "setpgrp":setpgrp,
  "setresgid":setresgid,
  "setresuid":setresuid,
  "setsid":setsid,
  "setuid":setuid,
  "setxattr":setxattr,
  "sgn":sgn,
  "signal":signal,
  "signame":signame,
  "signum":signum,
  "sin":sin,
  "sinh":sinh,
  "sizeof":sizeof,
  "sleep":sleep,
  "sort":sort,
  "sprintf":sprintf,
  "sprintf_args":sprintf_args,
  "sprintf_format":sprintf_format,
  "sqrt":sqrt,
  "strerror":strerror,
  "strict_sprintf_format":strict_sprintf_format,
  "string_to_unicode":string_to_unicode,
  "string_to_utf8":string_to_utf8,
  "stringp":stringp,
  "strlen":strlen,
  "symlink":symlink,
  "syslog":syslog,
  "tan":tan,
  "tanh":tanh,
  "this_object":this_object,
  "this_thread":this_thread,
  "thread_create":thread_create,
  "thread_local":thread_local,
  "throw":throw,
  "time":time,
  "trace":trace,
  "true":true,
  "ualarm":ualarm,
  "umask":umask,
  "uname":uname,
  "undefinedp":undefinedp,
  "unicode_to_string":unicode_to_string,
  "upper_case":upper_case,
  "utf8_to_string":utf8_to_string,
  "utime":utime,
  "values":values,
  "version":version,
  "werror":werror,
  "write":write,
  "zero_type":zero_type
]);
#endif

int main(int argc, array(string) argv)
{
#if 0
  object m = master ();

  foreach (indices (all_funcs), string fn) {

    if (!functionp (all_funcs[fn])) {
      write ("%s is not a function\n", fn);
      continue;
    }

    object doc;


    if (mixed e = catch (doc = m->show_doc (all_funcs[fn])))
      write ("Error resolving: %s\n", fn);
    else {
      if (doc) {
        write("%s: %O\n", fn, doc);
      }
      else {
        mixed e = catch {
          all_funcs[fn]();
        };

        if (e) {
          write ("Err: %s\n", describe_error (e));
        }
      }
    }
  }

  return 0;
#endif

  array(string) buf = ({});

  mapping all = builtins + macros + userdef + classes;

  foreach (sort(indices(all)), string k) {
    buf += ({ sprintf("    {\"trigger\":\"%s\",\"contents\":\"%s\"}",
                      k, all[k]) });
  }

  string macro = #"{
  \"scope\": \"source.pike - variable.other.pike\",
  \"completions\":
  [
    \"pike\",
%s
  ]
}";

  Stdio.write_file("Pike.sublime-completions", sprintf(macro, buf*",\n"));

  werror("%O\n", builtins);

  return 0;
}
