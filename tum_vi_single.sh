# pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/NCLT_visual/' 
# echo "Launching slides2 in the same session with Mono-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-slides2_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-slides2_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-slides2_512.txt \
# dataset-slides2_monoi


pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/NCLT_visual/' 
echo "Launching outdoors5 in the same session with Mono-Inertial sensor"
./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
"$pathDatasetTUM_VI"/dataset-outdoors5_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-outdoors5_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-outdoors5_512.txt \
dataset-outdoors5_monoi