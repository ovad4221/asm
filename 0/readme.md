# Лабораторная 0: арифметика и основы работы с листингами


### Вступительное слово

Открывает наш курс __нулевая лаба__. Она не доставит вам труда -- мы только начинаем своё путешествие в подземелья программирования. Однако вам необходимо понять несколько вещей прежде, чем мы отправимся в путь.

Решение львиной доли космических научных задач подразумевает масштабные численные расчёты, будь то расчёт картины обтекания пилотируемого космического корабля или вычисление места падения "Луны-25". Однако написать рабочий научный код -- одно дело. Написать оптимизированный код, который работает быстро и не страдает хроническим сегфолтом, -- дело совсем другое.

Весь первый курс вы учились писать код на плюсах и хорошо в этом продвинулись. Но для настоящего овладения искусством компьютерного расчёта мало знать синтаксис того или иного языка программирования. Вычислительная физика -- это ещё и грамотное построение алгоритмов, и аккуратные манипуляции с памятью, и умение распараллелить то, что параллелится. Нужно учиться писать код, который работает быстро, а требует мало. А для этого нужно неплохо знать железо, на котором работаешь.

Именно эту цель и преследует данный курс. Мы не будем изучать Ассемблер как таковой. Он нам необходим лишь как инструмент взаимодействия с процессором и памятью __самого низкого уровня__ (до которого можно дотянуться без специального оборудования типа паяльника и программатора). С его помощью мы будем переполнять стек, смотреть на float-ы под микроскопом, а также извлекать мудрость предков из машинного кода.

Если вы осознали, что вас ждёт, и готовы продолжить ~~всё равно у вас нет выбора~~, то приступайте к выполнению этой лабораторной -- как было сказано выше, сложностей с ней не возникнет. Какой-то обязательной теоретической вводной к этой лабе не требуется (хотя такая есть: пытливые умы могут ознакомиться с ней по [ссылке](https://youtu.be/81-TiwEU8o4?si=HJhLoOm_ZIjQsRXS)). Начинайте последовательное выполнение заданий, но прежде загляните в приложение к лабе -- там находится справочник команд, которые помогут вам самостоятельно сгенерировать ваши первые листинги.

Надеемся, что проблем с пунктами 1-2 ни у кого не возникнет.

### Отчётность и формальные моменты

С самого начала обозначим правила игры в оценки.

Аттестация по курсу предполагает:

* сдачу лаб
* сдачу теоретического зачёта

Для сдачи лабы достаточно подготовить отчёт по ней. Лучше в LaTeX, шаблон отчёта лежит в папке этой лабы. 

Почему LaTeX:
* все нормальные редакции научных журналов предпочитают именно такой формат и выдают свои шаблоны;
* есть удобные инструменты для соавторов типа Overleaf;
* один раз настроили шаблон отчета по ГОСТу, и всю жизнь пользуетесь.

Если совсем не осилили LaTeX, то пишите в чем угодно, но сдавать лучше pdf, а не doc/docx/odt. В этом случае точно не уедет форматирование, и не будет проблем при стыковке, например, разных версий LibreOffice. Это довольно общая рекомендация -- по другим курсам советуем делать так же. 

Всего лаб будет 8 штук. Итоговая оценка за курс = 2 + число сданных лаб.

Теоретический зачёт обязателен для тех, кто претендует на оценку "хорошо" или "отлично". Таких людей, по текущей статистике, 95%.

Если вы в конце семестра осознаете, что попадаете в оставшиеся 5%, не отчаивайтесь! Мы устроим вам увлекательную сдачу курса на зачётной неделе. Остальные, скорее всего, освободятся раньше, если не будут пренебрегать планомерным выполнением лабораторных.

## Задания

1. Поставить Fedora/Ubuntu/Win10+Ubuntu тем, кто еще не. 
2. Освоиться с консолью и gcc/g++. Пройтись по схеме сборки своими руками.
3. Сгенерировать ассемблерный листинг программы «Hello, world!».
4. Сгенерировать ассемблерный листинг программы с простой арифметикой. Модифицировать листинг. Скомпилировать его. Убедиться, что изменения сработали. Используйте глобальные целочисленные переменные и язык.
5. Сравнить листинги С и С++ на коде из 1 и 2.
6. Определить, какие команды в ассемблере отвечают за:\
    a. присвоение;\
    b. сложение;\
    c. вычитание.
7. Определить, где и как объявляются и используются глобальные переменные различного типа.
8. Определить размер и способ вызова регистров общего назначения.
9. Определить, как работают функции mul, imul, div, idiv с аргументами разного знака и разной длины:\
    a. количество аргументов;\
    b. положение первого аргумента;\
    c. работа со знаковыми аргументами;\
    d. положение результата.

## Приложение

### Базовые консольные команды

Мы включили сюда и базовые команды терминала Linux -- для переводников из других групп, вольнослушателей и тех, кто забыл всё по прошествии лета.

|Команда|Функционал|
|---|---|
|`cd`|переход в другую директорию|
|`cd abc`|переход в директорию abc|
|`cd ../`|переход на уровень выше|
|`cd ../def`|переход в директорию def, которая находится на уровень выше|
|`ls`|содержимое текущей директории|
|`pwd`|путь до текущей директории|
|`mkdir`|создать директорию|
|`mkdir abc`|создать директорию abc в текущей папке|
|`mkdir ../def`|создать директорию def в папке на уровень выше|
|`rm`|удаление|
|`rm 1.txt`|удалить файл 1.txt|
|`rm -rf abc`|удалить папку abc из текущей директории|
|`rm *.s`|удалить из текущей папки все файлы с расширением .s|
|`gcc`|компилятор|
|`gcc 1.c`|скомпилировать файл 1.c, получившийся исполняемый файл будет называться a.out|
|`gcc 1.c -o 1`|скомпилировать файл 1.c, получившийся исполняемый файл будет называться 1|
|`gcc 1.c -o 1.s -S`|сгенерировать ассемблерный листинг файла 1.c, получившийся файл будет называться 1.s|
|`gcc 1.s -o 1`|скомпилировать файл 1.s, получившийся исполняемый файл будет называться 1|
|`./a.out`|запустить исполняемый файл a.out из текущей директории|
|`./1`|запустить исполняемый файл 1 из текущей директории|
|`gedit 1.c`|стандартный текстовый редактор|
|`vim 1.c`|консольный текстовый редактор (не для слабаков)|


### Установка LaTeX под Ubuntu и сборка примера

```
sudo apt install texlive-latex-extra texlive-extra-utils texlive-lang-cyrillic
mkdir pdf
cd pdf 
pdflatex ../template.tex
```