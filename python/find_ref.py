import pandas as pd
import numpy as np

def process_txt_files(txt1_path, txt2_path, output_path):
    # 读取文件
    txt1 = pd.read_csv(txt1_path, delim_whitespace=True, skiprows=1,
                       names=['timestamp', 'camera_id', 'f', 'a', 'px', 'py', 'qx', 'qy', 'qz', 'qw', 'x', 'y', 'z'])
    
    txt2 = pd.read_csv(txt2_path, delimiter=',', skiprows=1,
                       names=['timestamp', 'x', 'y', 'z', 'qw', 'qx', 'qy', 'qz'])
    
    # 为 txt1 的 timestamp 补充 9 个 0
    txt1['timestamp'] = txt1['timestamp'].apply(lambda x: x * 10**9)
    
    # 为 txt2 的 timestamp 同样补充 9 个 0
    # txt2['timestamp'] = txt2['timestamp'].apply(lambda x: x * 10**9)
    
    txt3 = txt1.copy()
    
    # 遍历 txt1 的每一行
    for i, row in txt1.iterrows():
        timestamp1 = row['timestamp']
        # 找到 txt2 中最接近的时间戳
        closest_idx = (txt2['timestamp'] - timestamp1).abs().idxmin()
        closest_row = txt2.loc[closest_idx]
        
        # 更新对应的 x, y, z, qw, qx, qy, qz 数据
        txt3.at[i, 'x'] = closest_row['x']
        txt3.at[i, 'y'] = closest_row['y']
        txt3.at[i, 'z'] = closest_row['z']
        txt3.at[i, 'qw'] = closest_row['qw']
        txt3.at[i, 'qx'] = closest_row['qx']
        txt3.at[i, 'qy'] = closest_row['qy']
        txt3.at[i, 'qz'] = closest_row['qz']
    
    # 去除每行开头的第一个数据（timestamp）
    txt3 = txt3.drop(columns=['timestamp'])
    
    # 数据说明
    header = "camera_id f a px py qx qy qz qw x y z"
    
    # 导出 txt3 到指定路径
    with open(output_path, 'w') as f:
        # 写入数据说明
        f.write(header + '\n')
        # 写入数据
        txt3.to_csv(f, sep=' ', index=False, header=False)
    
    print(f"数据已成功导出到 {output_path}")

# 示例路径
txt1_path = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/MH12345_new/cameras_5.txt"
txt2_path = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/evaluation/Ground_truth/EuRoC_left_cam/MH_GT.txt"
output_path = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/MH12345_new/cameras_ref.txt"

# 运行函数
process_txt_files(txt1_path, txt2_path, output_path)
