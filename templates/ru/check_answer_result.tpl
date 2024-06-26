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
        <p class="question-action">
        Прежде чем приступить к следующему тесту, пожалуйста оцените сложность этого задания:
        <select onchange="rateQuestion({$QuestionID}, this.value)">
            <option value="0" disabled selected>---</option>
            <option value="1">Слишком просто</option>
            <option value="2">Просто</option>
            <option value="3">Нормально</option>
            <option value="4">Сложно</option>
            <option value="5">Очень сложно</option>
        </select>
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
{assign var=referral_link_id value=0|mt_rand:4}
{assign var="referral_links" value=[
    ['Хочешь освоить SQL с и получить навыки работы со сложными запросами и функциями? <a id="referral-link" target="_blank" href="https://go.redav.online/febbce86d82c0a30?erid=LdtCKgHnn&m=1">Запишись на курс «SQL для анализа данных» от SkillFactory с максимальной скидкой!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Хочешь знать язык SQL и его расширение PL/SQL? <a id="referral-link" target="_blank" href="https://go.redav.online/0ed3924b563904c0?erid=LdtCKEwqn&m=1">Запишись на курс «SQL-разработчик» от SkillBox  и получи максимальную скидку!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Хочешь освоить SQL и стать востребованным специалистом? <a id="referral-link" target="_blank" href="https://go.redav.online/ca966215c62eb060?erid=LdtCKXSTq&m=1">Запишись на курс «SQL с нуля для анализа данных» от Eduson ACADEMY</a> и получи максимальную скидку!<p style="font-size:xx-small;">Реклама. ООО Эдюсон, ИНН 7729779476, erid: LdtCKXSTq</p>'],
    ['Аналитик?! Хочешь освоить SQL и повысить свою ценность? <a id="referral-link" target="_blank" href="https://go.redav.online/e1ad0b14a1ac8c50?erid=LdtCKEwqn&m=1">Запишись на курс «SQL для анализа данных» от SkillBox с максимальной скидкой!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>'],
    ['Разработчик?! Хочешь уметь использовать, проектировать и оптимизировать базы данных? <a id="referral-link" target="_blank" href="https://go.redav.online/9c71a99b3ea3b9f0?erid=LdtCKEwqn&m=1">Запишись на курс «Базы данных для разработчиков» от SkillBox с максимальной скидкой!</a><p style="font-size:xx-small;">Реклама. ЧОУ ЧАСТНОЕ ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ДОПОЛНИТЕЛЬНОГО ПРОФЕССИОНАЛЬНОГО ОБРАЗОВАНИЯ ОБРАЗОВАТЕЛЬНЫЕ ТЕХНОЛОГИИ СКИЛБОКС (КОРОБКА НАВЫКОВ), ИНН 9704088880, erid: LdtCKEwqn</p>']
]}
<p style="font-size:large; margin-top: 5em;">{$referral_links[$referral_link_id][0]}</p>