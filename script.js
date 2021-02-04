
$('.errors').hide();

$('.button_save').click(function (e) {

    e.preventDefault();
    let name = $('#name').val();
    const surname = $('#surname').val();
    const age = $('#age').val();


    if (name === '' || surname === '' || age === '') {
        $('.errors').slideDown(200);
        $('.span1').text('Необходимо заполнить все поля');
    } else if (age < 0 || age > 120) {
        $('.errors').slideDown(200);
        $('.span1').text('Введите корректный возраст');
    } else {
        $.ajax({
            method: "POST",
            url: "config.php",
            data: {name: name, surname: surname, age: age},
            success: (function (msg) {
                if (!msg) {

                    $('.errors').css('background-color', '#249409')
                    $('.errors').slideDown(200);
                    $('.span1').text('Данные успешно отправлены');
                    setTimeout(function () {
                        $('.errors').slideUp(200);
                    }, 2000);
                    $('.span2').hide();
                } else {
                    $('.errors').slideDown(200);
                    $('.span1').text('При отправке данных произошла ошибка');
                    $('.span2').text('Нажмите, чтобы узнать подробнее');
                }

            }),
        })
    }

})

$('.button_upload').click(function (e) {
    e.preventDefault();

    alert('Данные выгруженны')
    $.ajax({
        method: "POST",
        url: "upload.php",
    })

})