/*Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas*/
SELECT COUNT(*), DEPARTAMENTO 
FROM funcionarios
GROUP BY DEPARTAMENTO
ORDER BY 1;

FILMES = 21  ROUPAS= 53 total= 74

SELECT NOME, FROM FUNCIONARIOS
WHERE DEPARTAMENTO='ROUPAS'
OR DEPARTAMENTO='FILMES';


RESULTADO = 74 REGISTROS
------------+
| NOME       |
+------------+
| Black      |
| Price      |
| Hawkins    |
| Oliver     |
| Cunningham |
| Perkins    |
| Freeman    |
| Nguyen     |
| Washington |
| Fisher     |
| Ferguson   |
| Watson     |
| Day        |
| Gonzales   |
| Rose       |
| Snyder     |
| Gordon     |
| Richardson |
| Cooper     |
| Berry      |
| Arnold     |
| Jordan     |
| Wright     |
| Spencer    |
| Gonzales   |
| Young      |
| White      |
| Marshall   |
| Ortiz      |
| Roberts    |
| Boyd       |
| Gray       |
| Little     |
| Griffin    |
| Gomez      |
| Williamson |
| Richards   |
| Kelley     |
| Kim        |
| James      |
| Taylor     |
| Lynch      |
| Arnold     |
| Greene     |
| Alexander  |
| Phillips   |
| Warren     |
| Reid       |
| Price      |
| Clark      |
| Roberts    |
| Hill       |
| Johnson    |
| Murray     |
| Richards   |
| Elliott    |
| Elliott    |
| Olson      |
| Weaver     |
| James      |
| Sims       |
| Gomez      |
| Knight     |
| Rice       |
| Knight     |
| Roberts    |
| Price      |
| Kelley     |
| Bishop     |
| Rice       |
| Marshall   |
| Burton     |
| Richards   |
| Walker     |
+------------+
74 rows in set (0.00 sec)

-O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. 


SELECT DEPARTAMENTO, SEXO, COUNT(*) FROM FUNCIONARIOS
WHERE SEXO='FEMININO'
GROUP BY DEPARTAMENTO,SEXO;

+---------------+----------+----------+
| DEPARTAMENTO  | SEXO     | COUNT(*) |
+---------------+----------+----------+
| Alimentícios  | Feminino |       24 |
| Automotivo    | Feminino |       20 |
| Bebês         | Feminino |       19 |
| Beleza        | Feminino |       28 |
| Books         | Feminino |       24 |
| Brinquedos    | Feminino |       17 |
| Calçados      | Feminino |       18 |
| Computadores  | Feminino |       26 |
| Crianças      | Feminino |       21 |
| Eletronicos   | Feminino |       23 |
| Esporte       | Feminino |       22 |
| Ferramentas   | Feminino |       21 |
| Filmes        | Feminino |        9 |
| Games         | Feminino |       25 |
| Industrial    | Feminino |       18 |
| Jardim        | Feminino |       23 |
| Joalheria     | Feminino |       20 |
| Lar           | Feminino |       32 |
| Música        | Feminino |       19 |
| Outdoors      | Feminino |       28 |
| Roupas        | Feminino |       29 |
| Saúde         | Feminino |       25 |
+---------------+----------+----------+

FILMES= 9 E LAR=32 TOTAL= 41 REGISTROS

SELECT NOME,EMAIL,SEXO,DEPARTAMENTO FROM FUNCIONARIOS
WHERE SEXO='FEMININO' AND DEPARTAMENTO='LAR'
OR SEXO='FEMININO' AND DEPARTAMENTO='FILMES'
GROUP BY NOME,EMAIL,SEXO,DEPARTAMENTO;


