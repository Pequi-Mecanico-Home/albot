import sys

import geometry_msgs.msg
import rclpy

def main ():

    rclpy.init()

    node = rclpy.create_node('my_teleop')
    pub = node.create_publisher(geometry_msgs.msg.Twist, 'cmd_vel', 10)

    twist = geometry_msgs.msg.Twist()

    twist.linear.x = 10.0
    twist.linear.y = 0.0
    twist.linear.z = 0.0
    twist.angular.x = 0.0
    twist.angular.y = 0.0
    twist.angular.z = 0.0

    pub.publish(twist)
    
    twist.linear.x = 0.0

    pub.publish(twist)



if __name__ == '__main__':
    main()