#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;

class Controller : public cSimpleModule
{
  protected:

    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
};
Define_Module(Controller);


void Controller::initialize()
{
    cMessage *msg = new cMessage("Hello Lamp");
    send(msg, "out");
}

void Controller::handleMessage(cMessage *msg)
{
    send(msg, "out");
}

