# Dot Notation Struct Performance Comparison

## Results

### System Details

Macbook Pro 2024 - M4 Pro (Ruby 4.0)

### Init

```
                                     user     system      total        real
json parse                       0.010571   0.000244   0.010815 (  0.010812)
ostruct create                   0.269863   0.001837   0.271700 (  0.271712)
mash create                      0.120493   0.000259   0.120752 (  0.120757)
open_cascade create              0.000418   0.000006   0.000424 (  0.000424)
recursive_open_struct create     0.057490   0.000278   0.057768 (  0.057765)
strict_struct create             0.037860   0.000123   0.037983 (  0.037991)
flex_struct create               0.038249   0.000088   0.038337 (  0.038338)
flex_struct create - json parse  0.068375   0.000148   0.068523 (  0.068522)

Calculating -------------------------------------
          json parse    21.912M memsize (     0.000  retained)
                       200.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
      ostruct create   153.488M memsize (     0.000  retained)
                         1.871M objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
         mash create    36.440M memsize (     0.000  retained)
                       631.000k objects (     0.000  retained)
                        25.000  strings (     0.000  retained)
 open_cascade create   560.000k memsize (     0.000  retained)
                         7.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct create
                        25.632M memsize (     0.000  retained)
                       232.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
strict_struct create    18.912M memsize (     0.000  retained)
                       227.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
  flex_struct create    18.912M memsize (     0.000  retained)
                       227.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
flex_struct create - json parse
                        45.184M memsize (     0.000  retained)
                       346.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
```

### lookups

```
                                  user     system      total        real
ostruct lookup                0.000556   0.000003   0.000559 (  0.000557)
mash lookup                   0.007064   0.000006   0.007070 (  0.007074)
open_cascade lookup           0.014148   0.000051   0.014199 (  0.014212)
recursive_open_struct lookup  0.010543   0.000041   0.010584 (  0.010584)
strict_struct lookup          0.007146   0.000019   0.007165 (  0.007167)
flex_struct lookup            0.007170   0.000005   0.007175 (  0.007178)

Calculating -------------------------------------
      ostruct lookup     0.000  memsize (     0.000  retained)
                         0.000  objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
         mash lookup     3.600M memsize (     0.000  retained)
                        90.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
 open_cascade lookup     9.000M memsize (     0.000  retained)
                       225.000k objects (     0.000  retained)
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
ostruct to_hash                0.000132   0.000001   0.000133 (  0.000131)
mash to_hash                   0.062116   0.000237   0.062353 (  0.062370)
open_cascade to_hash           0.000488   0.000000   0.000488 (  0.000491)
recursive_open_struct to_hash  0.113784   0.000749   0.114533 (  0.114542)
strict_struct to hash          0.000076   0.000000   0.000076 (  0.000076)
flex_struct to hash            0.000071   0.000000   0.000071 (  0.000072)
Calculating -------------------------------------
     ostruct to_hash    40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
        mash to_hash    15.352M memsize (     0.000  retained)
                        81.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
open_cascade to_hash   280.000k memsize (     0.000  retained)
                         4.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct to_hash
                        52.928M memsize (     0.000  retained)
                       466.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
strict_struct to hash
                       160.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
 flex_struct to hash   160.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```


## Results

### System Details

Macbook Pro 2018 (Ruby 2.2)

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
