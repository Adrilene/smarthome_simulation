#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;

class Lamp : public cSimpleModule
{
  protected:
    virtual void handleMessage(cMessage *msg);
};
Define_Module(Lamp);


void Lamp::handleMessage(cMessage *msg)
{
    delete msg;
}

