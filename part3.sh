#!/bin/bash

cd ~/lab0 || exit 1
echo '4.1. Пять самых больших файлов'
ls -lR | grep '^-' | grep -v 'copy' | sort -k5,5nr | head -n 5
echo '4.2. Строки со словами Victor или Баринов'

grep -rihE 'victor|баринов' victor archive | grep -iv 'стар' | sort -r | head -n 6




echo '4.3. Количество файлов с сочетаниями макс или кухн'

grep -ilE 'макс|кухн' victor/kitchen/* archive/claude_backup/* | wc -l
echo '4.4. Первая и последняя строки исходных файлов зала'
{
  head -q -n 1 victor/hall/guest_list victor/hall/opening_tables
  tail -q -n 1 victor/hall/guest_list victor/hall/opening_tables
} | grep -iE 'гост|стол' | sort

echo '4.5. Количество слов в выбранных строках меню'

grep -iv 'десерт' victor/kitchen/tasting_menu | grep -iE 'макс|блюд' | sort -r | wc -w
echo '4.6. Обычные файлы с двумя жёсткими ссылками'
ls -lR | grep -E '^-[^[:space:]]+[[:space:]]+2[[:space:]]' | sort -k9,9r

echo '4.7. Первая символическая ссылка по имени'
ls -lR | grep '^l' | sort -k9,9 | head -n 1


echo '5. Удаление файлов, ссылок и каталогов'

rm -v victor/management/opening_copy

rm -v victor_menu victor/reception/hall_access

rm -v victor/hall/guest_list_copy

rm -v victor/management/farewell_note
rmdir -v claude_monet
rm -v archive/old_menu
rm -rv archive/claude_backup
