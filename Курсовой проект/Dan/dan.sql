-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 16 2020 г., 18:50
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category_news`
--

CREATE TABLE `category_news` (
  `id_categ` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_news`
--

INSERT INTO `category_news` (`id_categ`, `name`, `description`) VALUES
(1, 'Хоккей', 'Хоккей - Вид спорта, семейство игр на ледовой, тартановой, пластиковой, деревянной или травяной площадке, в котором две команды стараются поразить (мячом или шайбой) цель — ворота противника, используя клюшки. В каждой команде есть один вратарь, который защищает ворота своей команды, и несколько полевых игроков.'),
(2, 'Биатлон', 'Биатло́н — зимний олимпийский вид спорта, сочетающий лыжные гонки со стрельбой из винтовки. C 1994 года официальные международные соревнования по биатлону, включая Кубок мира и чемпионаты мира, проходят под эгидой Международного союза биатлонистов.'),
(3, 'Баскетбол', 'Баскетбо́л — спортивная командная игра с мячом, в которой мяч забрасывают руками в корзину (кольцо) соперника.'),
(4, 'Футбол', 'Футбо́л — командный вид спорта, в котором целью является забить мяч в ворота соперника ногами или другими частями тела (кроме рук) большее количество раз, чем команда соперника. В настоящее время самый популярный и массовый вид спорта в мире'),
(5, 'Формула-1', '«Формула-1» — высший класс гонок на автомобилях с открытыми колёсами, санкционированный Международной автомобильной федерацией (ФИА).'),
(6, 'Бокс', 'Бокс — контактный вид спорта, единоборство, в котором спортсмены наносят друг другу удары кулаками в специальных перчатках. Рефери контролирует бой, который длится до 12 раундов. Победа присваивается тому из противников, который набрал в итоге большее число очков, либо победителем объявляют того боксера, которому удалось сбить соперника с ног, после чего последний не смог подняться в течение десяти секунд (нокаут); травму, не позволяющая продолжать бой, может стать причиной т. н. технического нокаута. Если после установленного количества раундов поединок не был прекращён, то победитель определяется оценками судей.'),
(7, 'Теннис', 'Те́ннис — вид спорта, в котором соперничают либо два игрока («одиночная игра»), либо две команды, состоящие из двух игроков («парная игра»). Задачей соперников — тенниси́ст или тенниси́стка — является при помощи ракеток отправлять мяч на сторону соперника так, чтобы тот не смог его отразить, не более чем после первого падения мяча на игровом поле на половине соперника.');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `headline` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` date NOT NULL,
  `img` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catedory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `headline`, `description`, `date_time`, `img`, `catedory_id`) VALUES
(1, '«Спартак» представил тренерский штаб на новый сезон. Ассистентом Знарка стал трехкратный обладатель Кубка Гагарина', 'Руководство московского «Спартака» сформировало тренерский штаб команды на следующий сезон КХЛ. Главному тренеру Олегу Знарку будут помогать Харийс Витолиньш, Максим Соловьёв, тренер по физподготовке Хассан Саид и тренер вратарей Стефан Перссон. Также к клубу присоединится новый ассистент тренера Владимир Федосов. Ранее Федосов работал в первой и молодежной сборной России, ХК МВД, московском «Динамо» и петербургском СКА. В качестве тренера он становился трехкратным обладателем Кубка Гагарина (2012, 2013, 2017), чемпионом мира (2014) и серебряным призером молодежного чемпионата мира (2016). Сезон-2020/21 в КХЛ планируется начать 2 сентября...', '2020-05-28', '1', 1),
(2, 'Главного тренера сборной России назначат после отчетно-выборной конференции СБР', 'Член правления Союза биатлонистов России (СБР) Иван Черезов заявил, что главный тренер сборной страны будет назначен после проведения отчетно-выборной конференции организации.\r\n\r\n— Дело в том, что должность главного тренера утверждается дольше по времени. Поэтому решили сначала провести отчетно-выборную конференцию. Когда будет выбран президент, когда будут выбраны органы управления, тогда и будет назначен главный тренер. Если сейчас предлагать кандидатуру главного тренера, то ЦСП будет ее долго согласовать, а время подойдет к конференции, — сказал Черезов.\r\nОн отметил, что вице-президент СБР Валерий Польховский останется одним из кандидатов за должность главного тренера сборной России.\r\n\r\nВ апреле правление СБР утвердило его на этот пост, однако 27 мая президент организации Владимир Драчев  сообщил, что правление пересмотрело это решение. \r\n\r\nНа следующий день СБР направил на согласование в Министерство спорта список специалистов, которых рекомендовано включить в тренерский штаб сборной страны на предстоящий сезон. На должность старшего тренера мужской команды должен быть утвержден Юрий Каминский, женской — Михаил Шашилов.\r\n\r\nВнеочередная отчетно-выборная конференция СБР состоится 11 июля в Москве. На ней пройдут выборы нового президента и членов правления организации.  ', '2020-05-29', '2', 2),
(3, 'Из ЦСКА уходит не просто капитан. Он хотел закончить карьеру в Москве, дал дочери русское имя', 'Вообще-то политика баскетбольного ЦСКА — не комментировать никакие слухи, даже правдивые. Этому правилу уже много лет, и логика понятна. Если трансферный слух — правда, то подтверждать его клуб должен не в разговоре с каким-то одним журналистом, а у себя на официальном сайте. А если неправда — тем более не должен комментировать. Потому что если всегда опровергать неправду, то рано или поздно между «не опроверг» и «подтвердил» поставят знак равенства. Но в случае с уходом Кайла Хайнса президент ЦСКА Андрей Ватутин сделал исключение. Потому что потеря капитана — это всегда особенная история. А в этом случае — еще и откровенно грустная для клуба. «Должен с сожалением констатировать, что новость об уходе Кайла из ЦСКА правдива, — привел вчера слова Ватутина «СЭ». — Кайл утром позвонил мне, тренеру, многим в клубе, сообщил товарищам по команде, что ему нужен новый вызов, что он хочет сменить обстановку после семи успешных сезонов в Москве. Его контракт действовал до лета следующего года, но предполагал возможность «выхода» за фиксированную компенсацию. Конечно, с этой новостью сложно смириться, ранее мы хотели продлить сотрудничество, но решение игрока осталось неизменным. Мы с уважением и пониманием относимся к пожеланиям человека, столько отдавшего ЦСКА, добившегося больших побед, ставшего другом для каждого из нас. Желаем ему и его семье здоровья и успехов на новом месте. Сейчас клубы и агент согласовывают все бумаги по переходу, после чего мы объявим об этом официально» Шок для всех: для клуба, болельщиков и даже партнеров по команде. Их реакция была быстрой, как молния. Дэрран Хиллиард: «Салют, кэп».', '2020-05-30', '3', 3),
(4, 'Австрийское правительство согласилось на проведение двух гонок «Формулы-1»', 'Первые десять Гран-при сезона были либо отменены, либо отложены из-за пандемии коронавируса. Гонки в Австралии, Монако, Франции и Нидерландах, как и многие этапы чемпионата мира фактически были официально отменены. Другие этапы (Азербайджан, Бахрейн, Вьетнам, Китай, Испания), Канада) были отложены на неопределенное время.', '2020-05-31', '4', 5),
(5, 'Бой Поветкина и Уайта состоится 8 или 15 августа', 'Промоутер Эдди Хирн поделился планами относительно организации поединка между Александром Поветкиным и Диллианом Уайтом. — 18 или 25 июля будет запущен Fight Camp. Больших имен там пока не будет, если только не учитывать Уайта, который сойдется с Поветкиным на четвертой неделе. С учетом ограничений из-за карантина Уайт и Поветкин, вероятно, должны будут прибыть в Великобританию хотя бы за две недели до поединка, — заявил Хирн. Боксерские вечера будут проходить четыре субботы подряд. Таким образом, поединок Поветкина и Уайта пройдет 8 или 15 августа. Бой состоится без зрителей на территории штаба Matchroom Boxing в Брентвуде. Изначально схватка была запланирована на 2 мая в Манчестере, однако была перенесена из-за пандемии коронавируса. На счету 40-летнего Поветкина 35 побед (24 нокаутом), 2 поражения и 1 ничья. 32-летний Уайт за свою карьеру выиграл 27 поединков и уступил лишь однажды.', '2020-05-29', '5', 6),
(6, 'Даниил Медведев: «Живу в Монако только из-за тенниса, обязательно буду жить в России, когда закончу карьеру»', 'Российский теннисист Даниил Медведев рассказал, почему на протяжении нескольких лет живет и тренируется в Монако. — Мне на 100 процентов очень нравится жизнь в России, я родился в Москве. Когда жил в России, мне казалось, что в России жить плохо, а в Европе и Америке все круто, все, что говорят в новостях, — фейк, туда я стремлюсь, там я хочу жить. Приехав во Францию, я чуть ли не сразу понял для себя, что в каком-то смысле везде все одинаково. Ты сам для себя должен понять, где лучше, и это зависит не от какого-то общего мнения, или насколько развита страна, — сказал Медведев во время прямого эфира в Instagram. — Естественно, сразу могут пойти гневные комментарии: «Легко об этом говорить, живя в Монако!» Я здесь живу только из-за тенниса, потому что знаю, что здесь изначально был мой прогресс, и он продолжается. Возможно, на протяжении всей теннисной карьеры я буду здесь жить. Но пока я склоняюсь к тому, что обязательно буду жить в России, когда закончу с теннисом. Другой вопрос — чем я буду заниматься? Я этого абсолютно не знаю. И если то, к чему меня потянет, будет находиться в Америке, я поеду туда. Все зависит от жизненных обстоятельств, — отметил 24-летний россиянин. — Естественно, я бы не смог учить 6-летнего ребенка технике, для этого нужно специально проходить обучение. Если и вижу себя тренером на данный момент, то ассистентом тренера — бывшим игроком, помогающим какими-то советами, делящимся своим опытом. Могу себя хорошо представить себя в этой роли. Но буду ли этим заниматься, я не знаю, — ответил Медведев на вопрос, задумывается ли он о тренерской карьере. На данный момент все теннисные турниры под эгидами ATP, WTA и ITF отменены до 13 июля из-за пандемии коронавируса.', '2020-05-28', '6', 7),
(7, 'Братья Буре всегда мечтали играть вместе. Однажды они объединились во «Флориде», но из этого ничего не вышло', 'Вместе на лед в Нагано они так и не вышли. Пересекались только на пересменках: Павел был в первом звене с Жамновым и Каменским, а Валерий – в четвертом, с Кривокрасовым и Немчиновым.\r\n\r\nУ братьев Буре было не так много шансов поиграть вместе: сказывалась трехлетняя разница в возрасте (когда один уже был звездой НХЛ, другой – в канадских юниорках), а потом – выбор Валерия «Монреалем» на драфте-1992. Они и виделись-то редко: «Ванкувер» играл в Западной конференции, «Канадиенс» – в Восточной.\r\n\r\nБолее-менее регулярно они играли вместе только в детстве – задолго до того, как стали профи. «У нашего дома было замерзшее озеро, и иногда вместо того, чтобы ходить в школу, мы играли в хоккей», – рассказывал Павел.\r\n\r\nСнова встретиться на льду они могли только в трех ситуациях: сборная, обмен в один клуб или звездный уик-энд. Братья перепробовали все.', '2020-06-14', '7', 1),
(8, '«Матч ТВ» рекламирует голосование за поправки в Конституцию: в финале Олимпиады немцев помогли победить именно они', 'Запрет на агитацию в пользу какого-либо варианта (да, такой запрет существует) обошли с помощью создания максимально положительного имиджа поправок: якобы именно благодаря им сборная России смогла победить.\r\n\r\nВажно вспомнить кое-что о корейской Олимпиаде:\r\n\r\n• Из-за допингового бана от МОК в Корею приехала не сборная России, а сборная олимпийских спортсменов из России без флага, гимна и в черно-белой форме. Поскольку хоккей в плане тестирования на запрещенные вещества всегда работал независимо, то там у РФ было намного меньше проблем. Конечно, флаг и гимн не вернули – но, по крайней мере, сборная России играла в своей форме, а не в черно-белой.\r\n\r\n• На той Олимпиаде не было игроков из НХЛ – сильнейшей лиги мира. Неудивительно, что североамериканские сборные, основная масса игроков которых выступает как раз в НХЛ, до финала не добрались. КХЛ же тогда располагала большей финансовой свободой, чем сейчас, поэтому богатые клубы могли позволить себе содержать топ-хоккеистов. Их удерживала как раз Олимпиада – где Россия не побеждала никогда (только как сборная СНГ).\r\n\r\n• Ну и факт того, что в финале играла сборная Германии – симпатичная команда, которая в реальных условиях могла максимум рассчитывать на полуфинал. И этой сборной Россия проигрывала до последней минуты.', '2020-06-15', '8', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user/comment`
--

CREATE TABLE `user/comment` (
  `id_comment` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` datetime NOT NULL,
  `id_news` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`) VALUES
(1, 'ublack', '123@mail.ru', 'aaaaaaaa');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id_categ`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catedory_id` (`catedory_id`);

--
-- Индексы таблицы `user/comment`
--
ALTER TABLE `user/comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_user` (`id_user`,`id_news`),
  ADD KEY `id_news` (`id_news`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id_categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user/comment`
--
ALTER TABLE `user/comment`
  MODIFY `id_comment` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`catedory_id`) REFERENCES `category_news` (`id_categ`);

--
-- Ограничения внешнего ключа таблицы `user/comment`
--
ALTER TABLE `user/comment`
  ADD CONSTRAINT `user/comment_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `user/comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
