#!/bin/bash
cd ~/lab0 || exit 1

mkdir -p victor/kitchen victor/pastry victor/hall
mkdir -p victor/reception victor/management
mkdir -p archive claude_monet
echo 'Баринов проверяет кухню ресторана Victor' > victor/kitchen/barinov_plan
echo 'Лёва распределяет поваров по рабочим местам' >> victor/kitchen/barinov_plan

echo 'Новое меню готовят к вечернему открытию' >> victor/kitchen/barinov_plan
echo 'Макс предлагает утку с новым соусом' > victor/kitchen/max_dish
echo 'Баринов разрешает приготовить пробную порцию' >> victor/kitchen/max_dish
echo 'Блюдо подадут первым гостям ресторана Victor' >> victor/kitchen/max_dish
echo 'Макс предлагает утку с новым соусом' > victor/kitchen/max_dish
echo 'Баринов разрешает приготовить пробную порцию' >> victor/kitchen/max_dish
echo 'Блюдо подадут первым гостям ресторана Victor' >> victor/kitchen/max_dish
echo 'Катя готовит шоколадный десерт' > victor/pastry/katya_dessert
echo 'Украшение собирают перед самой подачей' >> victor/pastry/katya_dessert
echo 'Элеонора ждёт результат дегустации' >> victor/pastry/katya_dessert
echo 'Первый стол оставлен для Элеоноры' > victor/hall/opening_tables
echo 'Второй стол подготовлен для Нагиева' >> victor/hall/opening_tables
echo 'Большой стол займёт команда ресторана' >> victor/hall/opening_tables
echo 'Элеонора Андреевна прибывает к открытию' > victor/hall/guest_list
echo 'Дмитрий Нагиев приглашён на ужин' >> victor/hall/guest_list
echo 'Денис выступает для гостей вечером' >> victor/hall/guest_list
echo 'Столик четыре забронирован на семь часов' > victor/reception/reservations
echo 'Столик шесть нужен постоянным гостям' >> victor/reception/reservations
echo 'Вика подтверждает каждую бронь' >> victor/reception/reservations
echo 'Элеонора требует закончить подготовку вовремя' > victor/management/eleonora_order
echo 'Зал должен быть готов до приезда гостей' >> victor/management/eleonora_order
echo 'Баринов лично представляет праздничное меню' >> victor/management/eleonora_order
echo 'Утром проверить работу кухни' > victor/management/vika_schedule
echo 'Днём провести собрание официантов' >> victor/management/vika_schedule
echo 'Вечером встретить первых гостей' >> victor/management/vika_schedule
echo 'Луковый суп из Claude Monet' > archive/old_menu
echo 'Мильфей от Луи' >> archive/old_menu
echo 'Фирменное мясо от Баринова' >> archive/old_menu
echo 'Команда прощается с рестораном Claude Monet' > claude_monet/farewell_note
echo 'Старые рецепты сохраняются в архиве' >> claude_monet/farewell_note
echo 'Макс обещает не забывать первую кухню' >> claude_monet/farewell_note
echo 'Ресторан Victor открывается вечером' > opening_day
echo 'Баринов волнуется за новую команду' >> opening_day
echo 'Вика проверяет последние приготовления' >> opening_day
chmod 755 victor claude_monet
chmod 750 victor/pastry victor/reception
chmod 640 victor/kitchen/barinov_plan victor/reception/reservations victor/management/vika_schedule
chmod 644 victor/hall/opening_tables archive/old_menu
chmod u=rwx,g=rx,o= victor/kitchen victor/hall victor/management archive
chmod u=rw,g=r,o= victor/kitchen/max_dish victor/pastry/katya_dessert victor/management/eleonora_order claude_monet/farewell_note
chmod u=rw,g=r,o=r victor/hall/guest_list opening_day
