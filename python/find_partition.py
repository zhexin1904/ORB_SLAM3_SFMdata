import os
import pandas as pd

def process_camera_partitions(max_id, input_folder, output_folder):
    """
    Process camera partition files and save the final results with updated partition IDs.

    Parameters:
        max_id (int): Maximum ID for camera partition files.
        input_folder (str): Folder containing input `camera_partitions_id.txt` files.
        output_folder (str): Folder to save the processed output files.
    """
    # Ensure output folder exists
    os.makedirs(output_folder, exist_ok=True)
    
    # Initialize the result DataFrame
    final_result = pd.DataFrame()
    
    for i in range(1, max_id):
        # Read the current file and the next file
        file_i = os.path.join(input_folder, f"camera_partitions_{i - 1}.txt")
        file_i_plus_1 = os.path.join(input_folder, f"camera_partitions_{i}.txt")
        
        if not os.path.exists(file_i) or not os.path.exists(file_i_plus_1):
            print(f"File {file_i} or {file_i_plus_1} not found, skipping...")
            continue
        
        df_i = pd.read_csv(file_i, delim_whitespace=True, skiprows=1, header=None, names=["camera_id", "partition_id"])
        df_i_plus_1 = pd.read_csv(file_i_plus_1, delim_whitespace=True, skiprows=1, header=None, names=["camera_id", "partition_id"])
        
        # Copy data from the first file if processing for the first time
        if i == 1:
            df_i["partition_id"] = 1  # Reset partition_id to 1
            final_result = pd.concat([final_result, df_i], ignore_index=True)
        
        # Find the intersection of camera IDs between current and next file
        intersection = pd.merge(df_i, df_i_plus_1, on="camera_id")["camera_id"]
        
        # Exclude intersection from df_i_plus_1
        remaining_df = df_i_plus_1[~df_i_plus_1["camera_id"].isin(intersection)]
        
        # Assign partition_id = i + 1 to the intersection
        new_partition_df = pd.DataFrame({
            "camera_id": intersection,
            "partition_id": [i + 1] * len(intersection)
        })
        
        # Save the remaining data (excluding the intersection) to a similar file format in the output folder
        output_file = os.path.join(output_folder, f"camera_partitions_{i + 1}.txt")
        remaining_df.to_csv(output_file, sep=' ', index=False, header=False)
        
        # Append the new data to the final result
        final_result = pd.concat([final_result, new_partition_df], ignore_index=True)
    
    # Save the final result
    final_output_file = os.path.join(output_folder, "final_camera_partitions.txt")
    final_result.to_csv(final_output_file, sep=' ', index=False, header=False)
    print(f"Final merged file saved to {final_output_file}")

# Example usage
process_camera_partitions(
    max_id=5,  # Replace with your maximum ID + 1
    input_folder="/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/MH12345_test/",  # Replace with your input folder path
    output_folder="/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/MH12345_test/"  # Replace with your output folder path
)
