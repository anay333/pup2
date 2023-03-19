Feature: Booking ticket
    Scenario: Book one seat
        Given user is on "qamid" page
        When user chooses by "nav > a:page-nav__day page-nav__day_today page-nav__day_chosen(2) > span.page-nav__day-number"
        When user chooses movie "main > section:nth-child(2) > div.movie-seances__hall > ul > li > a"
        When user chooses seat ".buying-scheme__wrapper > div:nth-child(1) > span:nth-child(1)"
        When user click "button"
        Then user sees text "Вы выбрали билеты:"

    Scenario: Book one VIP seats
        Given user is on "qamid" page
        When user chooses by "nav > a:nth-child(2) > span.page-nav__day-number"
        When user chooses movie "[data-seance-start='1425']"
        When user chooses seat ".buying-scheme__wrapper > div:nth-child(1) > span:nth-child(2)"
        When user click "button"
        Then user sees text "Вы выбрали билеты:"

    Scenario: Should not ticket
        Given user is on "qamid" page
        When user chooses by "nav > a:nth-child(4) > span.page-nav__day-number"
        When user chooses by "[data-seance-id='129']"
        When user chooses seat ".buying-scheme__wrapper > div:nth-child(1) > span:nth-child(2)"
        When user click "button"
        Then user sees the header "Логан"