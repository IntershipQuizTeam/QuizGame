# QuizGame
В какво се състои: 

User system - .register and login опция, игра като гост (гостите нямат много права).
За реализацията на тази част, ще се използва конструктор, regex verification, database заявки.

Database с въпроси - 4 сфери със специфични въпроси (математика, литература, география и история), въпроси с отворени и затворени отговори
Реализация в mySQL, свързана с нашият Java проект

Quiz generator - user - ът избира на коя от сферите иска да играе, играта предлага миксирани въпроси (всеки въпрос трябва да бъде отговорен в рамките на няколко секунди, прибавят се точки за верен отговор)

Counter, за изчисленията на резултата, резултатът се записва в базата. За топ 3 играчи се изготвя leaderboard.

Една идея, по която все още няма консенсус: Всеки въпрос трябва да бъде отговорен в рамките на 20 секунди. Ако липсва отговор в рамките на това време, точките са нула. 

Hints, които ще бъдат заплащани само от user-и, гостите няма да имат права, нужен им е акаунт, за да се възползват от тези услуги. Това е и начинът, по който ще се “издържаме”. 
