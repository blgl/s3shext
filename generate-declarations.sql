select format(
        'typedef struct %s_Vtable %s_Vtable;' || char(10, 10)
            || 'typedef struct %s {' || char(10) || '    %s_Vtable *pMethods;'
            || char(10) || '} %s;' || char(10, 10) || 'struct %s_Vtable {'
            || char(10) || '%s' || char(10) || '};' || char(10),
        classname, classname, classname, classname, classname, classname,
        (select group_concat(
                 format(
                     '    ' || rettype || ';',
                     format(
                         '(*%s)(' || char(10) || '        %s)',
                         methodname,
                         (select group_concat(format(argtype, ''), ', ')
                              from (select classname || ' *%s' as argtype,
                                            -1 as argix
                                    union all select argtype, argix
                                        from argument
                                        where argument.methodid=method.methodid
                                        order by argix)))),
                 char(10))
             from method
             where method.classid=class.classid
             order by methodix))
    from class
    where classname!='';
