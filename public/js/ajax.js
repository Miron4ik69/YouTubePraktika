$(document).ready(function () {
    $('#form').on('submit', function (e) {
        e.preventDefault();
         
        $.ajax({
            type: 'POST',
            url: '/favoriteadd',
            data: $('#form').serialize(),
            success: function(){
                alert('Добавленно в избранное!');
            }, 
            error: function(){
                alert('В данный момент нельзя добавить в избранные!');
            }
        });
    });
});
