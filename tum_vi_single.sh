# pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/NCLT_visual/' 
# echo "Launching slides2 in the same session with Mono-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-slides2_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-slides2_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-slides2_512.txt \
# dataset-slides2_monoi


pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/visual' 
echo "Launching all Rooms (1-6) in the same session with Stereo-Inertial sensor"
./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml "$pathDatasetTUM_VI"/dataset-room1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room1_512.txt "$pathDatasetTUM_VI"/dataset-room2_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room2_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room2_512.txt "$pathDatasetTUM_VI"/dataset-room3_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room3_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room3_512.txt "$pathDatasetTUM_VI"/dataset-room4_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room4_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room4_512.txt "$pathDatasetTUM_VI"/dataset-room5_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room5_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room5_512.txt "$pathDatasetTUM_VI"/dataset-room6_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room6_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room6_512.txt dataset-rooms123456_monoi
