--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = tr_TR';
set system parameters 'intl_date_lang = tr_TR';
--test
select MINUTE('2010-10-04');
--test
SELECT MINUTE('2010-10-04 12:34:56');
--test
SELECT MINUTE('2010-10-04 12:34:56.7890');
--test
SELECT MINUTE('13:34:56');
--test
SELECT MINUTE('13:34:56.1234');
--test
SELECT MINUTE('10:34:56 AM');
--test
SELECT MINUTE('10:34:56 PM');
--test
SELECT MINUTE('2011-05-01 PAZAR');
--test
SELECT MINUTE('2011-05-01 PAZAR 10:11:12 PM');
--test
SELECT MINUTE('2011-05-07 CUMARTESİ 10:11:12.678');
--test
SELECT MINUTE('2011-05-02 pazartesi');
--test
SELECT MINUTE('2011-05-03 SA');
--test
SELECT MINUTE('2011-05-03 你好');
--test
SELECT MINUTE('2011-05-04 ça');
--test
SELECT MINUTE('2010-01 OCAK');
--test
SELECT MINUTE('2010-01');
--test
SELECT MINUTE('2010');
--test
SELECT MINUTE('hello');

set system parameters 'intl_date_lang = en_US';
set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;