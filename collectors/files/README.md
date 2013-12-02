# Description

Find and report on files matching various conditions.  With the
`no_list` option, only report the number of files found.  Otherwise
report all of the `stat` data for each file matched.

# Configuration

```json

{
  "relativized_mtime" : true,   // report epoch - mtime (deprecated feature)
  "paths" : {
    "/tmp" : {},                // implicit name+path, just count everything + report
    "/tmp swapfiles" : {        // names must be unique
      "path" : "/tmp",          // explicit path
      "match" : "^\\..*\.swp$", // regular expression match
      "atime" : {"min": 1354051358}, // in absolute epoch seconds
      // also max, (and relative time using -min/-max)
      // also for: mtime, ctime, size (only absolute min/max)
      //
      // uid/gid : [35, 47], or by excluding: ["not", 0, 42]
      //
      // mode: "0[67][45]0" // a right-anchored regexp
      // mode: "& 0111"     // octal bitmask
    },
    "/opt" : {"no_list" : true},    // will skip stat() on contents
    "/bin" : {"no_list" : true,     // will only return the count,
      "mtime" : {"-min" : 600}},    // but stat is needed for the check
    "/vmlinuz" : {
      "path"   : "/",
      "only"   : ["vmlinuz"],       // explicit list / skip readdir()
      "filter" : ["symlink"],       // must be a symlink
      "mtime"  : {"-min" : 3600},   // relative to Time.now
    },
    "/bin symlinks" : {"path" : "/bin/", "filter" : ["symlink"]},
    "/usr/bin swapfiles" : {"path" : "/usr/bin/", "glob" : ".*.swp"}
  }
}

```
