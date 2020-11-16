simple Sensor
{
    gates:
        output out;
}

simple Lamp
{
    gates:
        input in;
}

simple Controller
{
    gates:
        input in;
        input in2;
        input in3;
        output out;
        output out2;
        output out3;
}

network SmartHome
{
    @display("bgb=468,314");
    submodules:
        sensor1: Sensor {
            @display("p=142,47");
        }
        sensor2: Sensor {
            @display("p=41,158");
        }
        sensor3: Sensor {
            @display("p=41,258");
        }
        lamp1: Lamp {
            @display("p=299,77");
        }
        lamp2: Lamp {
            @display("p=299,158");
        }
        lamp3: Lamp {
            @display("p=299,274");
        }
        controller: Controller {
            @display("p=142,143");
        }

    connections:
        sensor1.out --> {  delay = 100ms; } --> controller.in;
        sensor2.out --> {  delay = 100ms; } --> controller.in2;
        sensor3.out --> {  delay = 100ms; } --> controller.in3;

        controller.out --> {  delay = 100ms; } --> lamp1.in;
        controller.out2 --> {  delay = 100ms; } --> lamp2.in;
        controller.out3 --> {  delay = 100ms; } --> lamp3.in;
}

