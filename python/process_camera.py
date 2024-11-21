def process_txt(input_path, output_path):
    # 打开输入文件，读取数据
    with open(input_path, 'r') as infile:
        lines = infile.readlines()
    
    # 跳过第一行并处理剩余行
    header = lines[0]  # 保留第一行（如果需要写到输出文件中，可以保留）
    data_lines = lines[1:]  # 跳过第一行
    
    processed_lines = []
    for line in data_lines:
        # 分割数据并去掉第一个元素
        split_line = line.split()
        processed_line = ' '.join(split_line[1:])  # 从第一个元素之后重新拼接
        processed_lines.append(processed_line)
    
    # 写入输出文件
    with open(output_path, 'w') as outfile:
        # 如果需要保留 header，可以写入：outfile.write(header)
        outfile.writelines(line + '\n' for line in processed_lines)
    
    print(f"处理完成，数据已保存到 {output_path}")

# 设置文件路径
input_path = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/euroc/MH12345_vi/cameras_5.txt"
output_path = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/euroc/MH12345_vi/cameras.txt"

# 运行函数
process_txt(input_path, output_path)
