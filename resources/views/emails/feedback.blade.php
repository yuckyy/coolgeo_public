@component('mail::message')
# Вы задавали вопрос:
------
{{$feedback->question}}.
------
Наш ответ:
{{$feedback->answer}}.


З повагою ТОВ ЖИТЛО-СЕРВИС-ИНВЕСТ.

@endcomponent
