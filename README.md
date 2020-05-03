# Dot Notation Struct Performance Comparison


## Results on 2018 MBP



### Init

```
       user     system      total        real
json parse  0.121069   0.000293   0.121362 (  0.121500)
ostruct create  0.660594   0.003493   0.664087 (  0.664661)
open_cascade create  0.002455   0.000014   0.002469 (  0.002475)
recursive_open_struct create  0.129126   0.000732   0.129858 (  0.130203)

Calculating -------------------------------------
          json parse    33.572M memsize (     0.000  retained)
                       384.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
      ostruct create   137.004M memsize (     0.000  retained)
                         1.533M objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
 open_cascade create   728.000k memsize (     0.000  retained)
                         7.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct create
                        29.568M memsize (     0.000  retained)
                       238.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```

### lookups

```
       user     system      total        real
ostruct lookup  0.003085   0.000085   0.003170 (  0.003242)
open_cascade lookup  0.041773   0.000054   0.041827 (  0.041893)
recursive_open_struct lookup  0.025088   0.000123   0.025211 (  0.025276)

Calculating -------------------------------------
      ostruct lookup     0.000  memsize (     0.000  retained)
                         0.000  objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
 open_cascade lookup     7.800M memsize (     0.000  retained)
                       195.000k objects (     0.000  retained)
                         7.000  strings (     0.000  retained)
recursive_open_struct lookup
                         1.200M memsize (     0.000  retained)
                        30.000k objects (     0.000  retained)
                         4.000  strings (     0.000  retained)
```


### `to_hash`

```
       user     system      total        real
ostruct to_hash  0.000422   0.000001   0.000423 (  0.000421)
open_cascade to_hash  0.001253   0.000044   0.001297 (  0.001298)
recursive_open_struct to_hash  0.244257   0.002164   0.246421 (  0.246616)

Calculating -------------------------------------
     ostruct to_hash    40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
open_cascade to_hash   352.000k memsize (     0.000  retained)
                         4.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct to_hash
                        62.280M memsize (     0.000  retained)
                       488.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```
