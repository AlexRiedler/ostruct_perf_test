# Dot Notation Struct Performance Comparison


## Results on 2018 MBP


### Init

```
                                    user     system      total        real
json parse                      0.168449   0.000657   0.169106 (  0.169638)
ostruct create                  1.045135   0.005116   1.050251 (  1.056122)
mash create                     0.508490   0.000813   0.509303 (  0.510264)
open_cascade create             0.002482   0.000024   0.002506 (  0.002507)
recursive_open_struct create    0.214456   0.001219   0.215675 (  0.216422)
firm_struct create              0.000374   0.000000   0.000374 (  0.000374)
firm_struct create - json parse 0.272613   0.000398   0.273011 (  0.273438)

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
  firm_struct create    80.000k memsize (     0.000  retained)
                         2.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
firm_struct create - json parse
                        34.772M memsize (     0.000  retained)
                       441.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
```

### lookups

```
                                  user     system      total        real
ostruct lookup                0.003785   0.000002   0.003787 (  0.003782)
mash lookup                   0.025079   0.000014   0.025093 (  0.025106)
open_cascade lookup           0.054963   0.000060   0.055023 (  0.055049)
recursive_open_struct lookup  0.039285   0.000097   0.039382 (  0.039417)
firm_struct lookup            0.025426   0.000051   0.025477 (  0.025515)

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
  firm_struct lookup     4.800M memsize (     0.000  retained)
                       120.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
```

### `to_hash`

```
                                    user     system      total        real
ostruct to_hash                 0.000710   0.000002   0.000712 (  0.000708)
mash to_hash                    0.226634   0.000836   0.227470 (  0.227861)
open_cascade to_hash            0.001825   0.000001   0.001826 (  0.001826)
recursive_open_struct to_hash   0.451528   0.001819   0.453347 (  0.455457)
firm_struct to hash             0.000256   0.000001   0.000257 (  0.000256)
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
 firm_struct to hash    40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```
