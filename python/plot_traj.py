import matplotlib.pyplot as plt

def read_trajectory(file_path):
    trajectory = []
    with open(file_path, 'r') as file:
        for line in file:
            if line.strip():  
                data = line.split(',')

                try:
                    x = float(data[1])
                    y = float(data[2])
                    z = float(data[3])
                    trajectory.append((x, y, z))
                except ValueError:
                    print(f"Skipping line: {line.strip()} (not numeric)")
    return trajectory

def plot_trajectories(trajectory1, trajectory2, trajectory3, trajectory4, trajectory5):
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')

    x1, y1, z1 = zip(*trajectory1)
    x2, y2, z2 = zip(*trajectory2)
    x3, y3, z3 = zip(*trajectory3)
    x4, y4, z4 = zip(*trajectory4)
    x5, y5, z5 = zip(*trajectory5)

    # ax.plot(x1, y1, z1, label='Trajectory 1', marker='o')
    # ax.plot(x2, y2, z2, label='Trajectory 2', marker='^')
    ax.plot(x1, y1, z1, label='Trajectory 1')
    ax.plot(x2, y2, z2, label='Trajectory 2')
    ax.plot(x3, y3, z3, label='Trajectory 3')
    ax.plot(x4, y4, z4, label='Trajectory 4')
    ax.plot(x5, y5, z5, label='Trajectory 5')

    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.set_title('Camera Trajectories Visualization')
    ax.legend()

    plt.show()

if __name__ == "__main__":
    file_path1 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/evaluation/Ground_truth/EuRoC_left_cam/MH01_GT.txt"
    file_path2 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/evaluation/Ground_truth/EuRoC_left_cam/MH02_GT.txt"
    file_path3 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/evaluation/Ground_truth/EuRoC_left_cam/MH03_GT.txt"
    file_path4 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/evaluation/Ground_truth/EuRoC_left_cam/MH04_GT.txt"
    file_path5 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/evaluation/Ground_truth/EuRoC_left_cam/MH05_GT.txt"

    trajectory1 = read_trajectory(file_path1)
    trajectory2 = read_trajectory(file_path2)
    trajectory3 = read_trajectory(file_path3)
    trajectory4 = read_trajectory(file_path4)
    trajectory5 = read_trajectory(file_path5)

    
    plot_trajectories(trajectory1, trajectory2, trajectory3, trajectory4, trajectory5)