+------------+-----------------------------------+----------+--------------+
| NOME       | EMAIL                             | SEXO     | DEPARTAMENTO |
+------------+-----------------------------------+----------+--------------+
| Berry      | jberrybr@discuz.net               | Feminino | Lar          |
| Bishop     | kbishoppi@ovh.net                 | Feminino | Filmes       |
| Burke      | eburkel4@newsvine.com             | Feminino | Lar          |
| Campbell   | pcampbell9b@istockphoto.com       | Feminino | Lar          |
| Carpenter  | rcarpenterov@pagesperso-orange.fr | Feminino | Lar          |
| Chapman    | schapmanb6@nhs.uk                 | Feminino | Lar          |
| Cooper     | icooper85@w3.org                  | Feminino | Filmes       |
| Cooper     | scooperb1@cmu.edu                 | Feminino | Lar          |
| Cox        | ncoxe1@1und1.de                   | Feminino | Lar          |
| Crawford   | mcrawford8u@parallels.com         | Feminino | Lar          |
| Cruz       | rcruz10@blinklist.com             | Feminino | Lar          |
| Diaz       | sdiaz64@disqus.com                | Feminino | Lar          |
| Evans      | aevansgg@wordpress.org            | Feminino | Lar          |
| Ferguson   | gfergusonka@geocities.jp          | Feminino | Lar          |
| Freeman    | gfreeman74@bloomberg.com          | Feminino | Lar          |
| Gibson     | bgibson8o@pen.io                  | Feminino | Lar          |
| Gilbert    | hgilbert29@xrea.com               | Feminino | Lar          |
| Gomez      | tgomezm8@ucoz.ru                  | Feminino | Filmes       |
| Gonzales   | jgonzales9s@sourceforge.net       | Feminino | Lar          |
| Gonzales   | rgonzaleskv@meetup.com            | Feminino | Lar          |
| Gordon     | egordon7k@yellowbook.com          | Feminino | Filmes       |
| Jones      | djonesq1@tamu.edu                 | Feminino | Lar          |
| Knight     | dknightm9@quantcast.com           | Feminino | Filmes       |
| Little     | dlittlecp@usatoday.com            | Feminino | Filmes       |
| Mendoza    | rmendozajl@g.co                   | Feminino | Lar          |
| Montgomery | rmontgomery3n@chicagotribune.com  | Feminino | Lar          |
| Morales    | dmoralesbl@mit.edu                | Feminino | Lar          |
| Morris     | rmorriseu@yahoo.com               | Feminino | Lar          |
| Murray     | cmurraylx@icio.us                 | Feminino | Lar          |
| Myers      | dmyersfq@amazon.com               | Feminino | Lar          |
| Olson      | folsong9@acquirethisname.com      | Feminino | Lar          |
| Owens      | cowensq@shareasale.com            | Feminino | Lar          |
| Payne      | jpayneal@comsenz.com              | Feminino | Lar          |
| Porter     | vporterp@yelp.com                 | Feminino | Lar          |
| Rice       | jricemp@columbia.edu              | Feminino | Filmes       |
| Sanchez    | tsanchezr7@lycos.com              | Feminino | Lar          |
| Walker     | kwalkerf2@vinaora.com             | Feminino | Lar          |
| Walker     | swalkerr0@sina.com.cn             | Feminino | Filmes       |
| Warren     | awarrenht@addthis.com             | Feminino | Filmes       |
| Washington | jwashington21@squidoo.com         | Feminino | Lar          |
| Williams   | swilliamsbc@bing.com              | Feminino | Lar          |
+------------+-----------------------------------+----------+--------------+
41 rows in set (0.00 sec)


--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT SEXO,COUNT(*) FROM FUNCIONARIOS
WHERE SEXO='MASCULINO';

| SEXO      | COUNT(*) |
+-----------+----------+
| Masculino |      483 |

SELECT COUNT(*) FROM FUNCIONARIOS
WHERE DEPARTAMENTO='JARDIM';

+----------+
| COUNT(*) |
+----------+
|       47 |

SELECT COUNT(*) FROM FUNCIONARIOS
WHERE DEPARTAMENTO='JARDIM'
AND SEXO='MASCULINO';

+----------+
| COUNT(*) |
+----------+
|       24 |
+----------+

NUMERO TOTAL DE REGISTROS= 530-24 = 506

