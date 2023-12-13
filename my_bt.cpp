#include <iostream>
#include <chrono>
#include "behaviortree_cpp/action_node.h"
#include "behaviortree_cpp/bt_factory.h"

using namespace std::chrono_literals;

/*

1. Each leaf node is actually a functionality.
2. Flow of control is managed by non-leaf nodes
3. Treat each leaf node as a fuction.

*/

// Node Class - Make a class which is actually type of the Node which has a method to implement functionality
class ApproachObject : public BT::SyncActionNode
{
    public:
    // Constructor
    explicit ApproachObject(const std::string &name) : BT::SyncActionNode(name, {})
    {

    }
    BT::NodeStatus tick() override
    {
        std::cout << "Approach Object: " << this->name() << std::endl;
        std::this_thread::sleep_for(5s);
        return BT::NodeStatus::SUCCESS;
        
    }
};

// Function - 2nd way of making a leaf node by USING JUST A FUNCTION AND NO METHODS OR NODE CLASSES
// this is not an action node, this is condition node, so no delay

BT::NodeStatus CheckBattery()
{
    std::cout << "Battery OK" << std::endl;
    return BT::NodeStatus::SUCCESS;
}

// Custom class method

class GripperInterface
{
    public:
    GripperInterface() : _open(true)
    {
        
    }

    BT::NodeStatus open()
    {
        _open = true;
        std::cout << "Gripper Open" << std::endl;
        return BT::NodeStatus::SUCCESS;
    }

    BT::NodeStatus close()
    {
        _open = false;
        std::cout << "Gripper Close" << std::endl;
        return BT::NodeStatus::SUCCESS;
    }
    private:
    bool _open; // private variable to store the gripper status
};

int main()
{

    // in main fuction we will register all the nodes that we have created

    BT::BehaviorTreeFactory factory; // behavior tree factory object to register different nodes
    factory.registerNodeType<ApproachObject>("ApproachObject"); // action node

    factory.registerSimpleCondition("CheckBattery", std::bind(CheckBattery)); // condition node

    // to register nodes that belong to custom class we have to create an objet of class GripperInterface

    GripperInterface gripper; // object of class GripperInterface
    
    factory.registerSimpleAction(
        "OpenGripper",
        std::bind(&GripperInterface::open, &gripper));
    factory.registerSimpleAction(
        "CloseGripper",
        std::bind(&GripperInterface::close, &gripper));
    
    // Create tree
    auto tree = factory.createTreeFromFile("./../tree.xml");

    // Execute the tree
    tree.tickOnce();

    return 0;
}