# Behavior Tree Implemenation
- The Project discusses the implementation of basic behavior tree for the a gripper manipulator.

## Diagram

![bt1](https://github.com/a-hamzah/footbot_dev/assets/25130682/b3a7ad70-6ce8-495a-9a4b-fc0a2d2a6f65)

## Explanation
1. Root node is actually a sequence with four children.
   - Check Battery is a condition node
   - OpenGripper, ApproachObject, CloseGripper are action nodes.
2. 