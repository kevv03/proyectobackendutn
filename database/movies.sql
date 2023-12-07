-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2023 a las 22:19:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Crime'),
(6, 'Drama'),
(7, 'Fantasy'),
(8, 'Film-Noir'),
(9, 'Horror'),
(10, 'Mystery'),
(11, 'Romance'),
(12, 'Sci-Fi'),
(13, 'Thriller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_date` varchar(20) NOT NULL,
  `director` varchar(100) NOT NULL,
  `length` varchar(10) NOT NULL,
  `overview` text NOT NULL,
  `rate` varchar(10) NOT NULL,
  `language` varchar(5) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `movie`
--

INSERT INTO `movie` (`id`, `title`, `release_date`, `director`, `length`, `overview`, `rate`, `language`, `poster`) VALUES
(90, 'Leo', '17-11-2023', 'Lokesh Kangaraj', '159m', 'Jaded 74-year-old lizard Leo has been stuck in the same Florida classroom for decades with his terrarium-mate turtle. When he learns he only has one year left to live, he plans to escape to experience life on the outside but instead gets caught up in the problems of his anxious students — including an impossibly mean substitute teacher.', '7,4/10', 'en', 'http://localhost:3000/poster_e7559d6b-9d74-460d-822a-6db8d9165a18.jpg'),
(92, 'Trolls Band Together', '12-10-2023', 'Walt Dohrn', '91m', 'When Branch\'s brother, Floyd, is kidnapped for his musical talents by a pair of nefarious pop-star villains, Branch and Poppy embark on a harrowing and emotional journey to reunite the other brothers and rescue Floyd from a fate even worse than pop-culture obscurity.', '7,2/10', 'en', 'http://localhost:3000/poster_348a6726-155d-4b04-9396-edd5b083cc26.jpg'),
(93, 'Oppenheimer', '19-07-2023', 'Christopher Nolan', '180m', 'The story of J. Robert Oppenheimer\'s role in the development of the atomic bomb during World War II.', '8.2/10', 'en', 'http://localhost:3000/poster_da103f85-26aa-4cba-8926-4b3df0030a72.jpg'),
(94, 'Five Nights at Freddy\'s', '25-10-2023', 'Emma Tammi', '109m', 'Recently fired and desperate for work, a troubled young man named Mike agrees to take a position as a night security guard at an abandoned theme restaurant: Freddy Fazbear\'s Pizzeria. But he soon discovers that nothing at Freddy\'s is what it seems.', '7,8/10', 'en', 'http://localhost:3000/poster_0f45b8fe-8a79-4371-a395-d2a62527b2c4.jpg'),
(95, 'The Creator', '27-09-2023', 'Gareth Edwards', '133m', 'Amid a future war between the human race and the forces of artificial intelligence, a hardened ex-special forces agent grieving the disappearance of his wife, is recruited to hunt down and kill the Creator, the elusive architect of advanced AI who has developed a mysterious weapon with the power to end the war—and mankind itself.', '7,1/10', 'en', 'http://localhost:3000/poster_35fcad6a-9cde-42e7-96d2-cee68edd00f4.jpg'),
(98, 'Reign of Chaos', '12-04-2022', 'Rebecca Mathews', '77m', 'When the world is gripped by a plague unleashed by the evil lord Chaos, and humans are turned into rabid creatures, mankind can only be saved by three young women, descendants of a Goddess, with the power to stop Chaos\' evil.', '5,5/10', 'en', 'http://localhost:3000/poster_ef45ce4a-ea86-41f0-bf38-c0d6a4d7a834.jpg'),
(99, 'موسى (Mousa)', '11-08-2021', 'Peter Mimi', '105m', 'An engineering college student invents the first of its kind robot in the Middle East, in an attempt to avenge his father\'s death and achieve justice, which gets him pursued by the authorities.', '6,3/10', 'es', 'http://localhost:3000/poster_278d1b8e-184a-4639-9009-4e7621f8ccc9.jpg'),
(100, 'Expend4bles', '15-09-2023', 'Scott Waugh', '103m', 'Armed with every weapon they can get their hands on and the skills to use them, The Expendables are the world\'s last line of defense and the team that gets called when all other options are off the table. But new team members with new styles and tactics are going to give “new blood” a whole new meaning.', '6,4/10', 'en', 'http://localhost:3000/poster_408028db-91a0-459f-8a7e-8fcf0f017fd7.jpg'),
(101, 'Fast X', '17-05-2023', 'Louis Leterrier', '141m', 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.', '7,2/10', 'en', 'http://localhost:3000/poster_00ef2be2-d1d0-4c3e-a369-1e5dda3fb2d5.jpg'),
(102, 'Hell House LLC Origins: The Carmichael Manor', '24-10-2023', 'Stephen Cognetti', '98m', 'A group of cold case investigators stay at the Carmichael Manor, site of the grisly and unsolved murders of the Carmichael family back in the eighties. After four nights, the group was never heard from again. What is discovered on their footage is even more disturbing than anything found on the Hell House tapes.', '6,1/10', 'en', 'http://localhost:3000/poster_e1d07f43-c3c2-4f92-9c4f-922baf67b78d.jpg'),
(103, 'Mission: Impossible - Dead Reckoning Part One', '08-07-2023', 'Christopher McQuire', '163m', 'Ethan Hunt and his IMF team embark on their most dangerous mission yet: To track down a terrifying new weapon that threatens all of humanity before it falls into the wrong hands. With control of the future and the world\'s fate at stake and dark forces from Ethan\'s past closing in, a deadly race around the globe begins. Confronted by a mysterious, all-powerful enemy, Ethan must consider that nothing can matter more than his mission—not even the lives of those he cares about most.', '7,6/10', 'en', 'http://localhost:3000/poster_9a03435b-e777-4683-af68-8d24dbaa16c1.jpg'),
(104, 'Хотулун гүнж: Алтан судрын эрэлд (Princess Khutulun)', '03-12-2021', 'S. Baasanjargal, Baatarsuren Shuudertsetseg', '87m', 'Princess Khotulun is the daughter of Haidu Khan of the Ugudei dynasty. The film tells the story of Princess Khotulun, the son of Kublai Khan, known in Western and Eastern history as a wrestling princess, and her struggle to reclaim her Golden Sutra.', '7,2/10', 'mn', 'http://localhost:3000/poster_1fabf187-3b61-4801-b136-64a8117761cd.jpg'),
(105, 'The Equalizer 3', '30-08-2023', 'Antoine Fuqua', '109m', 'Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. As events turn deadly, McCall knows what he has to do: become his friends\' protector by taking on the mafia.', '7.4/10', 'en', 'http://localhost:3000/poster_f99ce28e-df06-4e32-b4b7-2528b010f47e.jpg'),
(106, 'The Super Mario Bros. Movie', '05-04-2023', 'Aaron Horvath, Michael Jelenic', '92m', 'While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.', '7,7/10', 'en', 'http://localhost:3000/poster_228e62f2-339f-4dd7-9e64-1951fbce9d9b.jpg'),
(107, 'The Immortal War: Rebirth', '02-11-2021', 'Joe Lujan', '84m', 'Rebirth takes place during the early brutal stages of Dominion Industries. In this story watch Olive and other deviants undergo a series of deadly experiments lead by Laurie Harvey and her team.', '3.5/10', 'en', 'http://localhost:3000/poster_72678612-374b-4499-bacd-18f731859070.jpg'),
(108, 'The Hunger Games: The Ballad of Songbirds & Snakes', '15-11-2023', 'Francis Lawrence', '158m', '64 years before he becomes the tyrannical president of Panem, Coriolanus Snow sees a chance for a change in fortunes when he mentors Lucy Gray Baird, the female tribute from District 12.', '7,3/10', 'en', 'http://localhost:3000/poster_6f2db8ae-016c-4c00-9d97-154dda69fc19.jpg'),
(109, 'Napoleon', '22-11-2023', 'Ridley Scott', '158m', 'An epic that details the checkered rise and fall of French Emperor Napoleon Bonaparte and his relentless journey to power through the prism of his addictive, volatile relationship with his wife, Josephine.', '6,4/10', 'en', 'http://localhost:3000/poster_5591b61e-9d45-4683-a2c1-9e375e212bef.jpg'),
(110, 'Inferno', '25-09-1999', 'John G. Avildsen', '95m', 'Eddie Lomax (Jean-Claude Van Damme) is a drifter who has been in a suicidal funk since the death of his close friend Johnny (Danny Trejo). Riding his motorcycle into a small desert town where Johnny once lived, Lomax is confronted by a gang of toughs, who beat him and steal his bike. However, Lomax is not a man to take an injustice lying down, and soon he begins exacting a violent revenge on the men who stole his motorcycle, with local handyman Jubal Early (Pat Morita) lending a hand and several area ladies offering aid and comfort.', '6.1/10', 'en', 'http://localhost:3000/poster_792ed5fa-280c-4713-a943-363f9ef4eadc.jpg'),
(111, 'Blue Beetle', '16-08-2023', 'Angel Manuel Soto', '127m', 'Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab.', '6,9/10', 'en', 'http://localhost:3000/poster_cf42381a-eb76-4bda-bc40-71d345def9c6.jpg'),
(112, 'The Marvels', '08-11-2023', 'Nia DaCosta', '105m', 'Carol Danvers, aka Captain Marvel, has reclaimed her identity from the tyrannical Kree and taken revenge on the Supreme Intelligence. But unintended consequences see Carol shouldering the burden of a destabilized universe. When her duties send her to an anomalous wormhole linked to a Kree revolutionary, her powers become entangled with that of Jersey City super-fan Kamala Khan, aka Ms. Marvel, and Carol\'s estranged niece, now S.A.B.E.R. astronaut Captain Monica Rambeau. Together, this unlikely trio must team up and learn to work in concert to save the universe.', '6,6/10', 'en', 'http://localhost:3000/poster_396e87e9-6413-4ddd-8c40-b3b1fc43107d.jpg'),
(114, 'Saw X', '26-09-2023', 'Kevin Greutert', '118m', 'Between the events of \'Saw\' and \'Saw II\', a sick and desperate John Kramer travels to Mexico for a risky and experimental medical procedure in hopes of a miracle cure for his cancer, only to discover the entire operation is a scam to defraud the most vulnerable. Armed with a newfound purpose, the infamous serial killer returns to his work, turning the tables on the con artists in his signature visceral way through devious, deranged, and ingenious traps.', '7,4/10', 'en', 'http://localhost:3000/poster_1519340d-4c3d-42f1-99e3-30c6b108ea78.png'),
(115, 'Mega Lightning', '05-12-2022', 'David Gregory', '90m', 'After a violent thunderstorm scares a house party, the guests flee to a nearby home for shelter.. only to discover, a more sinister hand is at play.. Now, they can\'t escape the strangers home due to the thunderstorm, but they can\'t stay inside due to the danger that follows them.', '4,4/10', 'en', 'http://localhost:3000/poster_b98f8320-ec5f-4b3f-b2c0-1cd9d9c0ba61.jpg'),
(116, 'Transformers: Rise of the Beasts', '06-06-2023', 'Stephen Caple Jr.', '127m', 'When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.', '7,5/10', 'en', 'http://localhost:3000/poster_6feef97d-56cc-4977-8302-0cd58d49e879.jpg'),
(117, 'Meg 2: The Trench', '02-08-2023', 'Ben Wheatley', '116m', 'An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.', '6,7/10', 'en', 'http://localhost:3000/poster_897bb3ca-7a07-4fb8-a766-9dd8acea71a3.jpg'),
(118, 'जवान (Jawan)', '07-09-2023', 'Atlee Kumar', '165m', 'An emotional journey of a prison warden, driven by a personal vendetta while keeping up to a promise made years ago, recruits inmates to commit outrageous crimes that shed light on corruption and injustice, in an attempt to get even with his past,  and that leads him to an unexpected reunion', '7,3/10', 'hi', 'http://localhost:3000/poster_4b1b4c46-84a8-4297-b31f-9a80461db254.jpg'),
(119, 'Cobweb', '19-07-2023', 'Samuel Bodin', '86m', 'Eight year old Peter is plagued by a mysterious, constant tapping from inside his bedroom wall—one that his parents insist is all in his imagination. As Peter\'s fear intensifies, he believes that his parents could be hiding a terrible, dangerous secret and questions their trustworthiness.', '6,8/10', 'en', 'http://localhost:3000/poster_60f618fd-14e8-4a63-8f0b-c5a0a070667f.jpg'),
(120, 'Elemental', '14-06-2023', 'Peter Sohn', '102m', 'In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.', '7,7/10', 'en', 'http://localhost:3000/poster_fc6898f2-c10a-4b0b-a811-ae342eec3719.jpg'),
(121, 'Gran Turismo', '09-08-2023', 'Neill Blomkamp', '135m', 'The ultimate wish-fulfillment tale of a teenage Gran Turismo player whose gaming skills won him a series of Nissan competitions to become an actual professional racecar driver.', '8/10', 'en', 'http://localhost:3000/poster_f6b0e74c-c413-498a-84fc-fecbc51a4d37.jpg'),
(122, 'The Survivor', '07-04-2022', 'Barry Levinson', '129m', 'Harry Haft is a boxer who fought fellow prisoners in the concentration camps to survive. Haunted by the memories and his guilt, he attempts to use high-profile fights against boxing legends like Rocky Marciano as a way to find his first love again.', '7,2/10', 'en', 'http://localhost:3000/poster_10c3a8b1-310e-48ee-b5ff-6cfe96d10c46.jpeg'),
(123, 'Indiana Jones and the Dial of Destiny', '28-06-2023', 'James Mangold', '142m', 'Finding himself in a new era, and approaching retirement, Indy wrestles with fitting into a world that seems to have outgrown him. But as the tentacles of an all-too-familiar evil return in the form of an old rival, Indy must don his hat and pick up his whip once more to make sure an ancient and powerful artifact doesn\'t fall into the wrong hands.', '6,7/10', 'en', 'http://localhost:3000/poster_fef245dc-53f4-44a3-9ea7-d09bbab10749.jpg'),
(124, 'Retribution', '23-08-2023', 'Nimród Antal', '91m', 'When a mysterious caller puts a bomb under his car seat, Matt Turner begins a high-speed chase across the city to complete a specific series of tasks- all with his kids trapped in the back seat.', '7/10', 'en', 'http://localhost:3000/poster_09fa3aac-2571-4029-8dc9-f23c678895d8.jpg'),
(125, 'Freelance', '05-10-2023', 'Pierre Morel', '109m', 'An ex-special forces operative takes a job to provide security for a journalist as she interviews a dictator, but a military coup breaks out in the middle of the interview, they are forced to escape into the jungle where they must survive.', '6,5/10', 'en', 'http://localhost:3000/poster_fcb634fd-32cb-42ad-8e19-18470022725c.jpg'),
(126, 'Wish', '13-11-2023', 'Fawn Veerasunthorn, Chris Buck', '95m', 'Asha, a sharp-witted idealist, makes a wish so powerful that it is answered by a cosmic force - a little ball of boundless energy called Star. Together, Asha and Star confront a most formidable foe - the ruler of Rosas, King Magnifico - to save her community and prove that when the will of one courageous human connects with the magic of the stars, wondrous things can happen.', '6,6/10', 'en', 'http://localhost:3000/poster_12e438bc-724c-4ed0-ae08-a7402ad7bbb8.jpg'),
(127, 'Barbie', '17-07-2023', 'Greta Gerwig', '114m', 'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.', '7,2/10', 'en', 'http://localhost:3000/poster_08f0cf4d-d76c-4660-b1d0-f1ea14746520.jpg'),
(128, 'PAW Patrol: The Mighty Movie', '21-09-2023', 'Cal Brunker', '95m', 'A magical meteor crash lands in Adventure City and gives the PAW Patrol pups superpowers, transforming them into The Mighty Pups', '6,9/10', 'en', 'http://localhost:3000/poster_5ce4cb00-19ca-432e-8e95-0cb68d4e9f8a.png'),
(129, 'Spider-Man: Across the Spider-Verse', '31-05-2023', 'Joaquim Dos Santos, Kemp Powers, Justin K. Thompson', '140m', 'After reuniting with Gwen Stacy, Brooklyn\'s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse\'s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.', '8,4/10', 'en', 'http://localhost:3000/poster_f349ad64-6156-4610-9c97-adf9019fd699.jpg'),
(130, 'How the Grinch Stole Christmas', '17-11-2000', 'Ron Howard', '115m', 'The Grinch decides to rob Whoville of Christmas - but a dash of kindness from little Cindy Lou Who and her family may be enough to melt his heart...', '6,8/10', 'en', 'http://localhost:3000/poster_0c00824b-3a3e-4947-b4ee-22a353cb51b4.jpg'),
(131, 'ドラゴンボール 魔訶不思議大冒険 (Dragon Ball: Mystical Adventure)', '09-07-1988', 'Kazuhisa Takenouchi', '48', 'Master Roshi has succeeded at the one mission he valued most: to train Goku and Krillin to become ultimate fighters. So, he arranges for them to test their mettle at a competition hosted by Emperor Chiaotzu. Not everyone\'s playing by the rules, however, as a member of the ruler\'s household schemes to use the Dragonballs to extort money and power from the royal.', '6,8', 'ja', 'http://localhost:3000/poster_23e0af8f-ce05-4eb2-8d1b-69e63a41d6aa.jpg'),
(132, 'The Nun II', '06-09-2023', 'Michael Chaves', '110m', 'In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.', '6,9/10', 'en', 'http://localhost:3000/poster_e8666927-6507-4cec-a18a-2ee51e221ab0.jpg'),
(133, 'ゴジラ-1.0 (Godzilla Minus One)', '03-11-2023', 'Takashi Yamazaki', '125m', 'In postwar Japan, a new terror rises. Will the devastated people be able to survive... let alone fight back?', '8,4/10', 'ja', 'http://localhost:3000/poster_89e395b4-a4f1-486f-8b28-23f91a4ae32a.jpg'),
(134, 'Come Out Fighting', '19-05-2023', 'Steven Luke', '86m', 'In WWII, a squad of U.S. African-American soldiers are sent on a rescue mission behind enemy lines to locate their lost commanding officer and a downed fighter pilot.', '4,7/10', 'en', 'http://localhost:3000/poster_64c0a641-3391-4a9b-ad64-bdfe04486ea7.jpg'),
(135, 'The Exorcist: Believer', '04-10-2023', 'David Gordon Green', '111m', 'When two girls disappear into the woods and return three days later with no memory of what happened to them, the father of one girl seeks out Chris MacNeil, who\'s been forever altered by what happened to her daughter fifty years ago.', '6,2/10', 'en', 'http://localhost:3000/poster_57f5b44c-e5f1-4d44-a916-e23858fe4868.jpg'),
(136, 'Spider-Man: No Way Home', '15-12-2021', 'Jon Watts', '148m', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', '8/10', 'en', 'http://localhost:3000/poster_f5db6bae-c9d2-409e-9adb-a84869970210.jpeg'),
(137, 'Avatar: The Way of Water', '14-12-2022', 'James Cameron', '192m', 'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', '7,7/10', 'en', 'http://localhost:3000/poster_c8be8d77-f899-4a4b-bad0-0bb7d8769b08.webp'),
(138, 'The Mercenary', '07-01-2020', 'Jesse V. Johnson', '91m', 'When a mission in South America goes wrong a mercenary is left for dead, but he is nursed back to health and reborn with a new outlook on life. But his peaceful days are short-lived when mercenaries he used to work with cross his path again and he is forced to revisit and face his own demons.', '6,3/10', 'en', 'http://localhost:3000/poster_5c674e5d-4340-407e-94c9-00cc852daad9.jpg'),
(139, 'The Velveteen Rabbit', '21-11-2023', 'Jennifer Perrott, Ricardo Thiele', '44m', 'When seven-year-old William receives a new favorite toy for Christmas, he discovers a lifelong friend and unlocks a world of magic.', '7,4/10', 'en', 'http://localhost:3000/poster_04e5656c-9649-4476-991b-bd7f82a02e6b.jpg'),
(140, 'Sound of Freedom', '03-07-2023', 'Alejandro Gómez Monteverde', '135m', 'The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.', '8,1/10', 'en', 'http://localhost:3000/poster_7a5339de-f150-402a-81ed-22b0a12c307f.webp'),
(141, 'John Wick: Chapter 4', '22-03-2023', 'Chad Stahelski', '169m', 'With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', '7,8/10', 'en', 'http://localhost:3000/poster_08629f25-d77b-457d-a060-21ec4d096d79.jpg'),
(142, 'The Grinch', '08-11-2018', 'Scott Mosier, Yarrow Cheney', '90m', 'The Grinch hatches a scheme to ruin Christmas when the residents of Whoville plan their annual holiday celebration.', '6,8/10', 'en', 'http://localhost:3000/poster_faef7442-db22-49d3-9314-053133e9efc7.jpg'),
(143, 'Talk To Me', '26-07-2023', 'Danny Philippou, Michael Philippou', '95m', 'When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.', '7,2/10', 'en', 'http://localhost:3000/poster_5c530bc9-d601-4ff4-9e28-27c7e04f7279.jpg'),
(144, 'The Flash', '13-06-2023', 'Andrés Muschietti', '144m', 'When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry\'s only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?', '6,8/10', 'en', 'http://localhost:3000/poster_1a14559e-bcfc-460d-a47d-30275a2049ce.jpg'),
(145, 'Babylon A.D.', '20-08-2008', 'Mathieu Kassovitz', '101m', 'A veteran-turned-mercenary is hired to take a young woman with a secret from post-apocalyptic Eastern Europe to New York City.', '5,6/10', 'en', 'http://localhost:3000/poster_acc6420e-d95a-40c7-a172-a88650dd2609.jpg'),
(146, 'Family Switch', '30-11-2023', 'McG', '105m', 'When the Walker family members switch bodies with each other during a rare planetary alignment, their hilarious journey to find their way back to normal will bring them closer together than they ever thought possible.', '6,3/10', 'en', 'http://localhost:3000/poster_b5e514cc-838c-4c99-b37e-d3e4be99dcf2.jpg'),
(147, 'Culpa mía', '08-06-2023', '117m', '117m', 'Noah must leave her city, boyfriend, and friends to move into William Leister\'s mansion, the flashy and wealthy husband of her mother Rafaela. As a proud and independent 17 year old, Noah resists living in a mansion surrounded by luxury. However, it is there where she meets Nick, her new stepbrother, and the clash of their strong personalities becomes evident from the very beginning.', '8,1/10', 'es', 'http://localhost:3000/poster_5db0a287-fe3b-4896-bf84-c944ceb2073e.webp'),
(148, 'Uri: The Surgical Strike', '11-01-2019', 'Aditya Dhar', '138m', 'Following the roguish terrorist attacks at Uri Army Base camp in Kashmir, India takes the fight to the enemy, in its most successful covert operation till date with one and only one objective of avenging their fallen heroes.', '7,2/10', 'hi', 'http://localhost:3000/poster_26e11129-0096-479c-8d8b-6a5dc83c5d8a.jpg'),
(149, 'The Mongolian Connection', '12-06-2019', 'Drew Thomas', '90m', 'Working undercover on a human trafficking bust, maverick FBI agent Wade Dalton (Kaiwi Lyman), captures Serick Ibrayev (Sanjar Madi), a mysterious operative from the Mongolian underworld. With time running out, Wade must escort Serik back to Mongolia, and team up with hard-boiled police detective Ganzorig (Amra Baljinnyam), to deliver Serik to court to testify against a crime Syndicate that will do anything to stop them.', '6,5/10', 'en', 'http://localhost:3000/poster_a2395d4e-ab49-4c94-8a10-65e32d6ce153.jpg'),
(150, 'Мавка: Лісова пісня (Mavka: The Forest Song)', '02-03-2023', 'Oleksandra Ruban, Oleg Malamuzh', '90m', 'Forest soul Mavka faces an impossible choice between her heart and her duty as guardian to the Heart of the Forest, when she falls in love with the talented young human musician Lukas.', '7,3/10', 'uk', 'http://localhost:3000/poster_4e8ecf0c-c7bd-4da3-806e-b0f8d6a69776.png'),
(151, '독전 2 (Believer 2)', '05-10-2023', 'Baik', '116m', 'A determined detective continues his search for the truth behind Asia\'s largest drug organization and its elusive boss he has unfinished business with.', '7,1/10', 'ko', 'http://localhost:3000/poster_de1c9408-a0d7-44d2-b5e9-179006972c1f.jpg'),
(152, 'Muzzle', '29-09-2023', 'John Stalberg Jr.', '100m', 'LAPD K-9 officer Jake Rosser has just witnessed the shocking murder of his dedicated partner by a mysterious assailant. As he investigates the shooter\'s identity, he uncovers a vast conspiracy that has a chokehold on the city in this thrilling journey through the tangled streets of Los Angeles and the corrupt bureaucracy of the LAPD.', '6,7/10', 'en', 'http://localhost:3000/poster_ad0b01be-936c-4d72-9fc8-01433e23d706.jpg'),
(153, 'Guardians of the Galaxy Vol. 3', '03-05-2023', 'James Gunn', '149m', 'Peter Quill, still reeling from the loss of Gamora, must rally his team around him to defend the universe along with protecting one of their own. A mission that, if not completed successfully, could quite possibly lead to the end of the Guardians as we know them.', '8/10', 'en', 'http://localhost:3000/poster_510a2cf1-cf94-4597-8255-5623c52f769b.jpg'),
(163, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie_genres`
--

CREATE TABLE `movie_genres` (
  `movie_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `movie_genres`
--

INSERT INTO `movie_genres` (`movie_id`, `genres_id`) VALUES
(90, 1),
(90, 12),
(92, 2),
(92, 3),
(92, 7),
(93, 1),
(93, 5),
(93, 10),
(94, 1),
(95, 1),
(98, 1),
(98, 4),
(99, 6),
(99, 11),
(100, 1),
(100, 2),
(100, 8),
(101, 1),
(101, 6),
(101, 12),
(102, 2),
(102, 6),
(102, 11),
(103, 1),
(103, 2),
(103, 8),
(104, 5),
(104, 13),
(105, 1),
(105, 6),
(105, 12),
(106, 7),
(107, 2),
(107, 6),
(107, 11),
(108, 5),
(108, 13),
(109, 1),
(109, 2),
(109, 8),
(110, 7),
(111, 1),
(111, 2),
(111, 8),
(112, 1),
(112, 2),
(112, 8),
(114, 5),
(114, 13),
(115, 5),
(115, 13),
(116, 1),
(116, 2),
(116, 8),
(117, 2),
(117, 6),
(117, 11),
(118, 2),
(118, 6),
(118, 11),
(119, 1),
(119, 6),
(119, 12),
(120, 7),
(121, 1),
(121, 6),
(121, 12),
(122, 2),
(122, 6),
(122, 11),
(123, 1),
(123, 2),
(123, 8),
(124, 5),
(124, 13),
(125, 2),
(125, 6),
(125, 11),
(126, 5),
(126, 13),
(127, 2),
(127, 6),
(127, 11),
(128, 1),
(128, 2),
(128, 8),
(129, 1),
(129, 6),
(129, 12),
(130, 7),
(131, 2),
(131, 6),
(131, 11),
(132, 5),
(132, 13),
(133, 2),
(133, 6),
(133, 11),
(134, 1),
(134, 6),
(134, 12),
(135, 5),
(135, 13),
(136, 2),
(136, 6),
(136, 11),
(137, 1),
(137, 2),
(137, 8),
(138, 1),
(138, 6),
(138, 12),
(139, 1),
(139, 6),
(139, 12),
(140, 1),
(140, 2),
(140, 8),
(141, 1),
(141, 2),
(141, 8),
(142, 7),
(143, 5),
(143, 13),
(144, 2),
(144, 6),
(144, 11),
(145, 1),
(145, 6),
(145, 12),
(146, 1),
(146, 2),
(146, 8),
(147, 2),
(147, 6),
(147, 11),
(148, 2),
(148, 7),
(149, 1),
(149, 6),
(149, 12),
(150, 2),
(150, 6),
(150, 11),
(151, 2),
(151, 6),
(151, 11),
(152, 5),
(152, 13),
(153, 1),
(153, 2),
(153, 8),
(153, 11),
(163, 6),
(163, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fullName`, `email`, `pass`) VALUES
(1, 'Kev Arevalo', 'kev@dev.com', 'thebestpassword'),
(2, 'pepito flores', 'kev@dev.com', '$2b$10$yLHIv.JKmhSFEP4/HDYoPOOKQmkgOprgpAA8Mad8XY6AdU4P0HqsO'),
(3, 'holaseñor señor', 'kevin@gmail.com', '$2b$10$scYsNKOfV007X8smuvhvQumEdb0MHGK/eCG8zXxeJi5qTCbJULim6'),
(4, 'Kevsho', 'kevsho@dev.com', '$2b$10$uZ.I3SpMb9SI562L/Ntp3ej1QwfXC/QDTlfVMdNASYSwCXky6Xcc.'),
(5, 'Kevshoa', 'kevshvo@dev.com', '$2b$10$Ku55SCp8yyjbOpuEwYkzneRGDBAEWmSkCP0Mua9YuIZmc3l5zpHT6'),
(6, 'Kevshox', 'kevshvos@dev.com', '$2b$10$kPZRwnWZd/oYalbBCX.BouEzIDmP46Hv33.wzSGfCo3UNULIWtuom'),
(7, 'Kevshox', 'kevshvos@dev.com', '$2b$10$eqZNGpQsLuvaadY0M9.ZHOYE0hJajbyYJaK2mXgXEvwm4vOFyPeW.'),
(8, 'Kevshox', 'kevshvos@dev.com', '$2b$10$9lkdF1U9/./V3URHtpbLY.pXgDjmXog6gYZNOroFt83CV58NTbCAq'),
(9, 'Kevshox', 'kevshvos@dev.com', '$2b$10$DsfOQYJHpA3aNra8ILoo0.qD5Lvtd9jq.C/zfknezI7oGkEdNVM8S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`movie_id`,`genres_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
