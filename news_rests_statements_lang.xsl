<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="ru">
        <xsl:param name="node_name" select="'title'"/>
        <xsl:choose>
            <xsl:when test="'title_news'=$node_name">Новости</xsl:when>

            <xsl:when test="'title_rests'=$node_name">Текущая информация</xsl:when>
            <xsl:when test="'title_rests_adv'=$node_name">Приват24</xsl:when>

            <xsl:when test="'title_statements'=$node_name">Выписки</xsl:when>

            <xsl:when test="'title_reestr'=$node_name">Реестр</xsl:when>

            <xsl:when test="'caption_refresh1'=$node_name">Идет запрос для обновления</xsl:when>
            <xsl:when test="'caption_refresh2'=$node_name">баланса. Просим Вас подождать.</xsl:when>

            <xsl:when test="'caption_rests_refresh'=$node_name">Балансы по Вашим картам/счетам</xsl:when>
            <xsl:when test="'caption_rests_phones'=$node_name">Ваши телефоны</xsl:when>
            <xsl:when test="'caption_rests_acc'=$node_name">Ваши счета</xsl:when>
            <xsl:when test="'caption_rests_card'=$node_name">Ваши карты</xsl:when>
            <xsl:when test="'caption_rests_dep'=$node_name">Ваши депозиты</xsl:when>

            <xsl:when test="'caption_card'=$node_name">Реквизиты карты</xsl:when>
            <xsl:when test="'caption_statements'=$node_name">Транзакции осуществленные за указанный период</xsl:when>

            <xsl:when test="'rests_refresh'=$node_name">Обновить баланс по ВСЕМ счетам</xsl:when>
            <xsl:when test="'rests_communal'=$node_name">Вы можете оплатить коммунальные платежи ГИВЦ в разделе Платежи. Для получения доступа ко всем возможностям Приват24 зарегистрируйтесь на сайте www.privatbank.ua</xsl:when>
            <xsl:when test="'dep_open'=$node_name">Открыть депозит</xsl:when>

            <xsl:when test="'in_time'=$node_name">За период</xsl:when>
            <xsl:when test="'in_time_reestr'=$node_name">За дату</xsl:when>
            <xsl:when test="'in_time_adv'=$node_name">(дд.мм.гггг)</xsl:when>
            <xsl:when test="'select_card'=$node_name">Выберите карту для показа выписок</xsl:when>
            <xsl:when test="'selected'=$node_name">Выбранная</xsl:when>
            <xsl:when test="'selected_acc'=$node_name">Выбранный</xsl:when>
            <xsl:when test="'delivery'=$node_name">Рассылка выписок на e-mail</xsl:when>

            <xsl:when test="'show'=$node_name">Показать</xsl:when>
            <xsl:when test="'subscribe'=$node_name">Подписаться</xsl:when>
            <xsl:when test="'unsubscribe'=$node_name">Отписаться</xsl:when>

            <xsl:when test="'statement'=$node_name">Выписка по счету №</xsl:when>
            <xsl:when test="'statement_currency'=$node_name">валюта</xsl:when>
            <xsl:when test="'before'=$node_name">за период с</xsl:when>
            <xsl:when test="'after'=$node_name">по</xsl:when>
            <xsl:when test="'received'=$node_name">получено</xsl:when>
            <xsl:when test="'spent'=$node_name">потрачено</xsl:when>
            <xsl:when test="'statement_remainder'=$node_name">доступный остаток</xsl:when>
            <xsl:when test="'no_data'=$node_name">нет данных</xsl:when>

            <xsl:when test="'agent_code'=$node_name">ЕГРПОУ контрагента</xsl:when>
            <xsl:when test="'agent_name'=$node_name">Наименование<br/>контрагента</xsl:when>
            <xsl:when test="'agent_acc'=$node_name">Счет контрагента</xsl:when>
            <xsl:when test="'agent_bic'=$node_name">МФО контрагента</xsl:when>
            <xsl:when test="'operation'=$node_name">Операция</xsl:when>
            <xsl:when test="'payment'=$node_name">Платеж</xsl:when>
            <xsl:when test="'payment_info'=$node_name">Создать новое платежное поручение в формате НБУ</xsl:when>

            <xsl:when test="'total_doc'=$node_name">Итого документов</xsl:when>
            <xsl:when test="'in_amount'=$node_name">на сумму</xsl:when>
            <xsl:when test="'currency_reestr'=$node_name">грн.</xsl:when>

            <xsl:when test="'phone_number'=$node_name">Номер телефона</xsl:when>
            <xsl:when test="'account_number'=$node_name">Номер счета</xsl:when>
            <xsl:when test="'account_name'=$node_name">Наименование счета</xsl:when>
            <xsl:when test="'rename_account'=$node_name">Переименование счета</xsl:when>
            <xsl:when test="'refresh_account'=$node_name">Обновить баланс по счету</xsl:when>
            <xsl:when test="'card_number'=$node_name">Номер карты</xsl:when>
            <xsl:when test="'card_name'=$node_name">Наименование карты</xsl:when>
            <xsl:when test="'rename_card'=$node_name">Переименование карты</xsl:when>
            <xsl:when test="'refresh_card'=$node_name">Обновить баланс по карте</xsl:when>
            <xsl:when test="'dep_name'=$node_name">Наименование</xsl:when>
            <xsl:when test="'percent'=$node_name">% ставка (годовых)</xsl:when>
            <xsl:when test="'amount'=$node_name">Сумма</xsl:when>
            <xsl:when test="'currency'=$node_name">Валюта</xsl:when>
            <xsl:when test="'in_remainder'=$node_name">Вх. остаток</xsl:when>
            <xsl:when test="'debet'=$node_name">Дебет</xsl:when>
            <xsl:when test="'credit'=$node_name">Кредит</xsl:when>
            <xsl:when test="'balance'=$node_name">Баланс</xsl:when>
            <xsl:when test="'inaccessible_balance'=$node_name">баланс недоступен</xsl:when>
            <xsl:when test="'remainder'=$node_name">Доступный остаток</xsl:when>
            <xsl:when test="'inaccessible_remainder'=$node_name">остаток недоступен</xsl:when>
            <xsl:when test="'motion'=$node_name">Движение</xsl:when>
            <xsl:when test="'motion_up'=$node_name">остаток увеличился</xsl:when>
            <xsl:when test="'motion_down'=$node_name">остаток уменьшился</xsl:when>
            <xsl:when test="'motion_none'=$node_name">нет</xsl:when>

            <xsl:when test="'base_card_number'=$node_name">Номер основной карты</xsl:when>
            <xsl:when test="'card_type'=$node_name">Тип карты</xsl:when>
            <xsl:when test="'trade_limit'=$node_name">Торговый лимит</xsl:when>
            <xsl:when test="'fin_limit'=$node_name">Финанс. лимит</xsl:when>
            <xsl:when test="'status'=$node_name">Статус карты</xsl:when>
            <xsl:when test="'status_norm'=$node_name">открыта</xsl:when>
            <xsl:when test="'status_deld'=$node_name">закрыта</xsl:when>
            <xsl:when test="'number'=$node_name">№</xsl:when>
            <xsl:when test="'target'=$node_name">Назначение платежа</xsl:when>
            <xsl:when test="'wiring_date'=$node_name">Дата проводки</xsl:when>
            <xsl:when test="'auth_date'=$node_name">Дата авторизации</xsl:when>
            <xsl:when test="'terminal'=$node_name">Терминал</xsl:when>
            <xsl:when test="'shared_card'=$node_name">Транзакция с дополнительной карты</xsl:when>

            <xsl:when test="'select_account'=$node_name">По счету</xsl:when>
            <xsl:when test="'payer_code'=$node_name">ЕГРПОУ плательщика</xsl:when>
            <xsl:when test="'payer_name'=$node_name">Наим. плательщика</xsl:when>
            <xsl:when test="'payer_account'=$node_name">Счет плательщика</xsl:when>
            <xsl:when test="'payer_bank_code'=$node_name">МФО плательщ.</xsl:when>
            <xsl:when test="'receiver_code'=$node_name">ЕГРПОУ получателя</xsl:when>
            <xsl:when test="'receiver_name'=$node_name">Наим. получателя</xsl:when>
            <xsl:when test="'receiver_account'=$node_name">Счет получателя</xsl:when>
            <xsl:when test="'receiver_bank_code'=$node_name">МФО получат.</xsl:when>
            <xsl:when test="'reference'=$node_name">Референс</xsl:when>

            <xsl:when test="'new_name'=$node_name">Введите новое имя счета:</xsl:when>
            <xsl:when test="'payment_doc'=$node_name">Платежное поручение</xsl:when>
            <xsl:when test="'payment_doc2'=$node_name">Мемориальный ордер</xsl:when>
            <xsl:when test="'print_doc'=$node_name"> Для печати платежного поручения нажмите Ctrl+P.</xsl:when>
            <xsl:when test="'msg_date'=$node_name">Поле "За дату" неправильно заполнено. Оно не должно быть пустым и \nдолжно содержать в себе дату в виде "дд.мм.гггг". Попробуйте еще раз.</xsl:when>

            <xsl:when test="'contact.info.ab'=$node_name">Для заказа встречи с сотрудником отправьте SMS с кодом 0739 на номер 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ua'=$node_name">Для заказа встречи с сотрудником отправьте SMS с кодом 2555 на номер 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ru'=$node_name">Для заказа встречи с сотрудником отправьте SMS с кодом 0740 на номер 1255</xsl:when>
            <xsl:when test="'contact.info.pb.ge'=$node_name">Для заказа встречи с сотрудником отправьте SMS с кодом 0741 на номер 3366</xsl:when>

            <xsl:when test="'print.btn'=$node_name">Уведомление о гарантированном платеже</xsl:when>

            <xsl:when test="'garlist.btn'=$node_name">Заявка на гарантированный платеж </xsl:when>
            <xsl:when test="'garlist.dog'=$node_name">(поручение  на договорное списание)</xsl:when>
            <xsl:when test="'garlist.numdoc'=$node_name">Номер заявки: </xsl:when>
            <xsl:when test="'garlist.dcreate'=$node_name">Дата заявки: </xsl:when>
            <xsl:when test="'garlist.aacc'=$node_name">Счет отправителя: </xsl:when>
            <xsl:when test="'garlist.anam'=$node_name">Наименование отправителя: </xsl:when>
            <xsl:when test="'garlist.acrf'=$node_name">ЕГРПОУ отправителя: </xsl:when>
            <xsl:when test="'garlist.summ'=$node_name">Сумма платежа:  </xsl:when>
            <xsl:when test="'garlist.summlich'=$node_name"> UAH, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summlich.ge'=$node_name"> GEL, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summcred'=$node_name"> UAH, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.summcred.ge'=$node_name"> GEL, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.datend'=$node_name">Дата зачисления средств получателю:    </xsl:when>
            <xsl:when test="'garlist.datarec'=$node_name">Данные получателя:  </xsl:when>
            <xsl:when test="'garlist.bacc'=$node_name">- счет:    </xsl:when>
            <xsl:when test="'garlist.bname'=$node_name">- наименование: </xsl:when>
            <xsl:when test="'garlist.bcrf'=$node_name">- код ЕГРПОУ:  </xsl:when>
            <xsl:when test="'garlist.bbic'=$node_name">- код банка (МФО): </xsl:when>
            <xsl:when test="'garlist.osmd'=$node_name">- назначение платежа: </xsl:when>
            <xsl:when test="'garlist.text1'=$node_name">Операция(ии)  по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг" - раздел 3.1.1, раздел 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированные платежи". </xsl:when>
            <xsl:when test="'garlist.text1.2'=$node_name">В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных </xsl:when>
            <xsl:when test="'garlist.text1.2.1'=$node_name"> кредитных средств, то данная заявка, вместе с Условиями и Правилами предоставления банковских услуг, Тарифами ПриватБанка, составляют кредитно-залоговый договор </xsl:when>
            <xsl:when test="'garlist.text1.2.2'=$node_name">(залог согласно п.3.2.2.4. Условий и Правил предоставления банковских услуг)</xsl:when>

            <xsl:when test="'garlist.text1.2.3'=$node_name">Срок возврата кредита:</xsl:when>
            <xsl:when test="'garlist.text1.2.4'=$node_name">Платность, условие возврата, обеспечение – согласно раздела 3.2.2 «Условия и правила предоставления банковских услуг» или отдельно заключенных с клиентом кредитных договоров, регулирующих предоставление кредита на проведение гарантированных платежей.</xsl:when>

            <xsl:when test="'garlist.text1.ge'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг"- разделы 3.1.2 и 3.16, регулирующих предоставление услуги «Гарантированные платежи». В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных PrivatBank кредитных средств, то данная заявка, вместе с "Условиями и Правилами предоставления банковских услуг" и Тарифами банка составляют кредитный договор. </xsl:when>
            <xsl:when test="'garlist.text11'=$node_name">Подписав настоящую заявку </xsl:when>
            <xsl:when test="'garlist.text2'=$node_name"> присоединяется и соглашается с условиями, изложенными в Условиях и Правилах предоставления банковских услуг, Тарифах </xsl:when>
            <xsl:when test="'garlist.text2.1'=$node_name">, которые размещены на официальном сайте Банка </xsl:when>
            <xsl:when test="'garlist.text2.2'=$node_name">. Настоящая Заявка на гарантированный платеж является поручением </xsl:when>
            <xsl:when test="'garlist.text3'=$node_name"> на списание денежных средств в оплату по хозяйственному договору и/или счету:  </xsl:when>
            <xsl:when test="'garlist.text4'=$node_name">   подписал данный документ электронно-цифровой подписью </xsl:when>
            <xsl:when test="'garlist.text5'=$node_name"> в системе интернет-клиент-банк Приват24 </xsl:when>
            <xsl:when test="'garlist.text6'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24 </xsl:when>
            <xsl:when test="'garlist.textmfo'=$node_name"> МФО </xsl:when>
            <xsl:when test="'garlist.textabank'=$node_name">ПАТ КБ "А-Банк" </xsl:when>
            <xsl:when test="'garlist.textprivat'=$node_name">ПАТ КБ "ПриватБанк" </xsl:when>

            <xsl:when test="'cassOrder.title.in'=$node_name">Приходный ордер</xsl:when>
            <xsl:when test="'cassOrder.title.out'=$node_name">Расходный ордер</xsl:when>
            <xsl:when test="'gar.alert.1'=$node_name">ул. Батумская, 11,</xsl:when>
            <xsl:when test="'gar.alert.2'=$node_name">г. Днепропетровск, 49074, Украина</xsl:when>
            <xsl:when test="'gar.alert.1.ge'=$node_name">пр.Церетели 114,</xsl:when>
            <xsl:when test="'gar.alert.2.ge'=$node_name">г. Тбилиси, Грузия</xsl:when>
            <xsl:when test="'gar.alert.3'=$node_name">ул. Набережная Победы, 50,</xsl:when>
            <xsl:when test="'gar.alert.4'=$node_name">г. Днепропетровск, 49094, Украина</xsl:when>
            <xsl:when test="'gar.alert.5'=$node_name">Уважаемый клиент!</xsl:when>
            <xsl:when test="'gar.alert.6'=$node_name">А-Банк </xsl:when>
            <xsl:when test="'gar.alert.7'=$node_name">ПриватБанк </xsl:when>
            <xsl:when test="'gar.alert.8'=$node_name">подтверждает, что </xsl:when>
            <xsl:when test="'gar.alert.10'=$node_name"> года предприятие </xsl:when>
            <xsl:when test="'gar.alert.11'=$node_name"> выставило в пользу </xsl:when>
            <xsl:when test="'gar.alert.12'=$node_name"> гарантированный банком платеж со следующими параметрами:</xsl:when>
            <xsl:when test="'gar.alert.13'=$node_name">номер платежного поручения</xsl:when>
            <xsl:when test="'gar.alert.14'=$node_name">сумма</xsl:when>
            <xsl:when test="'gar.alert.15'=$node_name">дата исполнения (зачисления средств на расчетный счет получателя)</xsl:when>
            <xsl:when test="'gar.alert.16'=$node_name">отправитель</xsl:when>
            <xsl:when test="'gar.alert.17'=$node_name">счет отправителя</xsl:when>
            <xsl:when test="'gar.alert.18'=$node_name">назначение платежа</xsl:when>
            <xsl:when test="'gar.alert.19'=$node_name">Средства уже зачислены на счет </xsl:when>
            <xsl:when test="'gar.alert.20'=$node_name">открытый в </xsl:when>
            <xsl:when test="'gar.alert.21'=$node_name"> А-Банке</xsl:when>
            <xsl:when test="'gar.alert.22'=$node_name"> ПриватБанке</xsl:when>

            <xsl:when test="'gar.alert.23'=$node_name">Это означает, что деньги в обязательном порядке будут зачислены на расчетный счет предприятия </xsl:when>
            <xsl:when test="'gar.alert.24'=$node_name"> в дату исполнения платежа - </xsl:when>
            <xsl:when test="'gar.alert.25'=$node_name">Вы можете уже сейчас осуществлять действия, предусмотренные договоренностями с Вашим партнером в рамках указанного платежа.</xsl:when>
            <xsl:when test="'gar.alert.26'=$node_name">Используйте гарантированные платежи в расчетах со своими партнерами! Так Вы получаете 100%-ную гарантию от </xsl:when>
            <xsl:when test="'gar.alert.27'=$node_name">А-Банка</xsl:when>
            <xsl:when test="'gar.alert.28'=$node_name">ПриватБанка</xsl:when>
            <xsl:when test="'gar.alert.29'=$node_name">, что поставка товара (предоставленные услуги) будет оплачена в оговоренный срок. К тому же Вы увеличите объемы продаж и количество покупателей.</xsl:when>
            <xsl:when test="'gar.alert.30'=$node_name">Подробнее об услуге «Гарантированные платежи – кредит под 4% годовых» – на </xsl:when>
            <xsl:when test="'gar.alert.31'=$node_name">Консультации по гарантированным платежам – без перерывов и выходных:</xsl:when>

            <xsl:when test="'gar.alert.32'=$node_name">тел. </xsl:when>
            <xsl:when test="'gar.alert.33'=$node_name"> (бесплатно с мобильного), чат: </xsl:when>
            <xsl:when test="'gar.alert.33.ge'=$node_name"> (стоимость звонков – согласно тарифам Вашего оператора).</xsl:when>
            <xsl:when test="'gar.alert.34'=$node_name">С уважением, </xsl:when>
            <xsl:when test="'gar.alert.35'=$node_name">Председатель Правления А-Банка</xsl:when>
            <xsl:when test="'gar.alert.36'=$node_name">Председатель Правления ПриватБанка</xsl:when>
            <xsl:when test="'gar.alert.37'=$node_name">Н.А.Малыхина</xsl:when>
            <xsl:when test="'gar.alert.38'=$node_name">А.В. Дубилет</xsl:when>
            <xsl:when test="'gar.alert.38.ge'=$node_name">Ю.В. Кандауров</xsl:when>
            <xsl:when test="'gar.alert.39'=$node_name">Лицензия НБУ № 16 от 26.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.40'=$node_name">Лицензия НБУ № 22 от 05.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.41'=$node_name">ЕГРПОУ </xsl:when>
            <xsl:when test="'gar.alert.42'=$node_name"> грн. </xsl:when>
            <xsl:when test="'gar.alert.42.ge'=$node_name"> лари. </xsl:when>
            <xsl:when test="'gar.alert.43'=$node_name"> года</xsl:when>

            <xsl:when test="'gar.order.1'=$node_name">Заявка на внесение изменений</xsl:when>
            <xsl:when test="'gar.order.2'=$node_name">в гарантированный платеж</xsl:when>
            <xsl:when test="'gar.order.3'=$node_name">(заявка на изменение даты исполнения поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.4'=$node_name">Настоящим</xsl:when>
            <xsl:when test="'gar.order.5'=$node_name">код ЕГРПОУ</xsl:when>
            <xsl:when test="'gar.order.6'=$node_name">и</xsl:when>
            <xsl:when test="'gar.order.7'=$node_name">просят изменить дату исполнения гарантированного платежа (дату зачисления средств получателю) со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.9'=$node_name">Номер гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.10'=$node_name">Дата создания гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.11'=$node_name">Счет отправителя:</xsl:when>
            <xsl:when test="'gar.order.12'=$node_name">Наименование отправителя:</xsl:when>
            <xsl:when test="'gar.order.13'=$node_name">ЕГРПОУ отправителя:</xsl:when>
            <xsl:when test="'gar.order.14'=$node_name">Сумма платежа:</xsl:when>
            <xsl:when test="'gar.order.15'=$node_name">Дата зачисления средств получателю:</xsl:when>
            <xsl:when test="'gar.order.16'=$node_name">Данные получателя:</xsl:when>
            <xsl:when test="'gar.order.17'=$node_name">- счет:</xsl:when>
            <xsl:when test="'gar.order.18'=$node_name">- наименование:</xsl:when>
            <xsl:when test="'gar.order.19'=$node_name">- код ЕГРПОУ:</xsl:when>
            <xsl:when test="'gar.order.20'=$node_name">- код банка (МФО):</xsl:when>
            <xsl:when test="'gar.order.21'=$node_name">- назначение платежа:</xsl:when>
            <xsl:when test="'gar.order.22'=$node_name">Просим установить новую дату погашения кредита по услуге «Гарантированные платежи» и дату зачисления средств получателю –</xsl:when>
            <xsl:when test="'gar.order.23'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1. , 3.2.2  или отдельно заключенных с клиентом договоров, регулирующих предоставление кредита и/или услуги "Гарантированные платежи".</xsl:when>
            <xsl:when test="'gar.order.24'=$node_name">подписал данный документ электронно-цифровой подписью</xsl:when>
            <xsl:when test="'gar.order.25'=$node_name">в системе интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.26'=$node_name">Клиентом:</xsl:when>
            <xsl:when test="'gar.order.27'=$node_name">подписано в системе</xsl:when>
            <xsl:when test="'gar.order.28'=$node_name">интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.30'=$node_name">(заявка на отмену поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.32'=$node_name">просит отменить исполнение инициированного в его адрес гарантированного платежа, со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.33'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1, 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж".</xsl:when>
            <xsl:when test="'gar.order.34'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="uk">
        <xsl:param name="node_name" select="'title'"/>
        <xsl:choose>
            <xsl:when test="'title_news'=$node_name">Новини</xsl:when>

            <xsl:when test="'title_rests'=$node_name">Поточна інформація</xsl:when>
            <xsl:when test="'title_rests_adv'=$node_name">Приват24</xsl:when>

            <xsl:when test="'title_statements'=$node_name">Виписки</xsl:when>

            <xsl:when test="'title_reestr'=$node_name">Реєстр</xsl:when>

            <xsl:when test="'caption_refresh1'=$node_name">Йде запит для оновлення</xsl:when>
            <xsl:when test="'caption_refresh2'=$node_name">баланса. Просимо Вас зачекати</xsl:when>

            <xsl:when test="'caption_rests_refresh'=$node_name">Баланси по Вашим карткам/рахункам</xsl:when>
            <xsl:when test="'caption_rests_phones'=$node_name">Ваші телефони</xsl:when>
            <xsl:when test="'caption_rests_acc'=$node_name">Ваші рахунки</xsl:when>
            <xsl:when test="'caption_rests_card'=$node_name">Ваші картки</xsl:when>
            <xsl:when test="'caption_rests_dep'=$node_name">Ваші депозити</xsl:when>

            <xsl:when test="'caption_card'=$node_name">Реквізити картки</xsl:when>
            <xsl:when test="'caption_statements'=$node_name">Транзакції здійснені за зазначений період</xsl:when>

            <xsl:when test="'rests_refresh'=$node_name">Оновити баланс по ВСІМ рахункам</xsl:when>
            <xsl:when test="'rests_communal'=$node_name">Ви можете оплатити комунальні платежі ГІОЦ у розділі Платежі. Для одержання доступу до всіх можливостей Приват24 зареєструйтеся на сайте www.privatbank.ua</xsl:when>
            <xsl:when test="'dep_open'=$node_name">Відкрити депозит</xsl:when>

            <xsl:when test="'in_time'=$node_name">За період</xsl:when>
            <xsl:when test="'in_time_reestr'=$node_name">За дату</xsl:when>
            <xsl:when test="'in_time_adv'=$node_name">(дд.мм.рррр)</xsl:when>
            <xsl:when test="'select_card'=$node_name">Оберіть картку для показу виписок</xsl:when>
            <xsl:when test="'selected'=$node_name">Обрана</xsl:when>
            <xsl:when test="'selected_acc'=$node_name">Обраний</xsl:when>
            <xsl:when test="'delivery'=$node_name">Розсилка виписок на e-mail</xsl:when>

            <xsl:when test="'show'=$node_name">Показати</xsl:when>
            <xsl:when test="'subscribe'=$node_name">Підписатися</xsl:when>
            <xsl:when test="'unsubscribe'=$node_name">Відписатися</xsl:when>

            <xsl:when test="'statement'=$node_name">Виписка по рахунку №</xsl:when>
            <xsl:when test="'statement_currency'=$node_name">валюта</xsl:when>
            <xsl:when test="'before'=$node_name">за період з</xsl:when>
            <xsl:when test="'after'=$node_name">по</xsl:when>
            <xsl:when test="'received'=$node_name">отримано</xsl:when>
            <xsl:when test="'spent'=$node_name">витрачено</xsl:when>
            <xsl:when test="'statement_remainder'=$node_name">доступний залишок</xsl:when>
            <xsl:when test="'no_data'=$node_name">немає даних</xsl:when>

            <xsl:when test="'agent_code'=$node_name">ЕДРПОУ контрагента</xsl:when>
            <xsl:when test="'agent_name'=$node_name">Найменування<br/>контрагента</xsl:when>
            <xsl:when test="'agent_acc'=$node_name">Рахунок контрагента</xsl:when>
            <xsl:when test="'agent_bic'=$node_name">МФО контрагента</xsl:when>
            <xsl:when test="'operation'=$node_name">Операція</xsl:when>
            <xsl:when test="'payment'=$node_name">Платіж</xsl:when>
            <xsl:when test="'payment_info'=$node_name">Створити нове платіжне доручення у форматі НБУ</xsl:when>

            <xsl:when test="'total_doc'=$node_name">Всього документів</xsl:when>
            <xsl:when test="'in_amount'=$node_name">на суму</xsl:when>
            <xsl:when test="'currency_reestr'=$node_name">грн.</xsl:when>

            <xsl:when test="'phone_number'=$node_name">Номер телефона</xsl:when>
            <xsl:when test="'account_number'=$node_name">Номер рахунка</xsl:when>
            <xsl:when test="'account_name'=$node_name">Найменування рахунка</xsl:when>
            <xsl:when test="'rename_account'=$node_name">Перейменування рахунка</xsl:when>
            <xsl:when test="'refresh_account'=$node_name">Оновити баланс по рахунку</xsl:when>
            <xsl:when test="'card_number'=$node_name">Номер картки</xsl:when>
            <xsl:when test="'card_name'=$node_name">Найменування картки</xsl:when>
            <xsl:when test="'rename_card'=$node_name">Перейменування картки</xsl:when>
            <xsl:when test="'refresh_card'=$node_name">Оновити баланс по картці</xsl:when>
            <xsl:when test="'dep_name'=$node_name">Найменування</xsl:when>
            <xsl:when test="'percent'=$node_name">% ставка (річних)</xsl:when>
            <xsl:when test="'amount'=$node_name">Сума</xsl:when>
            <xsl:when test="'currency'=$node_name">Валюта</xsl:when>
            <xsl:when test="'in_remainder'=$node_name">Вх. залишок</xsl:when>
            <xsl:when test="'debet'=$node_name">Дебет</xsl:when>
            <xsl:when test="'credit'=$node_name">Кредит</xsl:when>
            <xsl:when test="'balance'=$node_name">Баланс</xsl:when>
            <xsl:when test="'inaccessible_balance'=$node_name">баланс недоступний</xsl:when>
            <xsl:when test="'remainder'=$node_name">Доступний залишок</xsl:when>
            <xsl:when test="'inaccessible_remainder'=$node_name">залишок недоступний</xsl:when>
            <xsl:when test="'motion'=$node_name">Рух</xsl:when>
            <xsl:when test="'motion_up'=$node_name">залишок збільшився</xsl:when>
            <xsl:when test="'motion_down'=$node_name">залишок зменшився</xsl:when>
            <xsl:when test="'motion_none'=$node_name">ні</xsl:when>

            <xsl:when test="'base_card_number'=$node_name">Номер основної картки</xsl:when>
            <xsl:when test="'card_type'=$node_name">Тип картки</xsl:when>
            <xsl:when test="'trade_limit'=$node_name">Торговельний ліміт</xsl:when>
            <xsl:when test="'fin_limit'=$node_name">Фінанс. ліміт</xsl:when>
            <xsl:when test="'status'=$node_name">Статус картки</xsl:when>
            <xsl:when test="'status_norm'=$node_name">відкрита</xsl:when>
            <xsl:when test="'status_deld'=$node_name">закрита</xsl:when>
            <xsl:when test="'number'=$node_name">№</xsl:when>
            <xsl:when test="'target'=$node_name">Призначення платежу</xsl:when>
            <xsl:when test="'wiring_date'=$node_name">Дата проводки</xsl:when>
            <xsl:when test="'auth_date'=$node_name">Дата авторизації</xsl:when>
            <xsl:when test="'terminal'=$node_name">Термінал</xsl:when>
            <xsl:when test="'shared_card'=$node_name">Транзакція з додаткової картки</xsl:when>

            <xsl:when test="'select_account'=$node_name">По рахунку</xsl:when>
            <xsl:when test="'payer_code'=$node_name">ЄДРПОУ платника</xsl:when>
            <xsl:when test="'payer_name'=$node_name">Найм. платника</xsl:when>
            <xsl:when test="'payer_account'=$node_name">Рахунок платника</xsl:when>
            <xsl:when test="'payer_bank_code'=$node_name">МФО платника</xsl:when>
            <xsl:when test="'receiver_code'=$node_name">ЄДРПОУ одержувача</xsl:when>
            <xsl:when test="'receiver_name'=$node_name">Найм. одержувача</xsl:when>
            <xsl:when test="'receiver_account'=$node_name">Рахунок одержувача</xsl:when>
            <xsl:when test="'receiver_bank_code'=$node_name">МФО одержувача</xsl:when>
            <xsl:when test="'reference'=$node_name">Референс</xsl:when>

            <xsl:when test="'new_name'=$node_name">Введіть нове ім&#8216;я рахунка:</xsl:when>
            <xsl:when test="'payment_doc'=$node_name">Платіжне доручення</xsl:when>
            <xsl:when test="'payment_doc2'=$node_name">Меморіальний ордер</xsl:when>
            <xsl:when test="'print_doc'=$node_name"> Для друку платіжного дорученн натисніть Ctrl+P.</xsl:when>
            <xsl:when test="'msg_date'=$node_name">Поле "За дату" невірно заповнено. Воно не повинно бути порожнім та \nмає містити в собі дату у вигляді "дд.мм.рррр". Спопробуйте ще раз.</xsl:when>

            <xsl:when test="'contact.info.ab'=$node_name">Для замовлення зустрічі зі співробітником надішліть SMS з кодом 0739 на номер 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ua'=$node_name">Для замовлення зустрічі зі співробітником надішліть SMS з кодом 2555 на номер 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ru'=$node_name">Для замовлення зустрічі зі співробітником надішліть SMS з кодом 0740 на номер 1255</xsl:when>
            <xsl:when test="'contact.info.pb.ge'=$node_name">Для замовлення зустрічі зі співробітником надішліть SMS з кодом 0741 на номер 3366</xsl:when>

            <xsl:when test="'print.btn'=$node_name">Повідомлення про гарантований платіж</xsl:when>

            <xsl:when test="'garlist.btn'=$node_name">Заявка на гарантований платіж </xsl:when>
            <xsl:when test="'garlist.dog'=$node_name">(доручення на договірне списання)</xsl:when>
            <xsl:when test="'garlist.numdoc'=$node_name">Номер заявки: </xsl:when>
            <xsl:when test="'garlist.dcreate'=$node_name">Дата заявки:  </xsl:when>
            <xsl:when test="'garlist.aacc'=$node_name">Рахунок відправника: </xsl:when>
            <xsl:when test="'garlist.anam'=$node_name">Найменування відправника:  </xsl:when>
            <xsl:when test="'garlist.acrf'=$node_name">ЕДРПОУ відправника: </xsl:when>
            <xsl:when test="'garlist.summ'=$node_name">Сума платежу:   </xsl:when>
            <xsl:when test="'garlist.summlich'=$node_name">  UAH, в тому числі за рахунок власних коштів </xsl:when>
            <xsl:when test="'garlist.summlich.ge'=$node_name"> GEL, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summcred'=$node_name">  UAH, за рахунок кредитних коштів   </xsl:when>
            <xsl:when test="'garlist.summcred.ge'=$node_name"> GEL, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.datend'=$node_name">Дата зарахування коштів одержувачу:    </xsl:when>
            <xsl:when test="'garlist.datarec'=$node_name">Відомості про одержувача:  </xsl:when>
            <xsl:when test="'garlist.bacc'=$node_name">- рахунок:     </xsl:when>
            <xsl:when test="'garlist.bname'=$node_name">- найменування:  </xsl:when>
            <xsl:when test="'garlist.bcrf'=$node_name">- код ЕДРПОУ:   </xsl:when>
            <xsl:when test="'garlist.bbic'=$node_name">- код банку (МФО):  </xsl:when>
            <xsl:when test="'garlist.osmd'=$node_name">- призначення платежу:  </xsl:when>
            <xsl:when test="'garlist.text1'=$node_name">Операція(ії) за заявкою виконуються відповідно до "Умов та правил надання банківських послуг" - розділ 3.1.1, розділ 3.2.2 або окремо укладених з клієнтом договорів, що регулюють надання послуги "Гарантовані платежі". </xsl:when>
            <xsl:when test="'garlist.text1.2'=$node_name">У разі, якщо виконання цієї заявки здійснюється з використанням наданих </xsl:when>
            <xsl:when test="'garlist.text1.2.1'=$node_name"> кредитних коштів, то дана заявка, разом з Умовами та Правилами надання банківських послуг і Тарифами ПриватБанку, становлять кредитно-заставний договір </xsl:when>
            <xsl:when test="'garlist.text1.2.2'=$node_name">(застава згідно п.3.2.2.4. Умов і Правил надання банківських послуг)</xsl:when>

            <xsl:when test="'garlist.text1.2.3'=$node_name">Термін повернення кредиту:</xsl:when>
            <xsl:when test="'garlist.text1.2.4'=$node_name">Платність, умови повернення, забезпечення - згідно розділу 3.2.2 «Умови та правила надання банківських послуг» або окремо укладених з клієнтом кредитних договорів, що регулюють надання кредиту на проведення гарантованих платежів.</xsl:when>

            <xsl:when test="'garlist.text1.ge'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг"- разделы 3.1.2 и 3.16, регулирующих предоставление услуги «Гарантированные платежи». В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных PrivatBank кредитных средств, то данная заявка, вместе с "Условиями и Правилами предоставления банковских услуг" и Тарифами ПриватБанка составляют кредитный договор. </xsl:when>
            <xsl:when test="'garlist.text11'=$node_name">Підписавши цю заявку </xsl:when>
            <xsl:when test="'garlist.text2'=$node_name"> приєднується і погоджується з умовами, викладеними в Умовах та Правилах надання банківських послуг, Тарифах </xsl:when>
            <xsl:when test="'garlist.text2.1'=$node_name">, які розміщені на офіційному сайті Банку </xsl:when>
            <xsl:when test="'garlist.text2.2'=$node_name">. Ця Заявка на гарантований платіж є дорученням </xsl:when>
            <xsl:when test="'garlist.text3'=$node_name"> на списання коштів в оплату за господарським договором та/або по рахунку: </xsl:when>
            <xsl:when test="'garlist.text4'=$node_name">  підписав цей документ електронно-цифровим підписом   </xsl:when>
            <xsl:when test="'garlist.text5'=$node_name">  в системі інтернет-клієнт-банк Приват24  </xsl:when>
            <xsl:when test="'garlist.text6'=$node_name">Клієнтом підписано в системі інтернет-клієнт-банк Приват24  </xsl:when>
            <xsl:when test="'garlist.textmfo'=$node_name">  МФО </xsl:when>
            <xsl:when test="'garlist.textabank'=$node_name">ПАТ КБ "А-Банк" </xsl:when>
            <xsl:when test="'garlist.textprivat'=$node_name">ПАТ КБ "ПриватБанк" </xsl:when>

            <xsl:when test="'cassOrder.title.in'=$node_name">Прибутковий ордер</xsl:when>
            <xsl:when test="'cassOrder.title.out'=$node_name">Видатковий ордер</xsl:when>

            <xsl:when test="'gar.alert.1'=$node_name">вул. Батумська, 11,</xsl:when>
            <xsl:when test="'gar.alert.2'=$node_name">м. Дніпропетровськ, 49074, Україна</xsl:when>
            <xsl:when test="'gar.alert.1.ge'=$node_name">пр.Церетели 114,</xsl:when>
            <xsl:when test="'gar.alert.2.ge'=$node_name">г. Тбилиси, Грузия</xsl:when>
            <xsl:when test="'gar.alert.3'=$node_name">вул. Набережна Перемоги, 50,</xsl:when>
            <xsl:when test="'gar.alert.4'=$node_name">м. Дніпропетровськ, 49094, Україна</xsl:when>
            <xsl:when test="'gar.alert.5'=$node_name">Шановний клієнте!</xsl:when>
            <xsl:when test="'gar.alert.6'=$node_name">А-Банк </xsl:when>
            <xsl:when test="'gar.alert.7'=$node_name">ПриватБанк </xsl:when>
            <xsl:when test="'gar.alert.8'=$node_name">підтверджує, що </xsl:when>
            <xsl:when test="'gar.alert.10'=$node_name"> року підприємство </xsl:when>
            <xsl:when test="'gar.alert.11'=$node_name"> виставило на користь </xsl:when>
            <xsl:when test="'gar.alert.12'=$node_name"> гарантований банком платіж з такими параметрами:</xsl:when>
            <xsl:when test="'gar.alert.13'=$node_name">номер платіжного доручення</xsl:when>
            <xsl:when test="'gar.alert.14'=$node_name">сума</xsl:when>
            <xsl:when test="'gar.alert.15'=$node_name">дата виконання (зарахування коштів на розрахунковий рахунок одержувача)</xsl:when>
            <xsl:when test="'gar.alert.16'=$node_name">відправник</xsl:when>
            <xsl:when test="'gar.alert.17'=$node_name">рахунок відправника</xsl:when>
            <xsl:when test="'gar.alert.18'=$node_name">призначення платежу</xsl:when>
            <xsl:when test="'gar.alert.19'=$node_name">Кошти вже зараховано на рахункок </xsl:when>
            <xsl:when test="'gar.alert.20'=$node_name">що в </xsl:when>
            <xsl:when test="'gar.alert.21'=$node_name"> А-Банку</xsl:when>
            <xsl:when test="'gar.alert.22'=$node_name"> ПриватБанку</xsl:when>

            <xsl:when test="'gar.alert.23'=$node_name">Це означає, що гроші обов’язково буде зараховано на розрахунковий рахунок підприємства </xsl:when>
            <xsl:when test="'gar.alert.24'=$node_name"> в дату виконання платежу – </xsl:when>
            <xsl:when test="'gar.alert.25'=$node_name">Ви можете вже зараз діяти згідно з домовленостями із Вашим партнером у рамках зазначеного платежу.</xsl:when>
            <xsl:when test="'gar.alert.26'=$node_name">Використовуйте гарантовані платежі в розрахунках зі своїми партнерами! Так Ви отримуєте 100%-ву гарантію від </xsl:when>
            <xsl:when test="'gar.alert.27'=$node_name">А-Банку</xsl:when>
            <xsl:when test="'gar.alert.28'=$node_name">ПриватБанку</xsl:when>
            <xsl:when test="'gar.alert.29'=$node_name">, що поставку товару (надані послуги) буде оплачено у визначений строк. До того ж Ви збільшите обсяги продажів і кількість покупців.</xsl:when>
            <xsl:when test="'gar.alert.30'=$node_name">Детальніше про послугу «Гарантовані платежі – кредит під 4% річних» – на </xsl:when>
            <xsl:when test="'gar.alert.31'=$node_name">Консультації щодо гарантованих платежів – без перерв і вихідних:</xsl:when>

            <xsl:when test="'gar.alert.32'=$node_name">тел. </xsl:when>
            <xsl:when test="'gar.alert.33'=$node_name"> (безкоштовно з мобільного), чат: </xsl:when>
            <xsl:when test="'gar.alert.33.ge'=$node_name"> (стоимость звонков – согласно тарифам Вашего оператора).</xsl:when>
            <xsl:when test="'gar.alert.34'=$node_name">З повагою, </xsl:when>
            <xsl:when test="'gar.alert.35'=$node_name">Голова Правління А-Банку</xsl:when>
            <xsl:when test="'gar.alert.36'=$node_name">Голова Правління ПриватБанку</xsl:when>
            <xsl:when test="'gar.alert.37'=$node_name">Н.А. Малихіна</xsl:when>
            <xsl:when test="'gar.alert.38'=$node_name">О.В. Дубiлет</xsl:when>
            <xsl:when test="'gar.alert.38.ge'=$node_name">Ю.В. Кандауров</xsl:when>
            <xsl:when test="'gar.alert.39'=$node_name">Ліцензія НБУ № 16 від 26.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.40'=$node_name">Ліцензія НБУ № 22 від 05.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.41'=$node_name">ЄДРПОУ </xsl:when>
            <xsl:when test="'gar.alert.42'=$node_name"> грн. </xsl:when>
            <xsl:when test="'gar.alert.42.ge'=$node_name"> лари. </xsl:when>
            <xsl:when test="'gar.alert.43'=$node_name"> року</xsl:when>

            <xsl:when test="'gar.order.1'=$node_name">Заявка на внесення змін</xsl:when>
            <xsl:when test="'gar.order.2'=$node_name">в гарантований платіж</xsl:when>
            <xsl:when test="'gar.order.3'=$node_name">(заявка на зміну дати виконання доручення на договірне списання)</xsl:when>
            <xsl:when test="'gar.order.4'=$node_name">Цим</xsl:when>
            <xsl:when test="'gar.order.5'=$node_name">код ЄДРПОУ</xsl:when>
            <xsl:when test="'gar.order.6'=$node_name">та</xsl:when>
            <xsl:when test="'gar.order.7'=$node_name">просять змінити дату виконання гарантованого платежу (дату зарахування коштів одержувачу) з наступними реквізитами:</xsl:when>
            <xsl:when test="'gar.order.9'=$node_name">Номер гарантованого платежу:</xsl:when>
            <xsl:when test="'gar.order.10'=$node_name">Дата створення гарантованого платежу:</xsl:when>
            <xsl:when test="'gar.order.11'=$node_name">Рахунок відправника:</xsl:when>
            <xsl:when test="'gar.order.12'=$node_name">Найменування відправника:</xsl:when>
            <xsl:when test="'gar.order.13'=$node_name">ЄДРПОУ відправника:</xsl:when>
            <xsl:when test="'gar.order.14'=$node_name">Сума платежу:</xsl:when>
            <xsl:when test="'gar.order.15'=$node_name">Дата зарахування коштів одержувачу:</xsl:when>
            <xsl:when test="'gar.order.16'=$node_name">Одержувач:</xsl:when>
            <xsl:when test="'gar.order.17'=$node_name">- рахунок:</xsl:when>
            <xsl:when test="'gar.order.18'=$node_name">- найменування:</xsl:when>
            <xsl:when test="'gar.order.19'=$node_name">- код ЄДРПОУ:</xsl:when>
            <xsl:when test="'gar.order.20'=$node_name">- код банку (МФО):</xsl:when>
            <xsl:when test="'gar.order.21'=$node_name">- призначення платежу:</xsl:when>
            <xsl:when test="'gar.order.22'=$node_name">Просимо встановити нову дату погашення кредиту за послугою «Гарантовані платежі» і дату зарахування коштів одержувачу –</xsl:when>
            <xsl:when test="'gar.order.23'=$node_name">Операція (іі) за заявкою виконуються відповідно до "Умов та правил надання банківських послуг", розділ 3.1.1, 3.2.2 або окремо укладених з клієнтом договорів, що регулюють надання послуги "Гарантований платіж".</xsl:when>
            <xsl:when test="'gar.order.24'=$node_name">підписав цей документ електронно-цифровим підписом</xsl:when>
            <xsl:when test="'gar.order.25'=$node_name">в системі інтернет-клієнт-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.26'=$node_name">Клієнтом:</xsl:when>
            <xsl:when test="'gar.order.27'=$node_name">підписано в системі</xsl:when>
            <xsl:when test="'gar.order.28'=$node_name">інтернет-клієнт-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.30'=$node_name">(заявка на скасування доручення на договірне списання)</xsl:when>
            <xsl:when test="'gar.order.32'=$node_name">просить скасувати виконання ініційованого на його адресу гарантованого платежу, з наступними реквізитами:</xsl:when>
            <xsl:when test="'gar.order.33'=$node_name">Операція (іі) за заявкою виконуються відповідно до "Умов та правил надання банківських послуг", розділ 3.1.1, 3.2.2 або окремо укладених з клієнтом договорів, що регулюють надання послуги "Гарантований платіж"</xsl:when>
            <xsl:when test="'gar.order.34'=$node_name">Клієнтом підписано в системі інтернет-клієнт-банк Приват24</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="en">
        <xsl:param name="node_name" select="'title'"/>
        <xsl:choose>
            <xsl:when test="'title_news'=$node_name">News</xsl:when>

            <xsl:when test="'title_rests'=$node_name">Current information</xsl:when>
            <xsl:when test="'title_rests_adv'=$node_name">Privat24</xsl:when>

            <xsl:when test="'title_statements'=$node_name">Statement</xsl:when>

            <xsl:when test="'title_reestr'=$node_name">Register</xsl:when>

            <xsl:when test="'caption_refresh1'=$node_name">There is a request to update the</xsl:when>
            <xsl:when test="'caption_refresh2'=$node_name">balance. Wait please</xsl:when>

            <xsl:when test="'caption_rests_refresh'=$node_name">The balances on your cards / accounts</xsl:when>
            <xsl:when test="'caption_rests_phones'=$node_name">Your phones</xsl:when>
            <xsl:when test="'caption_rests_acc'=$node_name">Your accounts</xsl:when>
            <xsl:when test="'caption_rests_card'=$node_name">Your cards</xsl:when>
            <xsl:when test="'caption_rests_dep'=$node_name">Your deposits</xsl:when>

            <xsl:when test="'caption_card'=$node_name">Details cards</xsl:when>
            <xsl:when test="'caption_statements'=$node_name">The transactions carried out during the period</xsl:when>

            <xsl:when test="'rests_refresh'=$node_name">Update balances on the accounts ALL</xsl:when>
            <xsl:when test="'rests_communal'=$node_name">Вы можете оплатить коммунальные платежи ГИВЦ в разделе Платежи. Для получения доступа ко всем возможностям Приват24 зарегистрируйтесь на сайте www.privatbank.ua</xsl:when>
            <xsl:when test="'dep_open'=$node_name">Open deposit</xsl:when>

            <xsl:when test="'in_time'=$node_name">For period</xsl:when>
            <xsl:when test="'in_time_reestr'=$node_name">For a date</xsl:when>
            <xsl:when test="'in_time_adv'=$node_name">(dd.mm.yyyy)</xsl:when>
            <xsl:when test="'select_card'=$node_name">Choose a card for the formation of the bank statements</xsl:when>
            <xsl:when test="'selected'=$node_name">Selected</xsl:when>
            <xsl:when test="'selected_acc'=$node_name">Selected</xsl:when>
            <xsl:when test="'delivery'=$node_name">Subscriptions statements on e-mail</xsl:when>

            <xsl:when test="'show'=$node_name">Show</xsl:when>
            <xsl:when test="'subscribe'=$node_name">Subscribe</xsl:when>
            <xsl:when test="'unsubscribe'=$node_name">Unsubscribe</xsl:when>

            <xsl:when test="'statement'=$node_name">Statement from the account №</xsl:when>
            <xsl:when test="'statement_currency'=$node_name">currency</xsl:when>
            <xsl:when test="'before'=$node_name">for period with</xsl:when>
            <xsl:when test="'after'=$node_name">on</xsl:when>
            <xsl:when test="'received'=$node_name">Credit</xsl:when>
            <xsl:when test="'spent'=$node_name">Debit</xsl:when>
            <xsl:when test="'statement_remainder'=$node_name">available balance</xsl:when>
            <xsl:when test="'no_data'=$node_name">No data</xsl:when>

            <xsl:when test="'agent_code'=$node_name">Code beneficiary</xsl:when>
            <xsl:when test="'agent_name'=$node_name">Name<br/>beneficiary</xsl:when>
            <xsl:when test="'agent_acc'=$node_name">Account beneficiary</xsl:when>
            <xsl:when test="'agent_bic'=$node_name">Code bank beneficiary</xsl:when>
            <xsl:when test="'operation'=$node_name">Operation</xsl:when>
            <xsl:when test="'payment'=$node_name">Payment</xsl:when>
            <xsl:when test="'payment_info'=$node_name">Create a new payment in the format NBU</xsl:when>

            <xsl:when test="'total_doc'=$node_name">Total documents</xsl:when>
            <xsl:when test="'in_amount'=$node_name">in the amount of</xsl:when>
            <xsl:when test="'currency_reestr'=$node_name">UAH.</xsl:when>

            <xsl:when test="'phone_number'=$node_name">Phone Number</xsl:when>
            <xsl:when test="'account_number'=$node_name">Account Number</xsl:when>
            <xsl:when test="'account_name'=$node_name">Name account</xsl:when>
            <xsl:when test="'rename_account'=$node_name">Renaming accounts</xsl:when>
            <xsl:when test="'refresh_account'=$node_name">Update the account balance</xsl:when>
            <xsl:when test="'card_number'=$node_name">Card Number</xsl:when>
            <xsl:when test="'card_name'=$node_name">Name cards</xsl:when>
            <xsl:when test="'rename_card'=$node_name">Renaming Card</xsl:when>
            <xsl:when test="'refresh_card'=$node_name">Update balance on the card</xsl:when>
            <xsl:when test="'dep_name'=$node_name">Name</xsl:when>
            <xsl:when test="'percent'=$node_name">% rate (annual)</xsl:when>
            <xsl:when test="'amount'=$node_name">Amount</xsl:when>
            <xsl:when test="'currency'=$node_name">Currency</xsl:when>
            <xsl:when test="'in_remainder'=$node_name">Вх. остаток</xsl:when>
            <xsl:when test="'debet'=$node_name">Debit</xsl:when>
            <xsl:when test="'credit'=$node_name">Credit</xsl:when>
            <xsl:when test="'balance'=$node_name">Balance</xsl:when>
            <xsl:when test="'inaccessible_balance'=$node_name">balance is not available</xsl:when>
            <xsl:when test="'remainder'=$node_name">Available balance</xsl:when>
            <xsl:when test="'inaccessible_remainder'=$node_name">balance is not available</xsl:when>
            <xsl:when test="'motion'=$node_name">Changing</xsl:when>
            <xsl:when test="'motion_up'=$node_name">balance increased</xsl:when>
            <xsl:when test="'motion_down'=$node_name">balance decreased</xsl:when>
            <xsl:when test="'motion_none'=$node_name">No</xsl:when>

            <xsl:when test="'base_card_number'=$node_name">Number of main card</xsl:when>
            <xsl:when test="'card_type'=$node_name">Card Type</xsl:when>
            <xsl:when test="'trade_limit'=$node_name">Trading Limit</xsl:when>
            <xsl:when test="'fin_limit'=$node_name">Financial limit</xsl:when>
            <xsl:when test="'status'=$node_name">Status Cards</xsl:when>
            <xsl:when test="'status_norm'=$node_name">open</xsl:when>
            <xsl:when test="'status_deld'=$node_name">closed</xsl:when>
            <xsl:when test="'number'=$node_name">№</xsl:when>
            <xsl:when test="'target'=$node_name">Details of payment</xsl:when>
            <xsl:when test="'wiring_date'=$node_name">Data wiring</xsl:when>
            <xsl:when test="'auth_date'=$node_name">Data Authentication</xsl:when>
            <xsl:when test="'terminal'=$node_name">Terminal</xsl:when>
            <xsl:when test="'shared_card'=$node_name">Transaction with additional cards</xsl:when>

            <xsl:when test="'select_account'=$node_name">On account</xsl:when>
            <xsl:when test="'payer_code'=$node_name">Code of payer</xsl:when>
            <xsl:when test="'payer_name'=$node_name">Name of payer</xsl:when>
            <xsl:when test="'payer_account'=$node_name">Account payer</xsl:when>
            <xsl:when test="'payer_bank_code'=$node_name">Code bank of payer</xsl:when>
            <xsl:when test="'receiver_code'=$node_name">Code beneficiary</xsl:when>
            <xsl:when test="'receiver_name'=$node_name">Name beneficiary</xsl:when>
            <xsl:when test="'receiver_account'=$node_name">Account beneficiary</xsl:when>
            <xsl:when test="'receiver_bank_code'=$node_name">Code bank beneficiary</xsl:when>
            <xsl:when test="'reference'=$node_name">Reference</xsl:when>

            <xsl:when test="'new_name'=$node_name">Enter a new name accounts:</xsl:when>
            <xsl:when test="'payment_doc'=$node_name">Payment Order</xsl:when>
            <xsl:when test="'payment_doc2'=$node_name">Мемориальный ордер</xsl:when>
            <xsl:when test="'print_doc'=$node_name"> To print the payment order, press Ctrl+P.</xsl:when>
            <xsl:when test="'msg_date'=$node_name">The field "For a date" is wrong filled. It must not be empty and \nmust contain a date as "dd.mm.yyyy". Try again.</xsl:when>

            <xsl:when test="'contact.info.ab'=$node_name">To order the meeting with our manager - please send the message 0739 to the number 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ua'=$node_name">To order the meeting with our manager - please send the message 2555 to the number 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ru'=$node_name">To order the meeting with our manager - please send the message 0740 to the number 1255</xsl:when>
            <xsl:when test="'contact.info.pb.ge'=$node_name">To order the meeting with our manager - please send the message 0741 to the number 3366</xsl:when>

            <xsl:when test="'print.btn'=$node_name">Notice of guaranteed payment</xsl:when>

            <xsl:when test="'garlist.btn'=$node_name">Заявка на гарантированный платеж </xsl:when>
            <xsl:when test="'garlist.dog'=$node_name">(поручение  на договорное списание)</xsl:when>
            <xsl:when test="'garlist.numdoc'=$node_name">Номер заявки: </xsl:when>
            <xsl:when test="'garlist.dcreate'=$node_name">Дата заявки: </xsl:when>
            <xsl:when test="'garlist.aacc'=$node_name">Счет отправителя: </xsl:when>
            <xsl:when test="'garlist.anam'=$node_name">Наименование отправителя: </xsl:when>
            <xsl:when test="'garlist.acrf'=$node_name">ЕГРПОУ отправителя: </xsl:when>
            <xsl:when test="'garlist.summ'=$node_name">Сумма платежа:  </xsl:when>
            <xsl:when test="'garlist.summlich'=$node_name"> UAH, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summlich.ge'=$node_name"> GEL, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summcred'=$node_name"> UAH, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.summcred.ge'=$node_name"> GEL, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.datend'=$node_name">Дата зачисления средств получателю:    </xsl:when>
            <xsl:when test="'garlist.datarec'=$node_name">Данные получателя:  </xsl:when>
            <xsl:when test="'garlist.bacc'=$node_name">- счет:    </xsl:when>
            <xsl:when test="'garlist.bname'=$node_name">- наименование: </xsl:when>
            <xsl:when test="'garlist.bcrf'=$node_name">- код ЕГРПОУ:  </xsl:when>
            <xsl:when test="'garlist.bbic'=$node_name">- код банка (МФО): </xsl:when>
            <xsl:when test="'garlist.osmd'=$node_name">- назначение платежа: </xsl:when>
            <xsl:when test="'garlist.text1'=$node_name">Операция(ии)  по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг" - раздел 3.1.1, раздел 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж". </xsl:when>
            <xsl:when test="'garlist.text1.2'=$node_name">В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных </xsl:when>
            <xsl:when test="'garlist.text1.2.1'=$node_name"> кредитных средств, то данная заявка, вместе с Условиями и Правилами предоставления банковских услуг, Тарифами банка, составляют кредитно-залоговый договор </xsl:when>
            <xsl:when test="'garlist.text1.2.2'=$node_name">(залог согласно п.3.2.2.4. Условий и Правил предоставления банковских услуг)</xsl:when>

            <xsl:when test="'garlist.text1.2.3'=$node_name">Срок возврата кредита:</xsl:when>
            <xsl:when test="'garlist.text1.2.4'=$node_name">Платность, условие возврата, обеспечение – согласно раздела 3.2.2 «Условия и правила предоставления банковских услуг» или отдельно заключенных с клиентом кредитных договоров, регулирующих предоставление кредита на проведение гарантированных платежей.</xsl:when>

            <xsl:when test="'garlist.text1.ge'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг"- разделы 3.1.2 и 3.16, регулирующих предоставление услуги «Гарантированные платежи». В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных PrivatBank кредитных средств, то данная заявка, вместе с "Условиями и Правилами предоставления банковских услуг" и Тарифами ПриватБанка составляют кредитный договор. </xsl:when>
            <xsl:when test="'garlist.text11'=$node_name">Подписав настоящую заявку </xsl:when>
            <xsl:when test="'garlist.text2'=$node_name"> присоединяется и соглашается с условиями, изложенными в Условиях и Правилах предоставления банковских услуг, Тарифах </xsl:when>
            <xsl:when test="'garlist.text2.1'=$node_name">, которые размещены на официальном сайте Банка </xsl:when>
            <xsl:when test="'garlist.text2.2'=$node_name">. Настоящая Заявка на гарантированный платеж является поручением </xsl:when>
            <xsl:when test="'garlist.text3'=$node_name"> на списание денежных средств в оплату по хозяйственному договору и/или счету:  </xsl:when>
            <xsl:when test="'garlist.text4'=$node_name">   подписал данный документ электронно-цифровой подписью </xsl:when>
            <xsl:when test="'garlist.text5'=$node_name"> в системе интернет-клиент-банк Приват24 </xsl:when>
            <xsl:when test="'garlist.text6'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24 </xsl:when>
            <xsl:when test="'garlist.textmfo'=$node_name"> МФО </xsl:when>
            <xsl:when test="'garlist.textabank'=$node_name">ПАТ КБ "А-Банк" </xsl:when>
            <xsl:when test="'garlist.textprivat'=$node_name">ПАТ КБ "ПриватБанк" </xsl:when>

            <xsl:when test="'cassOrder.title.in'=$node_name">Приходный ордер</xsl:when>
            <xsl:when test="'cassOrder.title.out'=$node_name">Расходный ордер</xsl:when>
            <xsl:when test="'gar.alert.1'=$node_name">ул. Батумская, 11,</xsl:when>
            <xsl:when test="'gar.alert.2'=$node_name">г. Днепропетровск, 49074, Украина</xsl:when>
            <xsl:when test="'gar.alert.1.ge'=$node_name">пр.Церетели 114,</xsl:when>
            <xsl:when test="'gar.alert.2.ge'=$node_name">г. Тбилиси, Грузия</xsl:when>
            <xsl:when test="'gar.alert.3'=$node_name">ул. Набережная Победы, 50,</xsl:when>
            <xsl:when test="'gar.alert.4'=$node_name">г. Днепропетровск, 49094, Украина</xsl:when>
            <xsl:when test="'gar.alert.5'=$node_name">Уважаемый клиент!</xsl:when>
            <xsl:when test="'gar.alert.6'=$node_name">А-Банк </xsl:when>
            <xsl:when test="'gar.alert.7'=$node_name">ПриватБанк </xsl:when>
            <xsl:when test="'gar.alert.8'=$node_name">подтверждает, что </xsl:when>
            <xsl:when test="'gar.alert.10'=$node_name"> года предприятие </xsl:when>
            <xsl:when test="'gar.alert.11'=$node_name"> выставило в пользу </xsl:when>
            <xsl:when test="'gar.alert.12'=$node_name"> гарантированный банком платеж со следующими параметрами:</xsl:when>
            <xsl:when test="'gar.alert.13'=$node_name">номер платежного поручения</xsl:when>
            <xsl:when test="'gar.alert.14'=$node_name">сумма</xsl:when>
            <xsl:when test="'gar.alert.15'=$node_name">дата исполнения (зачисления средств на расчетный счет получателя)</xsl:when>
            <xsl:when test="'gar.alert.16'=$node_name">отправитель</xsl:when>
            <xsl:when test="'gar.alert.17'=$node_name">счет отправителя</xsl:when>
            <xsl:when test="'gar.alert.18'=$node_name">назначение платежа</xsl:when>
            <xsl:when test="'gar.alert.19'=$node_name">Средства уже зачислены на счет </xsl:when>
            <xsl:when test="'gar.alert.20'=$node_name">открытый в </xsl:when>
            <xsl:when test="'gar.alert.21'=$node_name"> А-Банке</xsl:when>
            <xsl:when test="'gar.alert.22'=$node_name"> ПриватБанке</xsl:when>

            <xsl:when test="'gar.alert.23'=$node_name">Это означает, что деньги в обязательном порядке будут зачислены на расчетный счет предприятия </xsl:when>
            <xsl:when test="'gar.alert.24'=$node_name"> в дату исполнения платежа - </xsl:when>
            <xsl:when test="'gar.alert.25'=$node_name">Вы можете уже сейчас осуществлять действия, предусмотренные договоренностями с Вашим партнером в рамках указанного платежа.</xsl:when>
            <xsl:when test="'gar.alert.26'=$node_name">Используйте гарантированные платежи в расчетах со своими партнерами! Так Вы получаете 100%-ную гарантию от </xsl:when>
            <xsl:when test="'gar.alert.27'=$node_name">А-Банка</xsl:when>
            <xsl:when test="'gar.alert.28'=$node_name">ПриватБанка</xsl:when>
            <xsl:when test="'gar.alert.29'=$node_name">, что поставка товара (предоставленные услуги) будет оплачена в оговоренный срок. К тому же Вы увеличите объемы продаж и количество покупателей.</xsl:when>
            <xsl:when test="'gar.alert.30'=$node_name">Подробнее об услуге «Гарантированные платежи – кредит под 4% годовых» – на </xsl:when>
            <xsl:when test="'gar.alert.31'=$node_name">Консультации по гарантированным платежам – без перерывов и выходных:</xsl:when>

            <xsl:when test="'gar.alert.32'=$node_name">тел. </xsl:when>
            <xsl:when test="'gar.alert.33'=$node_name"> (бесплатно с мобильного), чат: </xsl:when>
            <xsl:when test="'gar.alert.33.ge'=$node_name"> (стоимость звонков – согласно тарифам Вашего оператора).</xsl:when>
            <xsl:when test="'gar.alert.34'=$node_name">С уважением, </xsl:when>
            <xsl:when test="'gar.alert.35'=$node_name">Председатель Правления А-Банка</xsl:when>
            <xsl:when test="'gar.alert.36'=$node_name">Председатель Правления ПриватБанка</xsl:when>
            <xsl:when test="'gar.alert.37'=$node_name">Н.А.Малыхина</xsl:when>
            <xsl:when test="'gar.alert.38'=$node_name">А.В. Дубилет</xsl:when>
            <xsl:when test="'gar.alert.38.ge'=$node_name">Ю.В. Кандауров</xsl:when>
            <xsl:when test="'gar.alert.39'=$node_name">Лицензия НБУ № 16 от 26.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.40'=$node_name">Лицензия НБУ № 22 от 05.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.41'=$node_name">ЕГРПОУ </xsl:when>
            <xsl:when test="'gar.alert.42'=$node_name"> грн. </xsl:when>
            <xsl:when test="'gar.alert.42.ge'=$node_name"> лари. </xsl:when>
            <xsl:when test="'gar.alert.43'=$node_name"> года</xsl:when>

            <xsl:when test="'gar.order.1'=$node_name">Заявка на внесение изменений</xsl:when>
            <xsl:when test="'gar.order.2'=$node_name">в гарантированный платеж</xsl:when>
            <xsl:when test="'gar.order.3'=$node_name">(заявка на изменение даты исполнения поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.4'=$node_name">Настоящим</xsl:when>
            <xsl:when test="'gar.order.5'=$node_name">код ЕГРПОУ</xsl:when>
            <xsl:when test="'gar.order.6'=$node_name">и</xsl:when>
            <xsl:when test="'gar.order.7'=$node_name">просят изменить дату исполнения гарантированного платежа (дату зачисления средств получателю) со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.9'=$node_name">Номер гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.10'=$node_name">Дата создания гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.11'=$node_name">Счет отправителя:</xsl:when>
            <xsl:when test="'gar.order.12'=$node_name">Наименование отправителя:</xsl:when>
            <xsl:when test="'gar.order.13'=$node_name">ЕГРПОУ отправителя:</xsl:when>
            <xsl:when test="'gar.order.14'=$node_name">Сумма платежа:</xsl:when>
            <xsl:when test="'gar.order.15'=$node_name">Дата зачисления средств получателю:</xsl:when>
            <xsl:when test="'gar.order.16'=$node_name">Данные получателя:</xsl:when>
            <xsl:when test="'gar.order.17'=$node_name">- счет:</xsl:when>
            <xsl:when test="'gar.order.18'=$node_name">- наименование:</xsl:when>
            <xsl:when test="'gar.order.19'=$node_name">- код ЕГРПОУ:</xsl:when>
            <xsl:when test="'gar.order.20'=$node_name">- код банка (МФО):</xsl:when>
            <xsl:when test="'gar.order.21'=$node_name">- назначение платежа:</xsl:when>
            <xsl:when test="'gar.order.22'=$node_name">Просим установить новую дату погашения кредита по услуге «Гарантированные платежи» и дату зачисления средств получателю –</xsl:when>
            <xsl:when test="'gar.order.23'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1. , 3.2.2  или отдельно заключенных с клиентом договоров, регулирующих предоставление кредита и/или услуги "Гарантированные платежи".</xsl:when>
            <xsl:when test="'gar.order.24'=$node_name">подписал данный документ электронно-цифровой подписью</xsl:when>
            <xsl:when test="'gar.order.25'=$node_name">в системе интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.26'=$node_name">Клиентом:</xsl:when>
            <xsl:when test="'gar.order.27'=$node_name">подписано в системе</xsl:when>
            <xsl:when test="'gar.order.28'=$node_name">интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.30'=$node_name">(заявка на отмену поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.32'=$node_name">просит отменить исполнение инициированного в его адрес гарантированного платежа, со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.33'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1, 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж".</xsl:when>
            <xsl:when test="'gar.order.34'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="ka">
        <xsl:param name="node_name" select="'title'"/>
        <xsl:choose>
            <xsl:when test="'title_news'=$node_name">სიახლე</xsl:when>

            <xsl:when test="'title_rests'=$node_name">მიმდინარე ინფორმაცია</xsl:when>
            <xsl:when test="'title_rests_adv'=$node_name">პრივატ 24</xsl:when>

            <xsl:when test="'title_statements'=$node_name">ამონაწერი</xsl:when>

            <xsl:when test="'title_reestr'=$node_name">რეესტრი</xsl:when>

            <xsl:when test="'caption_refresh1'=$node_name">ბალანსის განახლების მოთხოვნა მუშავდება</xsl:when>
            <xsl:when test="'caption_refresh2'=$node_name">გთხოვთ, დაელოდოთ.</xsl:when>

            <xsl:when test="'caption_rests_refresh'=$node_name">ბარათის/ანგარიშის ბალანსები</xsl:when>
            <xsl:when test="'caption_rests_phones'=$node_name">თქვენი ტელეფონები</xsl:when>
            <xsl:when test="'caption_rests_acc'=$node_name">თქვენი ანგარიშები</xsl:when>
            <xsl:when test="'caption_rests_card'=$node_name">თქვენი ბარათები</xsl:when>
            <xsl:when test="'caption_rests_dep'=$node_name">თქვენი დეპოზიტები</xsl:when>

            <xsl:when test="'caption_card'=$node_name">ბარათის რეკვიზიტი</xsl:when>
            <xsl:when test="'caption_statements'=$node_name">მითითებულ პერიოდში შესრულებული ტრანზაქციები</xsl:when>

            <xsl:when test="'rests_refresh'=$node_name">ყველა ანგარიშზე ბალანსის განახლება</xsl:when>
            <xsl:when test="'rests_communal'=$node_name">Вы можете оплатить коммунальные платежи ГИВЦ в разделе Платежи. Для получения доступа ко всем возможностям Приват24 зарегистрируйтесь на сайте www.privatbank.ua</xsl:when>
            <xsl:when test="'dep_open'=$node_name">დეპოზიტის გახსნა</xsl:when>

            <xsl:when test="'in_time'=$node_name">პერიოდისთვის</xsl:when>
            <xsl:when test="'in_time_reestr'=$node_name">თარიღისთვის</xsl:when>
            <xsl:when test="'in_time_adv'=$node_name">(დდ.თთ.წწწწ)</xsl:when>
            <xsl:when test="'select_card'=$node_name">აირჩიეთ ბარათი</xsl:when>
            <xsl:when test="'selected'=$node_name">არჩეული</xsl:when>
            <xsl:when test="'selected_acc'=$node_name">არჩეული</xsl:when>
            <xsl:when test="'delivery'=$node_name">ამონაწერის გაგზავნა ელ-ფოსტით</xsl:when>

            <xsl:when test="'show'=$node_name">ნახვა</xsl:when>
            <xsl:when test="'subscribe'=$node_name">ხელმოწერა</xsl:when>
            <xsl:when test="'unsubscribe'=$node_name">ხელმოწერის გაუქმება</xsl:when>

            <xsl:when test="'statement'=$node_name">ამონაწერი ანგარიშიდან №</xsl:when>
            <xsl:when test="'statement_currency'=$node_name">ვალუტა</xsl:when>
            <xsl:when test="'before'=$node_name">პერიოდი მოიცავს</xsl:when>
            <xsl:when test="'after'=$node_name">მდე</xsl:when>
            <xsl:when test="'received'=$node_name">მიღებულია</xsl:when>
            <xsl:when test="'spent'=$node_name">გახარჯულია</xsl:when>
            <xsl:when test="'statement_remainder'=$node_name">ხელმისაწვდომი ნაშთი</xsl:when>
            <xsl:when test="'no_data'=$node_name">მონაცემები არ არის</xsl:when>

            <xsl:when test="'agent_code'=$node_name">მიმღების საიდენთიფიკაციო კოდი</xsl:when>
            <xsl:when test="'agent_name'=$node_name">დასახელება</xsl:when>
            <xsl:when test="'agent_acc'=$node_name">კონტრაგენტის ანგარიში</xsl:when>
            <xsl:when test="'agent_bic'=$node_name">მიმღები ბანკის კოდი</xsl:when>
            <xsl:when test="'operation'=$node_name">ოპერაცია</xsl:when>
            <xsl:when test="'payment'=$node_name">გადასახადი</xsl:when>
            <xsl:when test="'payment_info'=$node_name">ახალი საგადახდო დავალების შექმნა სებ-ის ფორმატში</xsl:when>

            <xsl:when test="'total_doc'=$node_name">დოკუმენტები სულ</xsl:when>
            <xsl:when test="'in_amount'=$node_name">თანხაზე</xsl:when>
            <xsl:when test="'currency_reestr'=$node_name">ლარი</xsl:when>

            <xsl:when test="'phone_number'=$node_name">ტელეფონის ნომერი</xsl:when>
            <xsl:when test="'account_number'=$node_name">ანგარიშის ნომერი</xsl:when>
            <xsl:when test="'account_name'=$node_name">ანგარიშის დასახელება</xsl:when>
            <xsl:when test="'rename_account'=$node_name">ანგარიშის დასახელების შეცვლა</xsl:when>
            <xsl:when test="'refresh_account'=$node_name">ანგარიშზე ბალანსის</xsl:when>
            <xsl:when test="'card_number'=$node_name">ბარათის ნომერი</xsl:when>
            <xsl:when test="'card_name'=$node_name">ბარათის დასახელება</xsl:when>
            <xsl:when test="'rename_card'=$node_name">ბარათის დასახელების შეცვლა</xsl:when>
            <xsl:when test="'refresh_card'=$node_name">ბარათზე ბალანსის შევსება</xsl:when>
            <xsl:when test="'dep_name'=$node_name">დასახელება</xsl:when>
            <xsl:when test="'percent'=$node_name">% განაკვეთი (წლიური)</xsl:when>
            <xsl:when test="'amount'=$node_name">თანხა</xsl:when>
            <xsl:when test="'currency'=$node_name">ვალუტა</xsl:when>
            <xsl:when test="'in_remainder'=$node_name">საწყისი ნაშთი</xsl:when>
            <xsl:when test="'debet'=$node_name">დებეტი</xsl:when>
            <xsl:when test="'credit'=$node_name">კრედიტი</xsl:when>
            <xsl:when test="'balance'=$node_name">ბალანსი</xsl:when>
            <xsl:when test="'inaccessible_balance'=$node_name">ბალანსი მიუწვდომელია</xsl:when>
            <xsl:when test="'remainder'=$node_name">ხელმისაწვდომი ნაშთი</xsl:when>
            <xsl:when test="'inaccessible_remainder'=$node_name">ნაშთი ხელმიუწვდომელია</xsl:when>
            <xsl:when test="'motion'=$node_name">ბრუნვა</xsl:when>
            <xsl:when test="'motion_up'=$node_name">ნაშთი გაიზარდა</xsl:when>
            <xsl:when test="'motion_down'=$node_name">ნაშთი შემცირდა</xsl:when>
            <xsl:when test="'motion_none'=$node_name">არა</xsl:when>

            <xsl:when test="'base_card_number'=$node_name">ძირითადი ბარათის ნომერი</xsl:when>
            <xsl:when test="'card_type'=$node_name">ბარათის სახეობა</xsl:when>
            <xsl:when test="'trade_limit'=$node_name">სავაჭრო ლიმიტი</xsl:when>
            <xsl:when test="'fin_limit'=$node_name">ფინანს. ლიმიტი</xsl:when>
            <xsl:when test="'status'=$node_name">ბარათის სტატუსი</xsl:when>
            <xsl:when test="'status_norm'=$node_name">გახსნილია</xsl:when>
            <xsl:when test="'status_deld'=$node_name">დახურულია</xsl:when>
            <xsl:when test="'number'=$node_name">№</xsl:when>
            <xsl:when test="'target'=$node_name">გადასახადის დანიშნულება</xsl:when>
            <xsl:when test="'wiring_date'=$node_name">გატარების თარიღი</xsl:when>
            <xsl:when test="'auth_date'=$node_name">ავტორიზაციის თარიღი</xsl:when>
            <xsl:when test="'terminal'=$node_name">ტერმინალი</xsl:when>
            <xsl:when test="'shared_card'=$node_name">ტრანზაქცია დამატებითი ბარათიდან</xsl:when>

            <xsl:when test="'select_account'=$node_name">ანგარიშის მიხედვით</xsl:when>
            <xsl:when test="'payer_code'=$node_name">გადამხდელის საიდენთიფიკაციო კოდი</xsl:when>
            <xsl:when test="'payer_name'=$node_name">გადამხდელის დასახელება</xsl:when>
            <xsl:when test="'payer_account'=$node_name">გადამხდელის ანგარიში</xsl:when>
            <xsl:when test="'payer_bank_code'=$node_name">გამდახდელის ბანკის კოდის.</xsl:when>
            <xsl:when test="'receiver_code'=$node_name">მიმღების საიდენთიფიკაციო კოდი</xsl:when>
            <xsl:when test="'receiver_name'=$node_name">მიმღების დასახელება</xsl:when>
            <xsl:when test="'receiver_account'=$node_name">მიმღების ანგარიში</xsl:when>
            <xsl:when test="'receiver_bank_code'=$node_name">მიმღები ბანკის კოდი.</xsl:when>
            <xsl:when test="'reference'=$node_name">რეფერენსი</xsl:when>

            <xsl:when test="'new_name'=$node_name">შეიყვანეთ ანგარიშის ახალი დასახელება:</xsl:when>
            <xsl:when test="'payment_doc'=$node_name">საგადახდო დავალება</xsl:when>
            <xsl:when test="'payment_doc2'=$node_name">Мемориальный ордер</xsl:when>
            <xsl:when test="'print_doc'=$node_name"> საგადახდო დავალების ამოსაბეჭდათ Ctrl+P.</xsl:when>
            <xsl:when test="'msg_date'=$node_name">ველი "თარიღისთვის" არასწორადაა შევსებული.ველი არ უნდა იყოს \nცარიელი და თარიღი მითითებული უნდა იყოს ფორმატით: "დდ.თთ.წწწწ". კიდევ სცადეთ.</xsl:when>

            <xsl:when test="'contact.info.ab'=$node_name">ბანკის წარმომადგენელთან შეხვედრის შესაკვეთად გაგზავნეთ SMS-ი კოდით 0739 ნომერზე 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ua'=$node_name">ბანკის წარმომადგენელთან შეხვედრის შესაკვეთად გაგზავნეთ SMS-ი კოდით 2555 ნომერზე 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ru'=$node_name">ბანკის წარმომადგენელთან შეხვედრის შესაკვეთად გაგზავნეთ SMS-ი კოდით 0740 ნომერზე 1255</xsl:when>
            <xsl:when test="'contact.info.pb.ge'=$node_name">ბანკის წარმომადგენელთან შეხვედრის შესაკვეთად გაგზავნეთ SMS-ი კოდით 0741 ნომერზე 3366</xsl:when>

            <xsl:when test="'print.btn'=$node_name">შეტყობინება გარანტირებული გადახდის თაობაზე</xsl:when>


            <xsl:when test="'garlist.btn'=$node_name">განაცხადი გარანტირებულ გადახდაზე </xsl:when>
            <xsl:when test="'garlist.dog'=$node_name">(დავალება სახელშეკრულებო გადახდებზე)</xsl:when>
            <xsl:when test="'garlist.numdoc'=$node_name">განაცხადის ნომერი: </xsl:when>
            <xsl:when test="'garlist.dcreate'=$node_name">განაცხადის თარიღი: </xsl:when>
            <xsl:when test="'garlist.aacc'=$node_name">გადამხდელის ანგარიში: </xsl:when>
            <xsl:when test="'garlist.anam'=$node_name">გადამხდელის დასახელება: </xsl:when>
            <xsl:when test="'garlist.acrf'=$node_name">გადამხდელის საიდენტიფიკაციო კოდი: </xsl:when>
            <xsl:when test="'garlist.summ'=$node_name">გადახდის თანხა:  </xsl:when>
            <xsl:when test="'garlist.summlich'=$node_name"> UAH, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summlich.ge'=$node_name"> GEL, მათ შორის საკუთარი სახსრებით </xsl:when>
            <xsl:when test="'garlist.summcred'=$node_name"> UAH, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.summcred.ge'=$node_name"> GEL, საკრედიტო სახსრებით  </xsl:when>
            <xsl:when test="'garlist.datend'=$node_name">მიმღებისთვის თანხის ჩარიცხვის თარიღი:    </xsl:when>
            <xsl:when test="'garlist.datarec'=$node_name">მიმღების მონაცემები:  </xsl:when>
            <xsl:when test="'garlist.bacc'=$node_name">- ანგარიში:    </xsl:when>
            <xsl:when test="'garlist.bname'=$node_name">- დასახელება: </xsl:when>
            <xsl:when test="'garlist.bcrf'=$node_name">- საიდენტიფიკაციო კოდი:  </xsl:when>
            <xsl:when test="'garlist.bbic'=$node_name">- ბანკის კოდი: </xsl:when>
            <xsl:when test="'garlist.osmd'=$node_name">- გადახდის დანიშნულება: </xsl:when>
            <xsl:when test="'garlist.text1'=$node_name">Операция(ии)  по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг" - раздел 3.1.1, раздел 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж". </xsl:when>
            <xsl:when test="'garlist.text1.2'=$node_name">В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных </xsl:when>
            <xsl:when test="'garlist.text1.2.1'=$node_name"> кредитных средств, то данная заявка, вместе с Условиями и Правилами предоставления банковских услуг, Тарифами банка, составляют кредитно-залоговый договор </xsl:when>
            <xsl:when test="'garlist.text1.2.2'=$node_name">(залог согласно п.3.2.2.4. Условий и Правил предоставления банковских услуг)</xsl:when>

            <xsl:when test="'garlist.text1.2.3'=$node_name">Срок возврата кредита:</xsl:when>
            <xsl:when test="'garlist.text1.2.4'=$node_name">Платность, условие возврата, обеспечение – согласно раздела 3.2.2 «Условия и правила предоставления банковских услуг» или отдельно заключенных с клиентом кредитных договоров, регулирующих предоставление кредита на проведение гарантированных платежей.</xsl:when>

            <xsl:when test="'garlist.text1.ge'=$node_name">განაცხადის თანახმად ოპერაციები ხორციელდება «საბანკო მომსახურების წესების და პირობების» 3.1.2. და 3.16  პუნქტების შესაბამისად, აღნიშნული პუნქტებით რეგულირდება მომსახურება «გარანტირებული გადახდა». იმ შემთხვევაში თუ განაცხადი სრულდება PrivatBank-ის მიერ გამოყოფილი საკრედიტო სახსრებით, აღნიშნული განაცხადი, PrivatBank -ის «საბანკო მომსახურების წესებთან და პირობებთან» ასევე, ტარიფებთან ერთად წარმოადგენს საკრედიტო ხელშეკრულებას. </xsl:when>
            <xsl:when test="'garlist.text11'=$node_name">აღნიშნულ განაცხადზე ხელმოწერით </xsl:when>
            <xsl:when test="'garlist.text2'=$node_name"> присоединяется и соглашается с условиями, изложенными в Условиях и Правилах предоставления банковских услуг, Тарифах </xsl:when>
            <xsl:when test="'garlist.text2.1'=$node_name">, которые размещены на официальном сайте Банка </xsl:when>
            <xsl:when test="'garlist.text2.2'=$node_name">. Настоящая Заявка на гарантированный платеж является поручением </xsl:when>
            <xsl:when test="'garlist.text3'=$node_name"> нფულადი სახსრების ჩამოწერაზე, სამეურნეო ხელშეკრულების ან ანგარიშფაქტურის ანაზღაურებისთვის:  </xsl:when>
            <xsl:when test="'garlist.text4'=$node_name">   აღნიშნული დოკუმენტი ელექტრონულ-ციფრული ხელმოწერით დაადასტურა </xsl:when>
            <xsl:when test="'garlist.text5'=$node_name"> სისტემა პრივატ24-ში </xsl:when>
            <xsl:when test="'garlist.text6'=$node_name">კლიენტის მიერ ხელმოწერილია ინტერნეტ ბანკის სისტემა პრივატ 24-ში </xsl:when>
            <xsl:when test="'garlist.textmfo'=$node_name"> МФО </xsl:when>
            <xsl:when test="'garlist.textabank'=$node_name">ПАТ КБ "А-Банк" </xsl:when>
            <xsl:when test="'garlist.textprivat'=$node_name">ПАТ КБ "ПриватБанк" </xsl:when>

            <xsl:when test="'cassOrder.title.in'=$node_name">სალაროს შემოსავლის ორდერი</xsl:when>
            <xsl:when test="'cassOrder.title.out'=$node_name">სალაროს გასავლის ორდერი</xsl:when>
            <xsl:when test="'gar.alert.1'=$node_name">ул. Батумская, 11,</xsl:when>
            <xsl:when test="'gar.alert.2'=$node_name">г. Днепропетровск, 49074, Украина</xsl:when>
            <xsl:when test="'gar.alert.1.ge'=$node_name">წერეთლის გამზ.No 114,</xsl:when>
            <xsl:when test="'gar.alert.2.ge'=$node_name">ქ.თბილისი, საქართველო</xsl:when>
            <xsl:when test="'gar.alert.3'=$node_name">ул. Набережная Победы, 50,</xsl:when>
            <xsl:when test="'gar.alert.4'=$node_name">г. Днепропетровск, 49094, Украина</xsl:when>
            <xsl:when test="'gar.alert.5'=$node_name">ძვირფასო მომხმარებელო!</xsl:when>
            <xsl:when test="'gar.alert.6'=$node_name">А-Банк </xsl:when>
            <xsl:when test="'gar.alert.7'=$node_name">პრივატბანკი </xsl:when>
            <xsl:when test="'gar.alert.8'=$node_name">გიდასტურებთ რომ </xsl:when>
            <xsl:when test="'gar.alert.10'=$node_name"> წელს საწარმომ </xsl:when>
            <xsl:when test="'gar.alert.11'=$node_name"> გააფორმა </xsl:when>
            <xsl:when test="'gar.alert.12'=$node_name"> ბანკის მიერ გარანტირებული გადახდა, შემდეგი პარამეტრებით:</xsl:when>
            <xsl:when test="'gar.alert.13'=$node_name">საგადახდო დავალების ნომერი</xsl:when>
            <xsl:when test="'gar.alert.14'=$node_name">თანხა</xsl:when>
            <xsl:when test="'gar.alert.15'=$node_name">შესრულების თარიღი</xsl:when>
            <xsl:when test="'gar.alert.16'=$node_name">გამგზავნი</xsl:when>
            <xsl:when test="'gar.alert.17'=$node_name">გამგზავნის ანგარიში</xsl:when>
            <xsl:when test="'gar.alert.18'=$node_name">გადახდის დანიშნულება</xsl:when>
            <xsl:when test="'gar.alert.19'=$node_name">თანხა უკვე ჩარიცხულია ანგარიშზე </xsl:when>
            <xsl:when test="'gar.alert.20'=$node_name">რომელიც გახსნილია </xsl:when>
            <xsl:when test="'gar.alert.21'=$node_name"> А-Банке</xsl:when>
            <xsl:when test="'gar.alert.22'=$node_name"> პრივატბანკში</xsl:when>

            <xsl:when test="'gar.alert.23'=$node_name">რაც ადაცტურებს, რომ თანხა აუცილებლად ჩაირიცხება საწარმოს ანგარიშზე </xsl:when>
            <xsl:when test="'gar.alert.24'=$node_name"> შესრულების თარიღში - </xsl:when>
            <xsl:when test="'gar.alert.25'=$node_name">აღნიშნული დავალების საფუძველზე თქვენ უკვე შეგიძლიათ დაიწყოთ სახელშეკრულებო ვალდებულებების შესრულება.</xsl:when>
            <xsl:when test="'gar.alert.26'=$node_name">პარტნიორებთან ანგარიშსწორებისას ისარგებლეთ გარანტირებული გადახდით! ასე თქვენ იღებთ 100%-იან გარანტიას </xsl:when>
            <xsl:when test="'gar.alert.27'=$node_name">А-Банка</xsl:when>
            <xsl:when test="'gar.alert.28'=$node_name">პრივატბანკისგან</xsl:when>
            <xsl:when test="'gar.alert.29'=$node_name">, რომ საქონლის (მომსახურების) ღირებულების ანაზღაურება განხორციელდება შეთანხმებულ ვადებში. ამასთნავე, გაზრდით გაყიდვების მოცულობას და მყიდველთა რაოდენობას.</xsl:when>
            <xsl:when test="'gar.alert.30'=$node_name">დაწვრილებით  "გარანტირებული გადახდის, კრედიტი წლიურ 4%-ად " მომსახურების შესახებ იხილეთ -ზე </xsl:when>
            <xsl:when test="'gar.alert.31'=$node_name">კონსულტაცია "გარანტირებული გადახდასთან" დაკავშირებულ საკითხებზე -შესვენების და გამოსასვლელი დღეების გარეშე:</xsl:when>

            <xsl:when test="'gar.alert.32'=$node_name">ტელ. </xsl:when>
            <xsl:when test="'gar.alert.33'=$node_name"> (бесплатно с мобильного), чат: </xsl:when>
            <xsl:when test="'gar.alert.33.ge'=$node_name"> (ზარის ღირებულება, თანახმად თქვენი ოპერატორის ტარიფებისა).</xsl:when>
            <xsl:when test="'gar.alert.34'=$node_name">პატივისცემით, </xsl:when>
            <xsl:when test="'gar.alert.35'=$node_name">Председатель Правления А-Банка</xsl:when>
            <xsl:when test="'gar.alert.36'=$node_name">დირექტორთა საბჭოს თავმჯდომარე</xsl:when>
            <xsl:when test="'gar.alert.37'=$node_name">Н.А.Малыхина</xsl:when>
            <xsl:when test="'gar.alert.38'=$node_name">А.В. Дубилет</xsl:when>
            <xsl:when test="'gar.alert.38.ge'=$node_name">ი. კანდაუროვი</xsl:when>
            <xsl:when test="'gar.alert.39'=$node_name">Лицензия НБУ № 16 от 26.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.40'=$node_name">Лицензия НБУ № 22 от 05.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.41'=$node_name">საიდენტიფიკაციო კოდი </xsl:when>
            <xsl:when test="'gar.alert.42'=$node_name"> грн. </xsl:when>
            <xsl:when test="'gar.alert.42.ge'=$node_name"> ლარი. </xsl:when>
            <xsl:when test="'gar.alert.43'=$node_name"> წლის</xsl:when>

            <xsl:when test="'gar.order.1'=$node_name">Заявка на внесение изменений</xsl:when>
            <xsl:when test="'gar.order.2'=$node_name">в гарантированный платеж</xsl:when>
            <xsl:when test="'gar.order.3'=$node_name">(заявка на изменение даты исполнения поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.4'=$node_name">Настоящим</xsl:when>
            <xsl:when test="'gar.order.5'=$node_name">код ЕГРПОУ</xsl:when>
            <xsl:when test="'gar.order.6'=$node_name">и</xsl:when>
            <xsl:when test="'gar.order.7'=$node_name">просят изменить дату исполнения гарантированного платежа (дату зачисления средств получателю) со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.9'=$node_name">Номер гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.10'=$node_name">Дата создания гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.11'=$node_name">Счет отправителя:</xsl:when>
            <xsl:when test="'gar.order.12'=$node_name">Наименование отправителя:</xsl:when>
            <xsl:when test="'gar.order.13'=$node_name">ЕГРПОУ отправителя:</xsl:when>
            <xsl:when test="'gar.order.14'=$node_name">Сумма платежа:</xsl:when>
            <xsl:when test="'gar.order.15'=$node_name">Дата зачисления средств получателю:</xsl:when>
            <xsl:when test="'gar.order.16'=$node_name">Данные получателя:</xsl:when>
            <xsl:when test="'gar.order.17'=$node_name">- счет:</xsl:when>
            <xsl:when test="'gar.order.18'=$node_name">- наименование:</xsl:when>
            <xsl:when test="'gar.order.19'=$node_name">- код ЕГРПОУ:</xsl:when>
            <xsl:when test="'gar.order.20'=$node_name">- код банка (МФО):</xsl:when>
            <xsl:when test="'gar.order.21'=$node_name">- назначение платежа:</xsl:when>
            <xsl:when test="'gar.order.22'=$node_name">Просим установить новую дату погашения кредита по услуге «Гарантированные платежи» и дату зачисления средств получателю –</xsl:when>
            <xsl:when test="'gar.order.23'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1. , 3.2.2  или отдельно заключенных с клиентом договоров, регулирующих предоставление кредита и/или услуги "Гарантированные платежи".</xsl:when>
            <xsl:when test="'gar.order.24'=$node_name">подписал данный документ электронно-цифровой подписью</xsl:when>
            <xsl:when test="'gar.order.25'=$node_name">в системе интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.26'=$node_name">Клиентом:</xsl:when>
            <xsl:when test="'gar.order.27'=$node_name">подписано в системе</xsl:when>
            <xsl:when test="'gar.order.28'=$node_name">интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.30'=$node_name">(заявка на отмену поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.32'=$node_name">просит отменить исполнение инициированного в его адрес гарантированного платежа, со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.33'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1, 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж".</xsl:when>
            <xsl:when test="'gar.order.34'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="el">
        <xsl:param name="node_name" select="'title'"/>
        <xsl:choose>
            <xsl:when test="'title_news'=$node_name">News</xsl:when>

            <xsl:when test="'title_rests'=$node_name">Current information</xsl:when>
            <xsl:when test="'title_rests_adv'=$node_name">Privat24</xsl:when>

            <xsl:when test="'title_statements'=$node_name">Statement</xsl:when>

            <xsl:when test="'title_reestr'=$node_name">Register</xsl:when>

            <xsl:when test="'caption_refresh1'=$node_name">There is a request to update the</xsl:when>
            <xsl:when test="'caption_refresh2'=$node_name">balance. Wait please</xsl:when>

            <xsl:when test="'caption_rests_refresh'=$node_name">The balances on your cards / accounts</xsl:when>
            <xsl:when test="'caption_rests_phones'=$node_name">Your phones</xsl:when>
            <xsl:when test="'caption_rests_acc'=$node_name">Your accounts</xsl:when>
            <xsl:when test="'caption_rests_card'=$node_name">Your cards</xsl:when>
            <xsl:when test="'caption_rests_dep'=$node_name">Your deposits</xsl:when>

            <xsl:when test="'caption_card'=$node_name">Details cards</xsl:when>
            <xsl:when test="'caption_statements'=$node_name">The transactions carried out during the period</xsl:when>

            <xsl:when test="'rests_refresh'=$node_name">Update balances on the accounts ALL</xsl:when>
            <xsl:when test="'rests_communal'=$node_name">Вы можете оплатить коммунальные платежи ГИВЦ в разделе Платежи. Для получения доступа ко всем возможностям Приват24 зарегистрируйтесь на сайте www.privatbank.ua</xsl:when>
            <xsl:when test="'dep_open'=$node_name">Open deposit</xsl:when>

            <xsl:when test="'in_time'=$node_name">For period</xsl:when>
            <xsl:when test="'in_time_reestr'=$node_name">For a date</xsl:when>
            <xsl:when test="'in_time_adv'=$node_name">(dd.mm.yyyy)</xsl:when>
            <xsl:when test="'select_card'=$node_name">Choose a card for the formation of the bank statements</xsl:when>
            <xsl:when test="'selected'=$node_name">Selected</xsl:when>
            <xsl:when test="'selected_acc'=$node_name">Selected</xsl:when>
            <xsl:when test="'delivery'=$node_name">Subscriptions statements on e-mail</xsl:when>

            <xsl:when test="'show'=$node_name">Show</xsl:when>
            <xsl:when test="'subscribe'=$node_name">Subscribe</xsl:when>
            <xsl:when test="'unsubscribe'=$node_name">Unsubscribe</xsl:when>

            <xsl:when test="'statement'=$node_name">Statement from the account №</xsl:when>
            <xsl:when test="'statement_currency'=$node_name">currency</xsl:when>
            <xsl:when test="'before'=$node_name">for period with</xsl:when>
            <xsl:when test="'after'=$node_name">on</xsl:when>
            <xsl:when test="'received'=$node_name">Credit</xsl:when>
            <xsl:when test="'spent'=$node_name">Debit</xsl:when>
            <xsl:when test="'statement_remainder'=$node_name">available balance</xsl:when>
            <xsl:when test="'no_data'=$node_name">No data</xsl:when>

            <xsl:when test="'agent_code'=$node_name">Code beneficiary</xsl:when>
            <xsl:when test="'agent_name'=$node_name">Name<br/>beneficiary</xsl:when>
            <xsl:when test="'agent_acc'=$node_name">Account beneficiary</xsl:when>
            <xsl:when test="'agent_bic'=$node_name">Code bank beneficiary</xsl:when>
            <xsl:when test="'operation'=$node_name">Operation</xsl:when>
            <xsl:when test="'payment'=$node_name">Payment</xsl:when>
            <xsl:when test="'payment_info'=$node_name">Create a new payment in the format NBU</xsl:when>

            <xsl:when test="'total_doc'=$node_name">Total documents</xsl:when>
            <xsl:when test="'in_amount'=$node_name">in the amount of</xsl:when>
            <xsl:when test="'currency_reestr'=$node_name">UAH.</xsl:when>

            <xsl:when test="'phone_number'=$node_name">Phone Number</xsl:when>
            <xsl:when test="'account_number'=$node_name">Account Number</xsl:when>
            <xsl:when test="'account_name'=$node_name">Name account</xsl:when>
            <xsl:when test="'rename_account'=$node_name">Renaming accounts</xsl:when>
            <xsl:when test="'refresh_account'=$node_name">Update the account balance</xsl:when>
            <xsl:when test="'card_number'=$node_name">Card Number</xsl:when>
            <xsl:when test="'card_name'=$node_name">Name cards</xsl:when>
            <xsl:when test="'rename_card'=$node_name">Renaming Card</xsl:when>
            <xsl:when test="'refresh_card'=$node_name">Update balance on the card</xsl:when>
            <xsl:when test="'dep_name'=$node_name">Name</xsl:when>
            <xsl:when test="'percent'=$node_name">% rate (annual)</xsl:when>
            <xsl:when test="'amount'=$node_name">Amount</xsl:when>
            <xsl:when test="'currency'=$node_name">Currency</xsl:when>
            <xsl:when test="'in_remainder'=$node_name">Вх. остаток</xsl:when>
            <xsl:when test="'debet'=$node_name">Debit</xsl:when>
            <xsl:when test="'credit'=$node_name">Credit</xsl:when>
            <xsl:when test="'balance'=$node_name">Balance</xsl:when>
            <xsl:when test="'inaccessible_balance'=$node_name">balance is not available</xsl:when>
            <xsl:when test="'remainder'=$node_name">Available balance</xsl:when>
            <xsl:when test="'inaccessible_remainder'=$node_name">balance is not available</xsl:when>
            <xsl:when test="'motion'=$node_name">Changing</xsl:when>
            <xsl:when test="'motion_up'=$node_name">balance increased</xsl:when>
            <xsl:when test="'motion_down'=$node_name">balance decreased</xsl:when>
            <xsl:when test="'motion_none'=$node_name">No</xsl:when>

            <xsl:when test="'base_card_number'=$node_name">Number of main card</xsl:when>
            <xsl:when test="'card_type'=$node_name">Card Type</xsl:when>
            <xsl:when test="'trade_limit'=$node_name">Trading Limit</xsl:when>
            <xsl:when test="'fin_limit'=$node_name">Financial limit</xsl:when>
            <xsl:when test="'status'=$node_name">Status Cards</xsl:when>
            <xsl:when test="'status_norm'=$node_name">open</xsl:when>
            <xsl:when test="'status_deld'=$node_name">closed</xsl:when>
            <xsl:when test="'number'=$node_name">№</xsl:when>
            <xsl:when test="'target'=$node_name">Details of payment</xsl:when>
            <xsl:when test="'wiring_date'=$node_name">Data wiring</xsl:when>
            <xsl:when test="'auth_date'=$node_name">Data Authentication</xsl:when>
            <xsl:when test="'terminal'=$node_name">Terminal</xsl:when>
            <xsl:when test="'shared_card'=$node_name">Transaction with additional cards</xsl:when>

            <xsl:when test="'select_account'=$node_name">On account</xsl:when>
            <xsl:when test="'payer_code'=$node_name">Code of payer</xsl:when>
            <xsl:when test="'payer_name'=$node_name">Name of payer</xsl:when>
            <xsl:when test="'payer_account'=$node_name">Account payer</xsl:when>
            <xsl:when test="'payer_bank_code'=$node_name">Code bank of payer</xsl:when>
            <xsl:when test="'receiver_code'=$node_name">Code beneficiary</xsl:when>
            <xsl:when test="'receiver_name'=$node_name">Name beneficiary</xsl:when>
            <xsl:when test="'receiver_account'=$node_name">Account beneficiary</xsl:when>
            <xsl:when test="'receiver_bank_code'=$node_name">Code bank beneficiary</xsl:when>
            <xsl:when test="'reference'=$node_name">Reference</xsl:when>

            <xsl:when test="'new_name'=$node_name">Enter a new name accounts:</xsl:when>
            <xsl:when test="'payment_doc'=$node_name">Payment Order</xsl:when>
            <xsl:when test="'payment_doc2'=$node_name">Memorial Order</xsl:when>
            <xsl:when test="'print_doc'=$node_name"> To print the payment order, press Ctrl+P.</xsl:when>
            <xsl:when test="'msg_date'=$node_name">The field "For a date" is wrong filled. It must not be empty and \nmust contain a date as "dd.mm.yyyy". Try again.</xsl:when>

            <xsl:when test="'contact.info.ab'=$node_name">To order the meeting with our manager - please send the message 0739 to the number 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ua'=$node_name">To order the meeting with our manager - please send the message 2555 to the number 3777</xsl:when>
            <xsl:when test="'contact.info.pb.ru'=$node_name">To order the meeting with our manager - please send the message 0740 to the number 1255</xsl:when>
            <xsl:when test="'contact.info.pb.ge'=$node_name">To order the meeting with our manager - please send the message 0741 to the number 3366</xsl:when>

            <xsl:when test="'print.btn'=$node_name">εγγυητικές επιστολές</xsl:when>

            <xsl:when test="'garlist.btn'=$node_name">Заявка на гарантированный платеж </xsl:when>
            <xsl:when test="'garlist.dog'=$node_name">(поручение  на договорное списание)</xsl:when>
            <xsl:when test="'garlist.numdoc'=$node_name">Номер заявки:</xsl:when>
            <xsl:when test="'garlist.dcreate'=$node_name">Дата заявки: </xsl:when>
            <xsl:when test="'garlist.aacc'=$node_name">Счет отправителя: </xsl:when>
            <xsl:when test="'garlist.anam'=$node_name">Наименование отправителя: </xsl:when>
            <xsl:when test="'garlist.acrf'=$node_name">ЕГРПОУ отправителя: </xsl:when>
            <xsl:when test="'garlist.summ'=$node_name">Сумма платежа:  </xsl:when>
            <xsl:when test="'garlist.summlich'=$node_name"> UAH, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summlich.ge'=$node_name"> GEL, в том числе за счет собственных средств </xsl:when>
            <xsl:when test="'garlist.summcred'=$node_name"> UAH, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.summcred.ge'=$node_name"> GEL, за счет кредитных средств   </xsl:when>
            <xsl:when test="'garlist.datend'=$node_name">Дата зачисления средств получателю:    </xsl:when>
            <xsl:when test="'garlist.datarec'=$node_name">Данные получателя:  </xsl:when>
            <xsl:when test="'garlist.bacc'=$node_name">- счет:    </xsl:when>
            <xsl:when test="'garlist.bname'=$node_name">- наименование: </xsl:when>
            <xsl:when test="'garlist.bcrf'=$node_name">- код ЕГРПОУ:  </xsl:when>
            <xsl:when test="'garlist.bbic'=$node_name">- код банка (МФО): </xsl:when>
            <xsl:when test="'garlist.osmd'=$node_name">- назначение платежа: </xsl:when>
            <xsl:when test="'garlist.text1'=$node_name">Операция(ии)  по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг" - раздел 3.1.1, раздел 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж". </xsl:when>
            <xsl:when test="'garlist.text1.2'=$node_name">В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных </xsl:when>
            <xsl:when test="'garlist.text1.2.1'=$node_name"> кредитных средств, то данная заявка, вместе с Условиями и Правилами предоставления банковских услуг, Тарифами банка, составляют кредитно-залоговый договор </xsl:when>
            <xsl:when test="'garlist.text1.2.2'=$node_name">(залог согласно п.3.2.2.4. Условий и Правил предоставления банковских услуг)</xsl:when><xsl:when test="'garlist.text1.ge'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг"- разделы 3.1.2 и 3.16, регулирующих предоставление услуги «Гарантированные платежи». В случае, если исполнение настоящей заявки осуществляется с использованием предоставленных PrivatBank кредитных средств, то данная заявка, вместе с "Условиями и Правилами предоставления банковских услуг" и Тарифами ПриватБанка составляют кредитный договор. </xsl:when>

            <xsl:when test="'garlist.text1.2.3'=$node_name">Срок возврата кредита:</xsl:when>
            <xsl:when test="'garlist.text1.2.4'=$node_name">Платность, условие возврата, обеспечение – согласно раздела 3.2.2 «Условия и правила предоставления банковских услуг» или отдельно заключенных с клиентом кредитных договоров, регулирующих предоставление кредита на проведение гарантированных платежей.</xsl:when>

            <xsl:when test="'garlist.text11'=$node_name">Подписав настоящую заявку </xsl:when>
            <xsl:when test="'garlist.text2'=$node_name"> присоединяется и соглашается с условиями, изложенными в Условиях и Правилах предоставления банковских услуг, Тарифах </xsl:when>
            <xsl:when test="'garlist.text2.1'=$node_name">, которые размещены на официальном сайте Банка </xsl:when>
            <xsl:when test="'garlist.text2.2'=$node_name">. Настоящая Заявка на гарантированный платеж является поручением </xsl:when>
            <xsl:when test="'garlist.text4'=$node_name">   подписал данный документ электронно-цифровой подписью </xsl:when>
            <xsl:when test="'garlist.text5'=$node_name"> в системе интернет-клиент-банк Приват24 </xsl:when>
            <xsl:when test="'garlist.text6'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24 </xsl:when>
            <xsl:when test="'garlist.textmfo'=$node_name"> МФО </xsl:when>
            <xsl:when test="'garlist.textabank'=$node_name">ПАТ КБ "А-Банк" </xsl:when>
            <xsl:when test="'garlist.textprivat'=$node_name">ПАТ КБ "ПриватБанк" </xsl:when>

            <xsl:when test="'cassOrder.title.in'=$node_name">Приходный ордер</xsl:when>
            <xsl:when test="'cassOrder.title.out'=$node_name">Расходный ордер</xsl:when>
            <xsl:when test="'gar.alert.1'=$node_name">ул. Батумская, 11,</xsl:when>
            <xsl:when test="'gar.alert.2'=$node_name">г. Днепропетровск, 49074, Украина</xsl:when>
            <xsl:when test="'gar.alert.1.ge'=$node_name">пр.Церетели 114,</xsl:when>
            <xsl:when test="'gar.alert.2.ge'=$node_name">г. Тбилиси, Грузия</xsl:when>
            <xsl:when test="'gar.alert.3'=$node_name">ул. Набережная Победы, 50,</xsl:when>
            <xsl:when test="'gar.alert.4'=$node_name">г. Днепропетровск, 49094, Украина</xsl:when>
            <xsl:when test="'gar.alert.5'=$node_name">Уважаемый клиент!</xsl:when>
            <xsl:when test="'gar.alert.6'=$node_name">А-Банк </xsl:when>
            <xsl:when test="'gar.alert.7'=$node_name">ПриватБанк </xsl:when>
            <xsl:when test="'gar.alert.8'=$node_name">подтверждает, что </xsl:when>
            <xsl:when test="'gar.alert.10'=$node_name"> года предприятие </xsl:when>
            <xsl:when test="'gar.alert.11'=$node_name"> выставило в пользу </xsl:when>
            <xsl:when test="'gar.alert.12'=$node_name"> гарантированный банком платеж со следующими параметрами:</xsl:when>
            <xsl:when test="'gar.alert.13'=$node_name">номер платежного поручения</xsl:when>
            <xsl:when test="'gar.alert.14'=$node_name">сумма</xsl:when>
            <xsl:when test="'gar.alert.15'=$node_name">дата исполнения (зачисления средств на расчетный счет получателя)</xsl:when>
            <xsl:when test="'gar.alert.16'=$node_name">отправитель</xsl:when>
            <xsl:when test="'gar.alert.17'=$node_name">счет отправителя</xsl:when>
            <xsl:when test="'gar.alert.18'=$node_name">назначение платежа</xsl:when>
            <xsl:when test="'gar.alert.19'=$node_name">Средства уже зачислены на счет </xsl:when>
            <xsl:when test="'gar.alert.20'=$node_name">открытый в </xsl:when>
            <xsl:when test="'gar.alert.21'=$node_name"> А-Банке</xsl:when>
            <xsl:when test="'gar.alert.22'=$node_name"> ПриватБанке</xsl:when>

            <xsl:when test="'gar.alert.23'=$node_name">Это означает, что деньги в обязательном порядке будут зачислены на расчетный счет предприятия </xsl:when>
            <xsl:when test="'gar.alert.24'=$node_name"> в дату исполнения платежа - </xsl:when>
            <xsl:when test="'gar.alert.25'=$node_name">Вы можете уже сейчас осуществлять действия, предусмотренные договоренностями с Вашим партнером в рамках указанного платежа.</xsl:when>
            <xsl:when test="'gar.alert.26'=$node_name">Используйте гарантированные платежи в расчетах со своими партнерами! Так Вы получаете 100%-ную гарантию от </xsl:when>
            <xsl:when test="'gar.alert.27'=$node_name">А-Банка</xsl:when>
            <xsl:when test="'gar.alert.28'=$node_name">ПриватБанка</xsl:when>
            <xsl:when test="'gar.alert.29'=$node_name">, что поставка товара (предоставленные услуги) будет оплачена в оговоренный срок. К тому же Вы увеличите объемы продаж и количество покупателей.</xsl:when>
            <xsl:when test="'gar.alert.30'=$node_name">Подробнее об услуге «Гарантированные платежи – кредит под 4% годовых» – на </xsl:when>
            <xsl:when test="'gar.alert.31'=$node_name">Консультации по гарантированным платежам – без перерывов и выходных:</xsl:when>

            <xsl:when test="'gar.alert.32'=$node_name">тел. </xsl:when>
            <xsl:when test="'gar.alert.33'=$node_name"> (бесплатно с мобильного), чат: </xsl:when>
            <xsl:when test="'gar.alert.33.ge'=$node_name"> (стоимость звонков – согласно тарифам Вашего оператора).</xsl:when>
            <xsl:when test="'gar.alert.34'=$node_name">С уважением, </xsl:when>
            <xsl:when test="'gar.alert.35'=$node_name">Председатель Правления А-Банка</xsl:when>
            <xsl:when test="'gar.alert.36'=$node_name">Председатель Правления ПриватБанка</xsl:when>
            <xsl:when test="'gar.alert.37'=$node_name">Н.А.Малыхина</xsl:when>
            <xsl:when test="'gar.alert.38'=$node_name">А.В. Дубилет</xsl:when>
            <xsl:when test="'gar.alert.38.ge'=$node_name">Ю.В. Кандауров</xsl:when>
            <xsl:when test="'gar.alert.39'=$node_name">Лицензия НБУ № 16 от 26.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.40'=$node_name">Лицензия НБУ № 22 от 05.10.2011 г.</xsl:when>
            <xsl:when test="'gar.alert.41'=$node_name">ЕГРПОУ </xsl:when>
            <xsl:when test="'gar.alert.42'=$node_name"> грн. </xsl:when>
            <xsl:when test="'gar.alert.42.ge'=$node_name"> лари. </xsl:when>
            <xsl:when test="'gar.alert.43'=$node_name"> года</xsl:when>

            <xsl:when test="'gar.order.1'=$node_name">Заявка на внесение изменений</xsl:when>
            <xsl:when test="'gar.order.2'=$node_name">в гарантированный платеж</xsl:when>
            <xsl:when test="'gar.order.3'=$node_name">(заявка на изменение даты исполнения поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.4'=$node_name">Настоящим</xsl:when>
            <xsl:when test="'gar.order.5'=$node_name">код ЕГРПОУ</xsl:when>
            <xsl:when test="'gar.order.6'=$node_name">и</xsl:when>
            <xsl:when test="'gar.order.7'=$node_name">просят изменить дату исполнения гарантированного платежа (дату зачисления средств получателю) со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.9'=$node_name">Номер гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.10'=$node_name">Дата создания гарантированного платежа:</xsl:when>
            <xsl:when test="'gar.order.11'=$node_name">Счет отправителя:</xsl:when>
            <xsl:when test="'gar.order.12'=$node_name">Наименование отправителя:</xsl:when>
            <xsl:when test="'gar.order.13'=$node_name">ЕГРПОУ отправителя:</xsl:when>
            <xsl:when test="'gar.order.14'=$node_name">Сумма платежа:</xsl:when>
            <xsl:when test="'gar.order.15'=$node_name">Дата зачисления средств получателю:</xsl:when>
            <xsl:when test="'gar.order.16'=$node_name">Данные получателя:</xsl:when>
            <xsl:when test="'gar.order.17'=$node_name">- счет:</xsl:when>
            <xsl:when test="'gar.order.18'=$node_name">- наименование:</xsl:when>
            <xsl:when test="'gar.order.19'=$node_name">- код ЕГРПОУ:</xsl:when>
            <xsl:when test="'gar.order.20'=$node_name">- код банка (МФО):</xsl:when>
            <xsl:when test="'gar.order.21'=$node_name">- назначение платежа:</xsl:when>
            <xsl:when test="'gar.order.22'=$node_name">Просим установить новую дату погашения кредита по услуге «Гарантированные платежи» и дату зачисления средств получателю –</xsl:when>
            <xsl:when test="'gar.order.23'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1. , 3.2.2  или отдельно заключенных с клиентом договоров, регулирующих предоставление кредита и/или услуги "Гарантированные платежи".</xsl:when>
            <xsl:when test="'gar.order.24'=$node_name">подписал данный документ электронно-цифровой подписью</xsl:when>
            <xsl:when test="'gar.order.25'=$node_name">в системе интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.26'=$node_name">Клиентом:</xsl:when>
            <xsl:when test="'gar.order.27'=$node_name">подписано в системе</xsl:when>
            <xsl:when test="'gar.order.28'=$node_name">интернет-клиент-банк Приват24</xsl:when>
            <xsl:when test="'gar.order.30'=$node_name">(заявка на отмену поручения на договорное списание)</xsl:when>
            <xsl:when test="'gar.order.32'=$node_name">просит отменить исполнение инициированного в его адрес гарантированного платежа, со следующими реквизитами:</xsl:when>
            <xsl:when test="'gar.order.33'=$node_name">Операция(ии) по заявке выполняются в соответствии с "Условиями и правилами предоставления банковских услуг", раздел 3.1.1, 3.2.2 или отдельно заключенных с клиентом договоров, регулирующих предоставление услуги "Гарантированный платеж".</xsl:when>
            <xsl:when test="'gar.order.34'=$node_name">Клиентом подписано в системе интернет-клиент-банк Приват24</xsl:when>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>