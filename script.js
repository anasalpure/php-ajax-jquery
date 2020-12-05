$(function(){
    $('button.load-btn').on('click',function(){
        
        $.ajax({
            method:'GET',
            url:'http://localhost/example-ajax/books_ajax.php',
            dataType : 'json'
        })
        .done(function(res){
            refrech(res)
        })
        .fail(function(){
            console.warn('fail to get data from server')
        })

        
    })
})

function refrech(books){
    
    let newBooks = books.map(function(book){
        return `
            <div class="book">
                <div class="image" style="background-image:url(${book.image})"></div>
                <div class="desc">
                    <h2>${book.title}</h2>
                    <p>${book.auther}</p>
                    <p>${book.pages}</p>
                </div>
            </div>
        `
    })
    
    $('.grid-book').append(newBooks.join(''))
}