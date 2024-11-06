~~1, create copy of non-active map before merging, if tracking of each sequence is good, each non-active map is just the single session~~

Done, got all the map

but just the first step:

after inter-map loop closure happens, merging the map point, keep in one map(current one ?), delete in last map, or replicate those map point, but give some some label to identify ?

2, save each non-active session, or give color to it

3, can we add the loop closure, but also reserve the origin session structure, so we have cross edge between each partitions, we can do DSO2, and we also keep the partitions(not one active map)

NO, replicate measurement and poses is not allowed ? or it is allowed ?

OK, we can replicate, but we need to set interior, boundary and neighbor manually 

NO, just given the partition label, we can process it 

3, running on some outdoor data maybe better...

4, look at the result for now, directly running on NCLT should works

what I did for now is not a good way



what I am doing is more like loop closure in mc-slam, loop closure in my work is not in pgo level, is adding new measurement of "old" map point to my current key frame. So need to modify deeper in ORB3, when loop closure happens, adding measurement ?

like dslam_open of UZH, you can even directly use ORB slam as a library if needed 



Atlas:

1, share the same database, key frames keep unique ID

so can generate intra and inter loop closure

that's all , idea is really simple