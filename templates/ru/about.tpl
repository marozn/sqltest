{include file='../short-header.tpl'}
    <body>
        <div class="{if $MobileView}mobile-container{else}full-container{/if}">
            <div class="header">
                <div class="top-menu">
                    {if $MobileView}
                        {include file='m.site-name.tpl'}
                    {else}
                        {include file='site-name.tpl'}
                    {/if}
                    <span class="lang-swith"><a href="/en/about" target="_self">EN</a></span>
                </div>
            </div>
            <div class="container3">
                <p>Добро пожаловать на SQLTest.online – место где вы можете бесплатно пройти тест на знание SQL! Наш проект создан с целью предоставить всем возможность тестирования и улучшения навыков работы с языком SQL.</p>
                <h2>Что такое SQLTest.online?</h2>
                <p>SQLTest.online – это интерактивная платформа, разработанная для того, чтобы вы могли проверить и улучшить свои навыки SQL. Независимо от вашего уровня опыта – будь вы новичок или опытный разработчик – у нас есть что-то для вас.</p></details>
                <h2>Что мы предлагаем:</h2>
                <ol>
                    <li><strong>Разнообразие Задач:</strong> SQLTest.online предоставляет разнообразные SQL задачи, позволяя вам оценить свои навыки на различных уровнях сложности. От простых запросов до более сложных сценариев, у нас есть что-то для каждого.</li>
                    <li><strong>Мгновенный Старт:</strong> Никаких сложных настроек баз данных – выберите язык (русский или английский) и начинайте решать задачи прямо сейчас.</li>
                    <li><strong>Сообщество Поддержки:</strong> Присоединяйтесь к нашему сообществу, где вы можете делиться своим опытом, обсуждать интересные моменты и получать помощь от коллег.</li>
                </ol>
                <h2>Что нового:</h2>
                <p>На данный момент на нашем сайте представлено более {floor(($QuestionsCount - 1)/10) * 10} задач различной сложности в {$CategoriesCount} категориях , на базе данных Sakila (MySQL), Bookings (PostgreSQL) и EMPLOEE (Firebird). Мы регулярно добавляем новые задания и стремимся расширить количество баз данных, чтобы предоставить вам более широкий опыт.</p></details>
                <h2>Присоединяйтесь к Нам:</h2>
                <p>Вам не нужно регистрироваться, просто зайдите на <a href="https://sqltest.online">SQLTest.online</a> и начните свое приключение с SQL. Мы также приглашаем вас присоединиться к нашему <a href="https://t.me/sqlize">Telegram-чату</a>, где вы можете делиться своим опытом и влиять на будущее развитие проекта.</p></details>
                <p><strong>Давайте вместе развивать навыки SQL на SQLTest.online!</strong> 🚀</p>
                <p>
                    Большое спасибо <a href ="https://t.me/artlatyshev" target="_blank">Артему Латышеву</a> за его вклад в развитие проекта.
                </p>
            </div>
{if $MobileView}
    {include file='m.footer.tpl'}
{else}
    {include file='footer.tpl'}
{/if}