# pathDatasetEuroc='/home/jason/datasets/MH_01_easy' 
# echo "Launching Machine Hall with Monocular sensor"
# ./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml \
# "$pathDatasetEuroc"/MH01 ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt \
# "$pathDatasetEuroc"/MH02 ./Examples/Monocular/EuRoC_TimeStamps/MH02.txt \
# "$pathDatasetEuroc"/MH03 ./Examples/Monocular/EuRoC_TimeStamps/MH03.txt \
# "$pathDatasetEuroc"/MH04 ./Examples/Monocular/EuRoC_TimeStamps/MH04.txt \
# "$pathDatasetEuroc"/MH05 ./Examples/Monocular/EuRoC_TimeStamps/MH05.txt dataset-MH01_to_MH05_mono
# ./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml "$pathDatasetEuroc"/MH01 ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt "$pathDatasetEuroc"/MH02 ./Examples/Monocular/EuRoC_TimeStamps/MH02.txt dataset-MH01_to_MH02_mono

pathDatasetEuroc='/media/jason/Samsung_T5/slam_data/datasets/visual/MH_01_easy' 
echo "Launching Machine Hall with Monocular sensor"
./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml \
"$pathDatasetEuroc"/MH01 ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt \
"$pathDatasetEuroc"/MH02 ./Examples/Monocular/EuRoC_TimeStamps/MH02.txt dataset-MH01_to_MH02_mono


# echo "Launching Machine Hall with Monocular-Inertial sensor"
# ./Examples/Monocular-Inertial/mono_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial/EuRoC.yaml \
# /media/jason/Samsung_T5/slam_data/datasets/visual/MH_01_easy/MH01 ./Examples/Monocular-Inertial/EuRoC_TimeStamps/MH01.txt \
# /media/jason/Samsung_T5/slam_data/datasets/visual/MH_01_easy/MH02 ./Examples/Monocular-Inertial/EuRoC_TimeStamps/MH02.txt dataset-MH01_to_MH02_monoi
