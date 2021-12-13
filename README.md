# Dot Notation Struct Performance Comparison


## Results on 2018 MBP


### Init

```
                                  user     system      total        real
json parse                    0.096883   0.000633   0.097516 (  0.097951)
ostruct create                0.693607   0.007000   0.700607 (  0.703735)
mash create                   0.369951   0.001781   0.371732 (  0.373346)
open_cascade create           0.001621   0.000002   0.001623 (  0.001625)
recursive_open_struct create  0.139650   0.001438   0.141088 (  0.141267)
fast_struct_read_only create  0.372446   0.002460   0.374906 (  0.377138)
firm_struct create            0.000371   0.000003   0.000374 (  0.000372)

Calculating -------------------------------------
          json parse    30.393M memsize (     0.000  retained)
                       379.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
      ostruct create   125.681M memsize (     0.000  retained)
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
fast_struct_read_only create
                        34.536M memsize (     0.000  retained)
                       631.000k objects (     0.000  retained)
                        25.000  strings (     0.000  retained)
  firm_struct create    80.000k memsize (     0.000  retained)
                         2.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```

### lookups

```
                                  user     system      total        real
ostruct lookup                0.003098   0.000014   0.003112 (  0.003143)
mash lookup                   0.023647   0.000191   0.023838 (  0.023991)
open_cascade lookup           0.058355   0.001642   0.059997 (  0.060171)
recursive_open_struct lookup  0.027133   0.000245   0.027378 (  0.027475)
fast_struct_read_only lookup  0.023884   0.000751   0.024635 (  0.024772)
firm_struct lookup            0.015122   0.000162   0.015284 (  0.015304)

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
fast_struct_read_only lookup
                         3.600M memsize (     0.000  retained)
                        90.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
  firm_struct lookup     3.600M memsize (     0.000  retained)
                        90.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
```

### `to_hash`

```
                                    user     system      total        real
ostruct to_hash                 0.000524   0.000017   0.000541 (  0.000539)
mash to_hash                    0.165860   0.001413   0.167273 (  0.168267)
open_cascade to_hash            0.001404   0.000004   0.001408 (  0.001442)
recursive_open_struct to_hash   0.316471   0.014761   0.331232 (  0.333293)
fast_struct_read_only to hash   0.167707   0.001332   0.169039 (  0.169982)
firm_struct to hash             0.000070   0.000000   0.000070 (  0.000070)
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
fast_struct_read_only to hash
                        14.808M memsize (     0.000  retained)
                        81.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
 firm_struct to hash     0.000  memsize (     0.000  retained)
                         0.000  objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```
