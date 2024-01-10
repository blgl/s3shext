/*
    Bind :base and :derived before running this!
*/

select format(
        'typedef struct %s {' || char(10) || '    %s_Vtable *pMethods;'
            || char(10, 10) || '    /* add your data here */' || char(10)
            || '} %s;' || char(10, 10) || '%s' || char(10, 10)
            || '%s_Vtable %s_vtable =' || char(10) || '{' || char(10)
            || '    %s' || char(10) || '};' || char(10),
        :derived, :base, :derived,
        (select group_concat(
                 format(
                     rettype || char(10) || '{' || char(10) || '}',
                     format(
                         '%s_%s(' || char(10) || '    %s)',
                          :derived, methodname,
                          (select group_concat(
                                   format(argtype, argname),
                                   ',' || char(10) || '    ')
                               from (select classname || ' *%s' as argtype,
                                             'pThis' as argname,
                                             -1 as argix
                                     union all select argtype, argname, argix
                                         from argument
                                         where argument.methodid=
                                                 method.methodid
                                         order by argix)))),
                 char(10, 10))
             from method
             where method.classid=class.classid
             order by methodix),
        :base, :derived,
        (select group_concat(
                 format('%s_%s', :derived, methodname),
                 ',' || char(10) || '    ')
             from method
             where method.classid=class.classid
             order by methodix))
    from class
    where classname=:base;
