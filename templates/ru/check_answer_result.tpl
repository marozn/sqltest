{assign var=phrase_id value=0|mt_rand:4}

{if $AnswerResult.ok}
    {assign var="phrases" value=[
        ['Отлично! Вы завершили задание!', 'Чтобы сохранить свой прогресс, пожалуйста, <a href="" onClick="toggleLoginWindow(); return false;">войдите на сайт</a>.'],
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
