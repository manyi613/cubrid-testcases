--[I18N] The coercibility of expressions having host variable arguments are incorrect.

set names iso88591;

prepare st1 from 'select collation(upper(?)) collation, coercibility(upper(?)) coeribility';
prepare st2 from 'select collation(concat(?, ?)) collation, coercibility(concat(?, ?)) coercibility';
prepare st3 from 'select collation(reverse(?)) collation, coercibility(reverse(?)) coercibility';
prepare st4 from 'select /*+ recompile */collation(replace(?, ?, ''b'')) collation, coercibility(replace(?, ?, ''b'')) coercibility';
prepare st5 from 'select collation(lpad(?, 30, ?)) collation, coercibility(lpad(?, 30, ?)) coercibility';
prepare st6 from 'select collation(repeat(?, 3)) collation, coercibility(repeat(?, 3)) coercibility';
prepare st7 from 'select collation(elt(?, ?, ?)) collation, coercibility(elt(?, ?, ?)) coercibility';
prepare st8 from 'select collation(trim(?)) collation, coercibility(trim(?)) coercibility';


set names iso88591 collate iso88591_en_ci;
execute st1 using 'a', 'a';
execute st2 using 'a', 'b', 'a', 'b';
execute st3 using 'b', 'b';
execute st4 using 'abc', 'a', 'abc', 'a';
execute st5 using '123', 12.3, '123', 12.3;
execute st6 using 'a', 'a';
execute st7 using 2, '1', 2, 2, '1', 2;
execute st8 using '  a  ', '  a  ';

select collation(upper('a')) collation, coercibility(upper('a')) coeribility;


set names utf8;
execute st1 using 'a', 'a';
execute st2 using 'a', 'b', 'a', 'b';
execute st3 using 'b', 'b';
execute st4 using 'abc', 'a', 'abc', 'a';
execute st5 using '123', 12.3, '123', 12.3;
execute st6 using 'a', 'a';
execute st7 using 2, '1', 2, 2, '1', 2;
execute st8 using '  a  ', '  a  ';

select collation(replace('abc', 'a', 'b')) collation, coercibility(replace('abc', 'a', 'b')) coercibility;


set names utf8 collate utf8_en_cs;
execute st1 using 'a', 'a';
execute st2 using 'a', 'b', 'a', 'b';
execute st3 using 'b', 'b';
execute st4 using 'abc', 'a', 'abc', 'a';
execute st5 using '123', 12.3, '123', 12.3;
execute st6 using 'a', 'a';
execute st7 using 2, '1', 2, 2, '1', 2;
execute st8 using '  a  ', '  a  ';

select collation(repeat('a', 3)) collation, coercibility(repeat('a', 3)) coercibility;


set names euckr;
execute st1 using 'a', 'a';
execute st2 using 'a', 'b', 'a', 'b';
execute st3 using 'b', 'b';
execute st4 using 'abc', 'a', 'abc', 'a';
execute st5 using '123', 12.3, '123', 12.3;
execute st6 using 'a', 'a';
execute st7 using 2, '1', 2, 2, '1', 2;
execute st8 using '  a  ', '  a  ';

select collation(trim('a')) collation, coercibility(trim('a')) coercibility;


deallocate prepare st1;
deallocate prepare st2;
deallocate prepare st3;
deallocate prepare st4;
deallocate prepare st5;
deallocate prepare st6;
deallocate prepare st7;
deallocate prepare st8;


set names iso88591;


