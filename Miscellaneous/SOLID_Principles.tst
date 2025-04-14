SOLID Principles - 

Each letter stands for programming principle.

A - Dependency Inversion Principle -

The High level modules should not depend upon the low level modules. furthermore, the dependencies should not be tighly couples like 

public Class A {
    void DoSOmthing()
}

public Class B {
    public B()
    {
        A a = new A();  #Here we are coupling the code tighly by creating a depency of Class A directly.
    } 
}


But as per the principle the dependencies should be abstract classes not the concreate classes that makes code decouple.


public interface AM{

}
Public class A : AM{
    void DOSomething()
}

Public class B{
    private AM _m;
    publi B(AM m)
    {
        _m = m;
    }
}



B - Interface Segrigation Principle -

A client should not have interface with irrelevency. for example -

client needs car detail interface so, the interface should not have car color, car size type opertation implementation or abstract methods.

interface Car 
{
    void CarDetail();
    void CarColor();
    void CarSize();
}


interface ClientCar
{
    void CarDetail();
}


interface IWorkable { void Work(); }
interface IEatable { void Eat(); }

class Human : IWorkable, IEatable {
    public void Work() { }
    public void Eat() { }
}

class Robot : IWorkable {
    public void Work() { }
}


C - Liskov substitution Principle -

• The Liskov substitution principle describes that, the ParentClass/Base Class should be having ChildClasses, that child classes can be
substituted on the place of ParentClass.

It avoids ovverriding method of parent class, instead allows the class to utilize Child Classes that have required methods.

E.G. -

Class Bird
{
    void Fly(){};
}

Class Pengune : Bird
{
    void Fly(){
        Exception handling
    }
}


Instead -

Class Bird : IBird
{

}

Class FlyBird : IBird{
    void Fly(){};
}

Class Pengune : IBird{
    #Here no need to handle the Fly method or override it
}


D - Open/Closed Principle -

Methods of the classes should be extentable not modifiable.

Example -

Class Area 
{
    int value1;
    public int GetArea(string type)
    {
        if type == 'Circle'
            return DoSOmthing with value1
        elseif type =='Rectangle'
            return DoSOmthing with value1
            .
            .
            .
            .

            #Here in this class the more requirement comes in the more modification would be needed into the code

    }
}

Instead

interface IShape {
    int Area();
}

class Circle : IShape{
    int Area(){
        return DoSOmthing
    }
}

class Rectangle : IShape{
    int Area(){
        return DoSOmthing
    }
}


D - Single Responsibility principle -
A class should do one thing only

Bad Example - In this example the single class is doing lots of work 

Class Operators {
    void Screw(){

    }

    void Cry()
    {

    }

    void Run(){

    }
}


Best Example - seperate classes for each work

Class Screw {
    public void Screw(){}
}

Class Cry{public void Do()}
Class Run{public void Do()}