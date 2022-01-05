# Dot Notation Struct Performance Comparison


## Results on 2018 MBP


### Init

```
                                      user     system      total        real
json parse                        0.186764   0.001789   0.188553 (  0.194016)
ostruct create                    1.023861   0.010038   1.033899 (  1.052055)
mash create                       0.512459   0.001262   0.513721 (  0.515507)
open_cascade create               0.002492   0.000037   0.002529 (  0.002551)
recursive_open_struct create      0.196984   0.000862   0.197846 (  0.198727)
strict_struct create              0.000386   0.000003   0.000389 (  0.000389)
flex_struct create                0.000394   0.000001   0.000395 (  0.000394)
flex_struct create - json parse   0.256142   0.000546   0.256688 (  0.257536)

Calculating -------------------------------------
          json parse    31.908M memsize (     0.000  retained)
                       379.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
      ostruct create   127.196M memsize (     0.000  retained)
                         1.491M objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
         mash create    34.536M memsize (     0.000  retained)
                       631.000k objects (     0.000  retained)
                        25.000  strings (     0.000  retained)
 open_cascade create   472.000k memsize (     0.000  retained)
                         7.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct create
                        27.400M memsize (     0.000  retained)
                       232.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
strict_struct create    80.000k memsize (     0.000  retained)
                         2.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
  flex_struct create    80.000k memsize (     0.000  retained)
                         2.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
flex_struct create - json parse
                        34.772M memsize (     0.000  retained)
                       441.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
```

### lookups

```
                                  user     system      total        real
ostruct lookup                0.003774   0.000006   0.003780 (  0.003776)
mash lookup                   0.027688   0.000018   0.027706 (  0.027713)
open_cascade lookup           0.055979   0.000060   0.056039 (  0.056077)
recursive_open_struct lookup  0.039870   0.000058   0.039928 (  0.040051)
strict_struct lookup          0.025927   0.000103   0.026030 (  0.026116)
flex_struct lookup            0.025363   0.000045   0.025408 (  0.025413)

Calculating -------------------------------------
      ostruct lookup     0.000  memsize (     0.000  retained)
                         0.000  objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
         mash lookup     3.600M memsize (     0.000  retained)
                        90.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
 open_cascade lookup    10.800M memsize (     0.000  retained)
                       270.000k objects (     0.000  retained)
                         8.000  strings (     0.000  retained)
recursive_open_struct lookup
                         1.200M memsize (     0.000  retained)
                        30.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
strict_struct lookup     4.800M memsize (     0.000  retained)
                       120.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
  flex_struct lookup     4.800M memsize (     0.000  retained)
                       120.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
```

### `to_hash`

```
                                    user     system      total        real
ostruct to_hash                 0.000704   0.000002   0.000706 (  0.000703)
mash to_hash                    0.217878   0.000494   0.218372 (  0.218944)
open_cascade to_hash            0.001808   0.000000   0.001808 (  0.001809)
recursive_open_struct to_hash   0.429198   0.001322   0.430520 (  0.431438)
strict_struct to hash           0.000252   0.000001   0.000253 (  0.000251)
flex_struct to hash             0.000236   0.000005   0.000241 (  0.000246)
Calculating -------------------------------------
     ostruct to_hash    40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
        mash to_hash    14.808M memsize (     0.000  retained)
                        81.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
open_cascade to_hash   368.000k memsize (     0.000  retained)
                         6.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct to_hash
                        58.280M memsize (     0.000  retained)
                       476.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
strict_struct to hash
                        40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
 flex_struct to hash    40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```
