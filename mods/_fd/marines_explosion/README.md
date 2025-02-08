
#### Список PRов:

- https://github.com/RepoStash/FD-NewBay/pull/76
<!--
  Ссылки на PRы, связанные с модом:
  - Создание
  - Большие изменения
-->

<!-- Название мода. Не важно на русском или на английском. -->
## Мод-пример

ID мода: MARINES_EXPLOSION
<!--
  Название модпака прописными буквами, СОЕДИНЁННЫМИ_ПОДЧЁРКИВАНИЕМ,
  которое ты будешь использовать для обозначения файлов.
-->

### Описание мода

Этот мод переносит Мариновские взрывы на Бэй.
<!--
  Что он делает, что добавляет: что, куда, зачем и почему - всё здесь.
  А также любая полезная информация.
-->

### Изменения *кор кода*

- `code/modules/admin/admin_verbs.dm`
  - `var/global/list/admin_verbs_fun`
  - `var/global/list/admin_verbs_hideable`

<!--
  Если вы редактировали какие-либо процедуры или переменные в кор коде,
  они должны быть указаны здесь.
  Нужно указать и файл, и процедуры/переменные.

  Изменений нет - напиши "Отсутствуют"
-->

### Оверрайды
<!-- Общие оверрайды -->
- `code/overrides/override`:
  - `/atom`:                    `proc/ex_act`
  - `/mob/living/carbon/human`: `proc/ex_act`
  - `/obj/overlay/bmark`:       `var/anchored`

<!-- Оверрайды модов -->
- `code/overrides/missile_override.dm`:
  - `/obj/item/missile_equipment/payload/explosive`:    `proc/on_trigger`
  - `/obj/item/missile_equipment/payload/antimissile`:  `proc/on_trigger`
  - `/obj/item/missile_equipment/payload/nuclear`:      `proc/on_trigger`
  - `/obj/item/missile_equipment/payload/void`:         `proc/on_trigger`
  - `/obj/item/missile_equipment/payload/big_nuclear`:  `proc/on_trigger`

<!--
- `mods/_master_files/sound/my_cool_sound.ogg`
- `mods/_master_files/code/my_modular_override.dm`: `proc/overriden_proc`, `var/overriden_var`
  Если ты добавлял новый модульный оверрайд, его нужно указать здесь.
  Здесь указываются оверрайды в твоём моде и папке `_master_files`

  Изменений нет - напиши "Отсутствуют"
-->

### Дефайны

- Отсутствуют
<!--
  - `code/__defines/~mods/marines_explosion.dm`: `MARINES_EXPLOSION_SPEED_MULTIPLIER`, `MARINES_EXPLOSION_SPEED_BASE`
  Если требовалось добавить какие-либо дефайны, укажи файлы,
  в которые ты их добавил, а также перечисли имена.
  И то же самое, если ты используешь дефайны, определённые другим модом.

  Не используешь - напиши "Отсутствуют"
-->

### Используемые файлы, не содержащиеся в модпаке

- `mods/_master_files/icons/obj/alien.dmi`
<!--
  Будь то немодульный файл или модульный файл, который не содержится в папке,
  принадлежащей этому конкретному моду, он должен быть упомянут здесь.
  Хорошими примерами являются иконки или звуки, которые используются одновременно
  несколькими модулями, или что-либо подобное.
-->

### Авторы:

BlackCrystal, Chaplain Maximum, Danilcus
<!--
  Здесь находится твой никнейм
  Если работал совместно - никнеймы тех, кто помогал.
  В случае порта чего-либо должна быть ссылка на источник.
-->
