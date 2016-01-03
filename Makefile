VITASDK = C:/VitaSDK
TARGET_LIB = libbox2d.a
OBJS       = Box2D/Dynamics/b2Body.o \
			Box2D/Dynamics/b2ContactManager.o \
			Box2D/Dynamics/b2Fixture.o \
			Box2D/Dynamics/b2Island.o \
			Box2D/Dynamics/b2World.o \
			Box2D/Dynamics/b2WorldCallbacks.o \
			Box2D/Dynamics/Contacts/b2ChainAndCircleContact.o \
			Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.o \
			Box2D/Dynamics/Contacts/b2CircleContact.o \
			Box2D/Dynamics/Contacts/b2Contact.o \
			Box2D/Dynamics/Contacts/b2ContactSolver.o \
			Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.o \
			Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.o \
			Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.o \
			Box2D/Dynamics/Contacts/b2PolygonContact.o \
			Box2D/Dynamics/Joints/b2DistanceJoint.o \
			Box2D/Dynamics/Joints/b2FrictionJoint.o \
			Box2D/Dynamics/Joints/b2GearJoint.o \
			Box2D/Dynamics/Joints/b2Joint.o \
			Box2D/Dynamics/Joints/b2MotorJoint.o \
			Box2D/Dynamics/Joints/b2MouseJoint.o \
			Box2D/Dynamics/Joints/b2PrismaticJoint.o \
			Box2D/Dynamics/Joints/b2PulleyJoint.o \
			Box2D/Dynamics/Joints/b2RevoluteJoint.o \
			Box2D/Dynamics/Joints/b2RopeJoint.o \
			Box2D/Dynamics/Joints/b2WeldJoint.o \
			Box2D/Dynamics/Joints/b2WheelJoint.o \
			Box2D/Collision/b2BroadPhase.o \
			Box2D/Collision/b2CollideCircle.o \
			Box2D/Collision/b2CollideEdge.o \
			Box2D/Collision/b2CollidePolygon.o \
			Box2D/Collision/b2Collision.o \
			Box2D/Collision/b2Distance.o \
			Box2D/Collision/b2DynamicTree.o \
			Box2D/Collision/b2TimeOfImpact.o \
			Box2D/Collision/Shapes/b2ChainShape.o \
			Box2D/Collision/Shapes/b2CircleShape.o \
			Box2D/Collision/Shapes/b2EdgeShape.o \
			Box2D/Collision/Shapes/b2PolygonShape.o \
			Box2d/Common/b2BlockAllocator.o \
			Box2d/Common/b2Draw.o \
			Box2d/Common/b2Math.o \
            Box2d/Common/b2Settings.o \
			Box2d/Common/b2StackAllocator.o \
			Box2d/Common/b2Timer.o \
            Box2d/Rope/b2Rope.o
INCLUDES   = "."

PREFIX  = arm-vita-eabi
CC      = $(PREFIX)-gcc
CXX      = $(PREFIX)-g++
AR      = $(PREFIX)-ar
CFLAGS  = -Wl,-q -Wall -O3 -I$(INCLUDES)
CXXFLAGS = $(CFLAGS)
ASFLAGS = $(CFLAGS)

all: $(TARGET_LIB)

debug: CFLAGS += -DDEBUG_BUILD
debug: all

$(TARGET_LIB): $(OBJS)
	$(AR) -rc $@ $^

clean:
	@rm -rf $(TARGET_LIB) $(OBJS)