SELECT NOME,SEXO,DEPARTAMENTO FROM FUNCIONARIOS
WHERE SEXO='MASCULINO'
OR DEPARTAMENTO='JARDIM';
+------------+-----------+---------------+
| NOME       | SEXO      | DEPARTAMENTO  |
+------------+-----------+---------------+
| Armstrong  | Masculino | Esporte       |
| Carr       | Masculino | Automotivo    |
| Phillips   | Masculino | Ferramentas   |
| Williamson | Masculino | Computadores  |
| James      | Masculino | Joalheria     |
| Black      | Masculino | Roupas        |
| Schmidt    | Masculino | Bebês         |
| Nguyen     | Masculino | Lar           |
| Day        | Masculino | Eletronicos   |
| Alexander  | Masculino | Automotivo    |
| Kelly      | Masculino | Jardim        |
| Stephens   | Masculino | Brinquedos    |
| Weaver     | Masculino | Beleza        |
| Torres     | Masculino | Games         |
| Bradley    | Masculino | Outdoors      |
| Williamson | Feminino  | Jardim        |
| Kennedy    | Masculino | Bebês         |
| Watkins    | Masculino | Computadores  |
| Ferguson   | Masculino | Esporte       |
| Nguyen     | Masculino | Automotivo    |
| Lawrence   | Masculino | Outdoors      |
| Johnson    | Masculino | Computadores  |
| Crawford   | Masculino | Lar           |
| Dixon      | Masculino | Bebês         |
| Coleman    | Masculino | Computadores  |
| Ross       | Masculino | Automotivo    |
| Watkins    | Masculino | Jardim        |
| Baker      | Masculino | Games         |
| Lane       | Masculino | Outdoors      |
| Boyd       | Masculino | Automotivo    |
| Cooper     | Masculino | Jardim        |
| Rodriguez  | Masculino | Beleza        |
| Coleman    | Masculino | Beleza        |
| Stewart    | Masculino | Brinquedos    |
| Vasquez    | Masculino | Bebês         |
| Palmer     | Masculino | Esporte       |
| Daniels    | Masculino | Ferramentas   |
| Cunningham | Masculino | Roupas        |
| Little     | Masculino | Música        |
| Welch      | Masculino | Outdoors      |
| George     | Masculino | Industrial    |
| Hughes     | Masculino | Crianças      |
| Hamilton   | Masculino | Música        |
| Webb       | Masculino | Saúde         |
| Thomas     | Masculino | Games         |
| Wallace    | Masculino | Bebês         |
| Mason      | Masculino | Beleza        |
| Bell       | Masculino | Esporte       |
| Rivera     | Masculino | Games         |
| Matthews   | Masculino | Saúde         |
| Reed       | Masculino | Automotivo    |
| Adams      | Masculino | Alimentícios  |
| Young      | Masculino | Calçados      |
| Gardner    | Masculino | Crianças      |
| Perkins    | Masculino | Roupas        |
| Howell     | Masculino | Books         |
| Sims       | Masculino | Alimentícios  |
| Wells      | Masculino | Industrial    |
| Fox        | Masculino | Automotivo    |
| Wagner     | Masculino | Bebês         |
| Griffin    | Feminino  | Jardim        |
| Burton     | Masculino | Calçados      |
| Gibson     | Masculino | Computadores  |
| Kelley     | Masculino | Calçados      |
| Martinez   | Masculino | Games         |
| Montgomery | Masculino | Eletronicos   |
| Hart       | Masculino | Joalheria     |
| Wheeler    | Masculino | Computadores  |
| Williamson | Masculino | Games         |
| Burton     | Masculino | Industrial    |
| Gutierrez  | Masculino | Ferramentas   |
| Diaz       | Masculino | Saúde         |
| Larson     | Masculino | Books         |
| Roberts    | Masculino | Música        |
| Carroll    | Masculino | Lar           |
| Robinson   | Masculino | Books         |
| Hayes      | Masculino | Industrial    |
| Henry      | Masculino | Calçados      |
| Chavez     | Masculino | Jardim        |
| Harvey     | Masculino | Ferramentas   |
| Cruz       | Masculino | Saúde         |
| Robertson  | Masculino | Jardim        |
| Lawson     | Masculino | Automotivo    |
| Meyer      | Masculino | Industrial    |
| Lopez      | Masculino | Outdoors      |
| Martinez   | Masculino | Eletronicos   |
| Fields     | Masculino | Books         |
| Daniels    | Masculino | Alimentícios  |
| Fisher     | Masculino | Roupas        |
| Reynolds   | Feminino  | Jardim        |
| Williamson | Masculino | Outdoors      |
| Shaw       | Feminino  | Jardim        |
| Rose       | Masculino | Alimentícios  |
| Anderson   | Masculino | Lar           |
| Morales    | Masculino | Games         |
| Wagner     | Masculino | Brinquedos    |
| Meyer      | Masculino | Calçados      |
| Jacobs     | Masculino | Outdoors      |
| Andrews    | Masculino | Lar           |
| Riley      | Masculino | Brinquedos    |
| Peterson   | Masculino | Books         |
| Thomas     | Masculino | Ferramentas   |
| West       | Masculino | Computadores  |
| Stevens    | Masculino | Games         |
| Howard     | Masculino | Joalheria     |
| Boyd       | Masculino | Lar           |
| Ross       | Masculino | Games         |
| Harrison   | Masculino | Calçados      |
| Gibson     | Masculino | Computadores  |
| Gonzalez   | Masculino | Saúde         |
| Washington | Masculino | Outdoors      |
| Gonzalez   | Masculino | Eletronicos   |
| Griffin    | Masculino | Books         |
| Tucker     | Masculino | Joalheria     |
| Gonzales   | Masculino | Filmes        |
| Spencer    | Masculino | Games         |
| Robinson   | Masculino | Saúde         |
| Gutierrez  | Masculino | Lar           |
| Romero     | Masculino | Brinquedos    |
| White      | Masculino | Jardim        |
| Miller     | Masculino | Crianças      |
| Fowler     | Masculino | Books         |
| Johnston   | Masculino | Ferramentas   |
| Schmidt    | Masculino | Automotivo    |
| Fuller     | Masculino | Saúde         |
| Snyder     | Masculino | Filmes        |
| Sanders    | Masculino | Industrial    |
| Fox        | Masculino | Computadores  |
| Burke      | Masculino | Joalheria     |
| Murphy     | Masculino | Lar           |
| Cunningham | Masculino | Outdoors      |
| Banks      | Masculino | Música        |
| Bennett    | Masculino | Jardim        |
| Ortiz      | Masculino | Jardim        |
| Clark      | Masculino | Jardim        |
| Chavez     | Masculino | Crianças      |
| Holmes     | Masculino | Música        |
| Hunter     | Masculino | Jardim        |
| Moore      | Masculino | Eletronicos   |
| Sanders    | Masculino | Lar           |
| Carter     | Masculino | Alimentícios  |
| Edwards    | Masculino | Crianças      |
| Harrison   | Masculino | Calçados      |
| Berry      | Masculino | Roupas        |
| Arnold     | Masculino | Roupas        |
| Myers      | Masculino | Alimentícios  |
| West       | Masculino | Eletronicos   |
| Johnson    | Masculino | Eletronicos   |
| Sanders    | Masculino | Bebês         |
| Cunningham | Feminino  | Jardim        |
| Riley      | Masculino | Esporte       |
| Ray        | Masculino | Books         |
| Lane       | Masculino | Calçados      |
| Elliott    | Masculino | Computadores  |
| Smith      | Masculino | Games         |
| Peters     | Masculino | Esporte       |
| Tucker     | Masculino | Alimentícios  |
| Moore      | Masculino | Computadores  |
| Gilbert    | Masculino | Jardim        |
| Marshall   | Masculino | Computadores  |
| Robinson   | Masculino | Eletronicos   |
| Edwards    | Masculino | Automotivo    |
| Dunn       | Masculino | Industrial    |
| Garza      | Masculino | Industrial    |
| Mills      | Masculino | Industrial    |
| Spencer    | Masculino | Filmes        |
| Williams   | Masculino | Eletronicos   |
| Ellis      | Masculino | Lar           |
| Owens      | Masculino | Books         |
| Perez      | Masculino | Música        |
| Crawford   | Masculino | Jardim        |
| Hawkins    | Masculino | Eletronicos   |
| Moreno     | Masculino | Lar           |
| Hudson     | Masculino | Outdoors      |
| Murray     | Masculino | Esporte       |
| Reynolds   | Masculino | Outdoors      |
| Gutierrez  | Masculino | Automotivo    |
| Tucker     | Masculino | Bebês         |
| Rice       | Feminino  | Jardim        |
| Burke      | Masculino | Alimentícios  |
| Hall       | Masculino | Automotivo    |
| Ryan       | Masculino | Saúde         |
| Gonzales   | Masculino | Roupas        |
| Jacobs     | Masculino | Industrial    |
| Austin     | Masculino | Lar           |
| Sims       | Masculino | Esporte       |
| Harper     | Masculino | Lar           |
| Nichols    | Masculino | Automotivo    |
| Welch      | Masculino | Música        |
| Young      | Masculino | Roupas        |
| Griffin    | Masculino | Games         |
| Burke      | Feminino  | Jardim        |
| Ortiz      | Masculino | Bebês         |
| Olson      | Masculino | Computadores  |
| Ward       | Masculino | Bebês         |
| Martin     | Masculino | Brinquedos    |
| Harrison   | Masculino | Saúde         |
| Morgan     | Masculino | Industrial    |
| Foster     | Masculino | Brinquedos    |
| Vasquez    | Masculino | Bebês         |
| Hayes      | Masculino | Crianças      |
| Peterson   | Masculino | Games         |
| Holmes     | Masculino | Brinquedos    |
| Hanson     | Masculino | Eletronicos   |
| Dixon      | Masculino | Saúde         |
| Graham     | Masculino | Crianças      |
| Hall       | Masculino | Esporte       |
| Parker     | Masculino | Games         |
| Roberts    | Masculino | Filmes        |
| Moreno     | Masculino | Alimentícios  |
| Boyd       | Masculino | Roupas        |
| Murphy     | Masculino | Books         |
| Bailey     | Masculino | Books         |
| Greene     | Masculino | Brinquedos    |
| Brooks     | Masculino | Lar           |
| Brooks     | Masculino | Books         |
| Anderson   | Masculino | Automotivo    |
| Sanchez    | Masculino | Automotivo    |
| Perry      | Masculino | Industrial    |
| Mason      | Masculino | Ferramentas   |
| White      | Masculino | Computadores  |
| Reed       | Masculino | Jardim        |
| Jenkins    | Masculino | Outdoors      |
| Matthews   | Masculino | Books         |
| Gonzalez   | Masculino | Computadores  |
| Mason      | Masculino | Esporte       |
| Nelson     | Masculino | Alimentícios  |
| Miller     | Masculino | Eletronicos   |
| Harris     | Masculino | Brinquedos    |
| Little     | Masculino | Computadores  |
| Brooks     | Masculino | Música        |
| Parker     | Feminino  | Jardim        |
| Griffin    | Masculino | Filmes        |
| Evans      | Masculino | Computadores  |
| Banks      | Masculino | Computadores  |
| Sullivan   | Masculino | Industrial    |
| Andrews    | Masculino | Beleza        |
| Gutierrez  | Feminino  | Jardim        |
| Hansen     | Masculino | Brinquedos    |
| Rodriguez  | Masculino | Industrial    |
| Bailey     | Masculino | Música        |
| Weaver     | Masculino | Industrial    |
| Walker     | Masculino | Computadores  |
| Marshall   | Masculino | Computadores  |
| Gonzalez   | Masculino | Saúde         |
| Lawrence   | Masculino | Outdoors      |
| Carpenter  | Masculino | Outdoors      |
| Carter     | Feminino  | Jardim        |
| Peters     | Masculino | Alimentícios  |
| Gomez      | Masculino | Roupas        |
| Carpenter  | Masculino | Computadores  |
| Hamilton   | Masculino | Eletronicos   |
| Owens      | Masculino | Industrial    |
| Williamson | Masculino | Roupas        |
| Richards   | Masculino | Roupas        |
| Cole       | Masculino | Esporte       |
| Meyer      | Feminino  | Jardim        |
| Hudson     | Masculino | Lar           |
| Rice       | Masculino | Books         |
| Freeman    | Masculino | Calçados      |
| Kelley     | Masculino | Filmes        |
| Matthews   | Masculino | Games         |
| Rice       | Masculino | Música        |
| Lynch      | Masculino | Crianças      |
| Moreno     | Masculino | Industrial    |
| Watson     | Masculino | Calçados      |
| Cruz       | Masculino | Música        |
| Gomez      | Masculino | Beleza        |
| George     | Masculino | Automotivo    |
| Frazier    | Masculino | Brinquedos    |
| Frazier    | Masculino | Crianças      |
| Hudson     | Masculino | Bebês         |
| Kim        | Masculino | Roupas        |
| Rodriguez  | Masculino | Esporte       |
| Perez      | Masculino | Ferramentas   |
| Graham     | Masculino | Beleza        |
| Lynch      | Masculino | Eletronicos   |
| Day        | Masculino | Lar           |
| Duncan     | Masculino | Automotivo    |
| Pierce     | Masculino | Alimentícios  |
| Bowman     | Masculino | Games         |
| Taylor     | Masculino | Roupas        |
| Jones      | Masculino | Bebês         |
| Lynch      | Masculino | Roupas        |
| Barnes     | Feminino  | Jardim        |
| Weaver     | Masculino | Computadores  |
| Lopez      | Masculino | Jardim        |
| Arnold     | Masculino | Filmes        |
| Duncan     | Masculino | Calçados      |
| Lopez      | Masculino | Saúde         |
| Henderson  | Masculino | Ferramentas   |
| Webb       | Masculino | Joalheria     |
| Greene     | Masculino | Roupas        |
| Reyes      | Masculino | Esporte       |
| Garza      | Masculino | Saúde         |
| Fisher     | Masculino | Eletronicos   |
| Hicks      | Masculino | Saúde         |
| Phillips   | Masculino | Roupas        |
| Cole       | Masculino | Ferramentas   |
| Reynolds   | Masculino | Crianças      |
| Wright     | Masculino | Eletronicos   |
| Ford       | Masculino | Beleza        |
| Garza      | Masculino | Books         |
| Ruiz       | Feminino  | Jardim        |
| Pierce     | Masculino | Outdoors      |
| Lopez      | Feminino  | Jardim        |
| Freeman    | Masculino | Calçados      |
| Walker     | Masculino | Games         |
| Porter     | Masculino | Calçados      |
| Washington | Masculino | Joalheria     |
| Carroll    | Masculino | Alimentícios  |
| Webb       | Masculino | Ferramentas   |
| Harvey     | Masculino | Beleza        |
| Washington | Masculino | Eletronicos   |
| Long       | Masculino | Beleza        |
| Russell    | Masculino | Calçados      |
| Frazier    | Masculino | Alimentícios  |
| Rivera     | Masculino | Joalheria     |
| Ramirez    | Masculino | Brinquedos    |
| Mcdonald   | Masculino | Automotivo    |
| Campbell   | Masculino | Books         |
| Gilbert    | Masculino | Eletronicos   |
| Nelson     | Masculino | Calçados      |
| Scott      | Masculino | Bebês         |
| Owens      | Masculino | Brinquedos    |
| Fuller     | Masculino | Calçados      |
| Fowler     | Masculino | Esporte       |
| Thomas     | Masculino | Saúde         |
| Adams      | Masculino | Brinquedos    |
| Snyder     | Masculino | Games         |
| Sullivan   | Masculino | Música        |
| Robertson  | Masculino | Computadores  |
| Mills      | Masculino | Música        |
| Stone      | Masculino | Eletronicos   |
| Butler     | Masculino | Lar           |
| Scott      | Masculino | Jardim        |
| Hall       | Masculino | Joalheria     |
| Watkins    | Masculino | Brinquedos    |
| Cruz       | Masculino | Lar           |
| Perkins    | Masculino | Música        |
| Owens      | Masculino | Calçados      |
| Carr       | Masculino | Jardim        |
| Anderson   | Masculino | Games         |
| Woods      | Masculino | Beleza        |
| Cook       | Masculino | Jardim        |
| Stone      | Masculino | Jardim        |
| Williams   | Masculino | Joalheria     |
| Wells      | Masculino | Esporte       |
| Burke      | Masculino | Computadores  |
| Clark      | Masculino | Filmes        |
| Perry      | Masculino | Industrial    |
| Roberts    | Masculino | Roupas        |
| Torres     | Masculino | Joalheria     |
| Cooper     | Masculino | Games         |
| Jacobs     | Masculino | Eletronicos   |
| Armstrong  | Masculino | Saúde         |
| Wagner     | Masculino | Beleza        |
| Elliott    | Masculino | Industrial    |
| Richards   | Masculino | Bebês         |
| Welch      | Masculino | Lar           |
| Johnson    | Masculino | Filmes        |
| Banks      | Masculino | Joalheria     |
| Murray     | Masculino | Roupas        |
| Diaz       | Masculino | Lar           |
| Richards   | Masculino | Roupas        |
| Morgan     | Masculino | Bebês         |
| Price      | Masculino | Saúde         |
| Nguyen     | Masculino | Esporte       |
| Gordon     | Masculino | Automotivo    |
| Baker      | Masculino | Industrial    |
| Carroll    | Masculino | Crianças      |
| Elliott    | Masculino | Roupas        |
| Ward       | Masculino | Música        |
| Kelley     | Masculino | Eletronicos   |
| Tucker     | Masculino | Industrial    |
| Evans      | Masculino | Games         |
| Ray        | Masculino | Brinquedos    |
| Vasquez    | Masculino | Jardim        |
| Bell       | Masculino | Bebês         |
| Stanley    | Masculino | Eletronicos   |
| Bell       | Masculino | Computadores  |
| Williams   | Masculino | Ferramentas   |
| Elliott    | Masculino | Books         |
| Hall       | Masculino | Books         |
| Clark      | Feminino  | Jardim        |
| Elliott    | Masculino | Filmes        |
| Dixon      | Masculino | Ferramentas   |
| Richards   | Masculino | Calçados      |
| Sims       | Masculino | Industrial    |
| Thomas     | Masculino | Automotivo    |
| Gonzalez   | Masculino | Alimentícios  |
| Cox        | Masculino | Games         |
| Weaver     | Masculino | Filmes        |
| Burns      | Masculino | Automotivo    |
| Burns      | Masculino | Eletronicos   |
| Miller     | Masculino | Música        |
| Willis     | Masculino | Jardim        |
| James      | Masculino | Roupas        |
| Mccoy      | Masculino | Industrial    |
| Hansen     | Feminino  | Jardim        |
| Owens      | Masculino | Beleza        |
| Kim        | Masculino | Jardim        |
| Peterson   | Masculino | Outdoors      |
| Gordon     | Masculino | Bebês         |
| Hill       | Masculino | Calçados      |
| Gibson     | Masculino | Industrial    |
| Butler     | Masculino | Automotivo    |
| Harrison   | Masculino | Joalheria     |
| Harvey     | Masculino | Beleza        |
| Hayes      | Masculino | Joalheria     |
| Burton     | Feminino  | Jardim        |
| Dixon      | Masculino | Bebês         |
| Murray     | Masculino | Industrial    |
| Baker      | Masculino | Brinquedos    |
| Riley      | Masculino | Joalheria     |
| Gonzalez   | Masculino | Saúde         |
| Morris     | Masculino | Alimentícios  |
| Turner     | Masculino | Books         |
| Fowler     | Masculino | Bebês         |
| Parker     | Masculino | Saúde         |
| Tucker     | Masculino | Bebês         |
| Black      | Masculino | Brinquedos    |
| Hamilton   | Masculino | Books         |
| Sullivan   | Masculino | Crianças      |
| Ross       | Masculino | Jardim        |
| Hall       | Masculino | Outdoors      |
| Washington | Masculino | Crianças      |
| Rice       | Masculino | Alimentícios  |
| Kelley     | Masculino | Crianças      |
| Rose       | Masculino | Calçados      |
| Mendoza    | Masculino | Beleza        |
| Hanson     | Masculino | Ferramentas   |
| Perry      | Masculino | Jardim        |
| Nichols    | Masculino | Brinquedos    |
| Clark      | Masculino | Saúde         |
| Anderson   | Masculino | Esporte       |
| Price      | Masculino | Filmes        |
| Howard     | Masculino | Outdoors      |
| Hanson     | Masculino | Saúde         |
| Hall       | Masculino | Crianças      |
| Spencer    | Masculino | Books         |
| Montgomery | Masculino | Calçados      |
| Webb       | Masculino | Outdoors      |
| Williamson | Masculino | Industrial    |
| Hill       | Masculino | Ferramentas   |
| George     | Masculino | Calçados      |
| George     | Masculino | Alimentícios  |
| Vasquez    | Masculino | Beleza        |
| Jackson    | Masculino | Games         |
| Richards   | Masculino | Bebês         |
| Crawford   | Masculino | Beleza        |
| Dixon      | Masculino | Alimentícios  |
| Owens      | Masculino | Automotivo    |
| Moore      | Masculino | Industrial    |
| Reid       | Masculino | Beleza        |
| Jordan     | Masculino | Brinquedos    |
| Perry      | Masculino | Books         |
| Wright     | Masculino | Calçados      |
| Webb       | Masculino | Automotivo    |
| Spencer    | Masculino | Eletronicos   |
| Mcdonald   | Masculino | Automotivo    |
| Reyes      | Feminino  | Jardim        |
| Peterson   | Masculino | Automotivo    |
| Bell       | Masculino | Ferramentas   |
| Gutierrez  | Masculino | Beleza        |
| White      | Masculino | Alimentícios  |
| Wilson     | Masculino | Beleza        |
| Phillips   | Feminino  | Jardim        |
| Austin     | Masculino | Brinquedos    |
| Howard     | Masculino | Música        |
| Hansen     | Feminino  | Jardim        |
| Reyes      | Feminino  | Jardim        |
| Williams   | Masculino | Bebês         |
| Morrison   | Masculino | Brinquedos    |
| Hudson     | Masculino | Books         |
| Hawkins    | Masculino | Esporte       |
| Austin     | Masculino | Industrial    |
| Turner     | Masculino | Alimentícios  |
| Cunningham | Feminino  | Jardim        |
| Lopez      | Masculino | Calçados      |
| James      | Masculino | Ferramentas   |
| Woods      | Masculino | Calçados      |
| Edwards    | Masculino | Alimentícios  |
| Marshall   | Masculino | Roupas        |
| Wood       | Masculino | Ferramentas   |
| Young      | Masculino | Música        |
| Lane       | Masculino | Computadores  |
| Ramos      | Masculino | Jardim        |
| Butler     | Masculino | Games         |
| Moreno     | Masculino | Beleza        |
| Richards   | Masculino | Roupas        |
| James      | Masculino | Crianças      |
| Welch      | Masculino | Brinquedos    |
| Fowler     | Feminino  | Jardim        |
| Chapman    | Masculino | Beleza        |
| Collins    | Masculino | Beleza        |
| Hunt       | Masculino | Eletronicos   |
| Medina     | Masculino | Bebês         |
| Simmons    | Masculino | Beleza        |
| Williams   | Masculino | Joalheria     |
| Stevens    | Masculino | Eletronicos   |
| Ryan       | Masculino | Beleza        |
| Thomas     | Masculino | Crianças      |
| Edwards    | Masculino | Outdoors      |
| Kennedy    | Masculino | Industrial    |
| Howard     | Masculino | Bebês         |
+------------+-----------+---------------+
506 rows in set (0.00 sec)



