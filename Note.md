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

keep all data before merge ?



what I am doing is more like loop closure in mc-slam, loop closure in my work is not in pgo level, is adding new measurement of "old" map point to my current key frame. So need to modify deeper in ORB3, when loop closure happens, adding measurement ?

like dslam_open of UZH, you can even directly use ORB slam as a library if needed 



Atlas:

1, share the same database, key frames keep unique ID

so can generate intra and inter loop closure

that's all , idea is really simple



save all the map, is it possible ? keep, but do not merge

Track, ChangeDataset

CreateMapInAtlas -> CreateNewMap

LoopClosing::MergeLocal2()

merge is based on finding the loop closure

two flags : mbMergeDetected, mbLoopDetected

mpMergeMatchedKF

spLocalWindowKFs

vpLoopCand, vpMergeCand

```c++
    Map* pMergeMap = mpMergeMatchedKF->GetMap();

// this map is actually the matched non-active map

// but where we merge thye map point ? where we porcess the repeating map point ? ->
std::set does not allow duplicate values, so we use it to reject the same map point
1, adding the overlapping region firstly
2, adding the non-overlappin region
3, map merging is based on non-active map(history map), move the mapPoint and keyFrame on current map to the history map
    
but how can we know that the mapPoint in current map, is the one in histiry map, index can not solve this ? LV should use in  here ?
```

where we delete the non-active map, after merging ? delete the whole map, or just keyFrame

what I am doing from high-level, 

will ChangeMap helps a lot ? the problem is that the saved map will always be the merged map after the first merging

check

1, in loop closure, judge LC happens inter or intra

2, once inter-LC is found, get the overlapping keyFrames or the whole non-active map

3, the key idea of merge, is only substituting the "overlapping" map point, for the map point not in the common region, just add them directly...

same idea, for me, add measurement is also only for the common region



can I do:

when inter-map LC happens, record the LC()

 how to find the points correspondence  ? ->

SearchAndFuse(vCorrectedSim3, vpCheckFuseMapPoint);



```
1, merge for the local window
spLocalWindowKFs, spLocalWindowMPs
spMergeConnectedKFs, spMapPointMerge
spMapPointMerge ->(copy) vpCheckFuseMapPoint
mTcwMerge, merge means convert to the world frame of the merged map(non-active map) (if mergeing happens, all the kf is in the frame of first keyFrame of the first map)
mPosMerge (also convert all the map point)
SearchAndFuse (if the same map point, using the id in old map, in the current map)
2, merge for the rest in the map
```

