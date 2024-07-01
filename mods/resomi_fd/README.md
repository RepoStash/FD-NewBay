
#### Список PRов:

- https://github.com/SierraBay/SierraBay12/pull/2054
- https://github.com/RepoStash/FD-NewBay/pull/30
<!--
  Ссылки на PRы, связанные с модом:
  - Создание
  - Большие изменения
-->

<!-- Название мода. Не важно на русском или на английском. -->
## Резоми

ID мода: RESOMI_FD
<!--
  Название модпака прописными буквами, СОЕДИНЁННЫМИ_ПОДЧЁРКИВАНИЕМ,
  которое ты будешь использовать для обозначения файлов.
-->

### Описание мода

- Портирует расу резоми с Infinity с добавлением контентных изменений FD.
<!--
  Что он делает, что добавляет: что, куда, зачем и почему - всё здесь.
  А также любая полезная информация.
-->

### Изменения *кор кода*

- `code/modules/client/preference_setup/loadout/lists/misc.dm`
  - `/datum/gear/plush_toy/New()`
- `code/modules/organs/external/_external_icons.dm`
  - `/obj/item/organ/external/on_update_icon()`
- `mods/resomi/code/overrides.dm`
  - `/mob/living/carbon/human/get_pulse_as_number()`
- `code/modules/clothing/head/jobs.dm`
  - `/obj/item/clothing/head/beret`
  - `/obj/item/clothing/head/beret/Initialize()`
  - `/obj/item/clothing/head/beret/equipped()`
- `code/modules/clothing/masks/miscellaneous.dm`
  - `/obj/item/clothing/mask/bandana/equipped()`

<!--
  Если вы редактировали какие-либо процедуры или переменные в кор коде,
  они должны быть указаны здесь.
  Нужно указать и файл, и процедуры/переменные.

  Изменений нет - напиши "Отсутствуют"
-->

### Оверрайды

- `Отсутствуют`

<!--
  Если ты добавлял новый модульный оверрайд, его нужно указать здесь.
  Здесь указываются оверрайды в твоём моде и папке `_master_files`

  Изменений нет - напиши "Отсутствуют"
-->

### Дефайны

- `code/__defines/~mods/~master_defines.dm`:
  - `SPECIES_RESOMI`
  - `LANGUAGE_RESOMI`
- `mods/resomi/code/datum/_defines.dm`:
  - `CULTURE_RESOMI_TEMALI`
  - `CULTURE_RESOMI_SHAYAMI`
  - `CULTURE_RESOMI_SHOSHNI`
  - `CULTURE_RESOMI_ATARI`
  - `CULTURE_RESOMI_OTHER`
  - `CULTURE_RESOMI_SPACER`

  - `HOME_SYSTEM_RESOMI_ALISH`

  - `FACTION_RESOMI_URE`
  - `FACTION_RESOMI_CONCORD`
  - `FACTION_RESOMI_INDEPENDENT`
  - `FACTION_EXPEDITIONARY`

<!--
  Если требовалось добавить какие-либо дефайны, укажи файлы,
  в которые ты их добавил, а также перечисли имена.
  И то же самое, если ты используешь дефайны, определённые другим модом.

  Не используешь - напиши "Отсутствуют"
-->

### Используемые файлы, не содержащиеся в модпаке

- `Отсутствуют`
<!--
  Будь то немодульный файл или модульный файл, который не содержится в папке,
  принадлежащей этому конкретному моду, он должен быть упомянут здесь.
  Хорошими примерами являются иконки или звуки, которые используются одновременно
  несколькими модулями, или что-либо подобное.
-->

### Авторы:

LordNest
SurEugene
Daeberdir
UEDHighCommand
SWIFT0
Maximum123
Doctor Alex

<!--
  Здесь находится твой никнейм
  Если работал совместно - никнеймы тех, кто помогал.
  В случае порта чего-либо должна быть ссылка на источник.
-->
