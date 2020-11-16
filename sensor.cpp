#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;

class Sensor : public cSimpleModule
{
  protected:

    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
};
Define_Module(Sensor);


void Sensor::initialize()
{
    cMessage *msg = new cMessage("Hello Controller");
    send(msg, "out");
}

void Sensor::handleMessage(cMessage *msg)
{
    send(msg, "out");
}

