# pathDatasetTUM_VI='/home/jason/datasets/' 
# echo "Launching Room 1, Magistrale 5, and Slides 1 in the same session with Mono-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-room1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room1_512.txt \
# "$pathDatasetTUM_VI"/dataset-magistrale5_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-magistrale5_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-magistrale5_512.txt \
# "$pathDatasetTUM_VI"/dataset-slides1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-slides1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-slides1_512.txt \
# dataset-room1_mag5_slides1_monoi


# pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/NCLT_visual/' 
# echo "Launching outdoors5 and outdoors8 in the same session with Mono-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-outdoors5_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-outdoors5_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-outdoors5_512.txt \
# "$pathDatasetTUM_VI"/dataset-outdoors8_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-outdoors8_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-outdoors8_512.txt \
# dataset-outdoors5_outdoors8_monoi

# pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/NCLT_visual/' 
# echo "Launching outdoors5 in the same session with Mono-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-outdoors5_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-outdoors5_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-outdoors5_512.txt \
# dataset-outdoors5_monoi

# pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/visual' 
# echo "Launching all Rooms (1-6) in the same session with Stereo-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-room1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room1_512.txt \
# "$pathDatasetTUM_VI"/dataset-room2_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room2_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room2_512.txt \
# "$pathDatasetTUM_VI"/dataset-room3_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room3_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room3_512.txt \
# "$pathDatasetTUM_VI"/dataset-room4_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room4_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room4_512.txt \
# "$pathDatasetTUM_VI"/dataset-room5_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room5_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room5_512.txt \
# "$pathDatasetTUM_VI"/dataset-room6_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room6_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room6_512.txt dataset-rooms123456_monoi

# pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/visual' 
# echo "Launching all Rooms (1-6) in the same session with Stereo-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
# "$pathDatasetTUM_VI"/dataset-room1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room1_512.txt \
# "$pathDatasetTUM_VI"/dataset-room2_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room2_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room2_512.txt \
# "$pathDatasetTUM_VI"/dataset-room3_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room3_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room3_512.txt \
# "$pathDatasetTUM_VI"/dataset-corridor1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-corridor1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-corridor1_512.txt dataset-rooms123-corridor1_monoi

pathDatasetTUM_VI='/media/jason/Samsung_T5/slam_data/datasets/visual' 
echo "Launching all Room1 and corridor1 in the same session with Stereo-Inertial sensor"
./Examples/Monocular-Inertial/mono_inertial_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular-Inertial/TUM_512.yaml \
"$pathDatasetTUM_VI"/dataset-room1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-room1_512.txt \
"$pathDatasetTUM_VI"/dataset-corridor1_512_16/mav0/cam0/data Examples/Stereo-Inertial/TUM_TimeStamps/dataset-corridor1_512.txt Examples/Stereo-Inertial/TUM_IMU/dataset-corridor1_512.txt dataset-room1-corridor1_monoi
