/*
    The implementable classes (DotCommand, etc.),
    and each class's methods,
    and each method's arguments.

    An empty class name is used for a pseudo-class containing
    methods commmon to all actual classes (currently just "destruct").

    Common methods should have negative "methodix" values
    so they sort before the class-specific ones when merged.

    Argument types and result types are both specified as format
    strings with '%s' marking where you'd put the identifier
    if you wanted to declare a variable of the type.
*/

create table class (
    classid integer
        primary key,
    classname text
        not null
        unique
);

create table method0 (
    methodid integer
        primary key,
    classid integer
        not null
        references class,
    methodix integer
        not null,
    methodname text
        not null,
    rettype text
        not null,

    unique (classid, methodix),
    unique (classid, methodname)
);

/*
    This view merges the common and class-specific methods.
*/

create view method
    (methodid, classid, methodix, methodname, rettype)
as select methodid, class.classid, methodix, methodname, rettype
    from class,
        method0 on method0.classid=class.classid
            or method0.classid=(select classid from class
                                   where classname='')
    where classname!='';

create table argument (
    argid integer
        primary key,
    methodid integer
        references method0,
    argix integer
        not null,
    argname text
        not null,
    argtype text
        not null,

    unique (methodid, argix),
    unique (methodid, argname)
);

