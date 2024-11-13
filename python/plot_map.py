import matplotlib.pyplot as plt

def read_map_points(file_path):
    points = []
    with open(file_path, 'r') as file:
        for line in file:
            if line.strip():  
                data = line.split()
                try:
                    x = float(data[1])
                    y = float(data[2])
                    z = float(data[3])
                    points.append((x, y, z))
                except ValueError:
                    print(f"Skipping line: {line.strip()} (not numeric)")
    return points

def scale_points(points, scale):
    scaled_points = [(x * scale, y * scale, z * scale) for x, y, z in points]
    return scaled_points

def plot_map_points(points1, points2):
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')

    x1, y1, z1 = zip(*points1)
    x2, y2, z2 = zip(*points2)

    ax.scatter(x1, y1, z1, label='Map Points 1', marker='o', s=10)
    ax.scatter(x2, y2, z2, label='Map Points 2', marker='^', s=10)

    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.set_title('3D Map Points Visualization')
    ax.legend()

    ax.set_box_aspect([1, 1, 1])  
    plt.show()

if __name__ == "__main__":
    file_path1 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/tracks_1.txt"
    file_path2 = "/home/jason/VSLAM/orbslam3/src/ORB_SLAM3/data/tracks_2.txt"

    scale = 10  

    points1 = scale_points(read_map_points(file_path1), scale)
    points2 = scale_points(read_map_points(file_path2), scale)

    plot_map_points(points1, points2)
