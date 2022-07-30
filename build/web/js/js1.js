function doLike(pid,uid){
    console.log(pid+","+uid);
    const d={
        uid:uid,
        pid:pid,
        operation:'like'
    }
    $.ajax({
        url:'Likes',
        data: d,
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            if (data.trim()=="true") {
                let c=$(".like-count").html();
                c++;
                $('.like-count').html(c);
                
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(data);
        }
    })
}

