# Dot Notation Struct Performance Comparison


## Results on 2018 MBP



### Init

```
       user     system      total        real
json parse  0.120170   0.000486   0.120656 (  0.120839)
ostruct create  0.641089   0.002308   0.643397 (  0.643763)
mash create  0.294181   0.000121   0.294302 (  0.294347)
open_cascade create  0.001745   0.000000   0.001745 (  0.001745)
recursive_open_struct create  0.137051   0.000228   0.137279 (  0.137310)

Calculating -------------------------------------
          json parse    33.332M memsize (     0.000  retained)
                       378.000k objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
      ostruct create   128.220M memsize (     0.000  retained)
                         1.491M objects (     0.000  retained)
                        50.000  strings (     0.000  retained)
         mash create    36.520M memsize (     0.000  retained)
                       631.000k objects (     0.000  retained)
                        25.000  strings (     0.000  retained)
 open_cascade create   728.000k memsize (     0.000  retained)
                         7.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct create
                        29.328M memsize (     0.000  retained)
                       232.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
```

### lookups

```
       user     system      total        real
ostruct lookup  0.002872   0.000039   0.002911 (  0.002931)
mash lookup  0.017163   0.000010   0.017173 (  0.017196)
open_cascade lookup  0.043965   0.000032   0.043997 (  0.044040)
recursive_open_struct lookup  0.024984   0.000009   0.024993 (  0.025002)

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
```

### `to_hash`

```
       user     system      total        real
ostruct to_hash  0.000437   0.000001   0.000438 (  0.000436)
mash to_hash  0.147684   0.000116   0.147800 (  0.147827)
open_cascade to_hash  0.001529   0.000001   0.001530 (  0.001530)
recursive_open_struct to_hash  0.269635   0.003865   0.273500 (  0.273546)
Calculating -------------------------------------
     ostruct to_hash    40.000k memsize (     0.000  retained)
                         1.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
        mash to_hash    16.600M memsize (     0.000  retained)
                        81.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
open_cascade to_hash   352.000k memsize (     0.000  retained)
                         4.000k objects (     0.000  retained)
                         0.000  strings (     0.000  retained)
recursive_open_struct to_hash
                        61.800M memsize (     0.000  retained)
                       476.000k objects (     0.000  retained)
``` 
