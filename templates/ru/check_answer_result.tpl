{assign var=phrase_id value=0|mt_rand:4}

{if $AnswerResult.ok}
    {assign var="phrases" value=[
        ['Отлично! Вы выполнили задание!', 'Чтобы сохранить свой прогресс, пожалуйста, <a href="" onClick="toggleLoginWindow(); return false;">войдите на сайт</a>.'],
        ['Круто! Вы сделали это!', 'Чтобы сохранить свой прогресс, <a href="" onClick="toggleLoginWindow(); return false;">войдите на сайт сейчас</a>.'],
        ['Вы справились! Молодец!', 'Чтобы убедиться, что ваша работа сохранена, <a href="" onClick="toggleLoginWindow(); return false;">войдите на сайт</a>.'],
        ['Поздравляем с завершением задания!', '<a href="" onClick="toggleLoginWindow(); return false;">Войдите на сайт</a> сейчас, чтобы сохранить свой прогресс.'],
        ['Вы круты! Вы все сделали!', 'Не забудьте <a href="" onClick="toggleLoginWindow(); return false;">войти на сайт</a>, чтобы сохранить свой прогресс в безопасности. 😎']
    ]}
    {$phrases[$phrase_id][0]}
    {if !$Logged}
        <p class="question-action">
            {$phrases[$phrase_id][1]}
        </p>
    {else}
        <div class="question-rate-panel">
            <div style="min-width:280px;">Прежде чем двигаться дальше, пожалуйста оцените сложность этого задания:</div>
            <div class="buttons">
                <button class="button-small" onclick="rateQuestion({$QuestionID}, 1)"><span class="question-level rate1"></span>&nbsp;Легко</button>
                <button class="button-small" onclick="rateQuestion({$QuestionID}, 2)"><span class="question-level rate2"></span>&nbsp;Просто</button>
                <button class="button-small" onclick="rateQuestion({$QuestionID}, 3)"><span class="question-level rate3"></span>&nbsp;Нормально</button>
                <button class="button-small" onclick="rateQuestion({$QuestionID}, 4)"><span class="question-level rate4"></span>&nbsp;Сложно</button>
                <button class="button-small" onclick="rateQuestion({$QuestionID}, 5)"><span class="question-level rate5"></span>&nbsp;Очень сложно</button>
            </div>
        </div>
        </p>
    {/if}
{else}
    {assign var="phrases" value=[
        ['К сожалению не верно. Стоит подумать и попробовать еще раз.'],
        ['Ошиблись - не сдавайтесь! Попробуйте другой вариант.'],
        ['Давайте попробуем другой подход.'],
        ['Близко, но к сожалению, не то. Попробуйте еще раз!'],
        ['Попробуте еще раз. Вы почти решили это!']
    ]}
    {$phrases[$phrase_id][0]}
    <p>Ошибка в задании? <a target="_blank" href="https://t.me/sqlize">Сообщите! Мы всё исправим :)</a></p>
{/if}
{assign var=referral_link_id value=0|mt_rand:6}
{assign var="referral_links" value=[
    ['Хочешь освоить SQL с и получить навыки работы со сложными запросами и функциями? <a id="referral-link" target="_blank" href="https://go.redav.online/febbce86d82c0a30?erid=LdtCKgHnn&m=1">Запишись на курс «SQL для анализа данных» от SkillFactory с максимальной скидкой!</a><p style="font-size:xx-small;">Реклама. ООО Скилфэктори, ИНН 9702009530, erid: LdtCKgHnn</p>'],
    ['Хочешь начать карьеру в IT? Бесплатный мини-курс по программированию: <a id="referral-link" target="_blank" href="https://go.redav.online/111a96ed04609360?erid=LdtCKEwqn&m=1">«SQL и Excel для новичков: учимся работать с данными»</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Хочешь знать язык SQL и его расширение PL/SQL? <a id="referral-link" target="_blank" href="https://go.redav.online/0ed3924b563904c0?erid=LdtCKEwqn&m=1">Запишись на курс «SQL-разработчик» от SkillBox  и получи максимальную скидку!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Хочешь попробовать себя в новой роли? <a id="referral-link" target="_blank" href="	https://go.redav.online/48397ad6e2aa41b0?erid=LdtCKEwqn">Запишись бесплатный мини-курс: «Data Science с нуля»</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Хочешь освоить SQL и стать востребованным специалистом? <a id="referral-link" target="_blank" href="https://go.redav.online/ca966215c62eb060?erid=LdtCKXSTq&m=1">Запишись на курс «SQL с нуля для анализа данных» от Eduson ACADEMY</a> и получи максимальную скидку!<p style="font-size:xx-small;">Реклама. ООО Эдюсон, ИНН 7729779476, erid: LdtCKXSTq</p>'],
    ['Аналитик?! Хочешь освоить SQL и повысить свою ценность? <a id="referral-link" target="_blank" href="https://go.redav.online/e1ad0b14a1ac8c50?erid=LdtCKEwqn&m=1">Запишись на курс «SQL для анализа данных» от SkillBox с максимальной скидкой!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Разработчик?! Хочешь уметь использовать, проектировать и оптимизировать базы данных? <a id="referral-link" target="_blank" href="https://go.redav.online/9c71a99b3ea3b9f0?erid=LdtCKEwqn&m=1">Запишись на курс «Базы данных для разработчиков» от SkillBox с максимальной скидкой!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>']
]}
<p style="font-size:large; margin-top: 3em;">{$referral_links[$referral_link_id][0]}</p>