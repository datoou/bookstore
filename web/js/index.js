window.onload=function (){
    var rank1 = document.getElementById("ranking_book1");
    var rank11 = document.getElementById("ranking_book11");
    var rank2 = document.getElementById("ranking_book2");
    var rank21 = document.getElementById("ranking_book21");
    var rank3 = document.getElementById("ranking_book3");
    var rank31 = document.getElementById("ranking_book31");
    var rank4 = document.getElementById("ranking_book4");
    var rank41 = document.getElementById("ranking_book41");
    var rank5 = document.getElementById("ranking_book5");
    var rank51 = document.getElementById("ranking_book51");
    var rank6 = document.getElementById("ranking_book6");
    var rank61 = document.getElementById("ranking_book61");
    var rank7 = document.getElementById("ranking_book7");
    var rank71 = document.getElementById("ranking_book71");
    var rank8 = document.getElementById("ranking_book8");
    var rank81 = document.getElementById("ranking_book81");
    var rank9 = document.getElementById("ranking_book9");
    var rank91 = document.getElementById("ranking_book91");
    var rank0 = document.getElementById("ranking_book0");
    var rank01 = document.getElementById("ranking_book01");
    var timer = null;
    rank11.onmouseover = rank1.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank11.style.display = 'block';
    }
    rank11.onmouseout = rank1.onmouseout = function(){
        timer = setTimeout(function(){
            rank11.style.display = 'none';
        },100);
    }
    rank21.onmouseover = rank2.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank21.style.display = 'block';
    }
    rank21.onmouseout = rank2.onmouseout = function(){
        timer = setTimeout(function(){
            rank21.style.display = 'none';
        },100);
    }
    rank31.onmouseover = rank3.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank31.style.display = 'block';
    }
    rank31.onmouseout = rank3.onmouseout = function(){
        timer = setTimeout(function(){
            rank31.style.display = 'none';
        },100);
    }
    rank41.onmouseover = rank4.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank41.style.display = 'block';
    }
    rank41.onmouseout = rank4.onmouseout = function(){
        timer = setTimeout(function(){
            rank41.style.display = 'none';
        },100);
    }
    rank51.onmouseover = rank5.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank51.style.display = 'block';
    }
    rank51.onmouseout = rank5.onmouseout = function(){
        timer = setTimeout(function(){
            rank51.style.display = 'none';
        },100);
    }
    rank61.onmouseover = rank6.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank61.style.display = 'block';
    }
    rank61.onmouseout = rank6.onmouseout = function(){
        timer = setTimeout(function(){
            rank61.style.display = 'none';
        },100);
    }
    rank71.onmouseover = rank7.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank71.style.display = 'block';
    }
    rank71.onmouseout = rank7.onmouseout = function(){
        timer = setTimeout(function(){
            rank71.style.display = 'none';
        },100);
    }
    rank81.onmouseover = rank8.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank81.style.display = 'block';
    }
    rank81.onmouseout = rank8.onmouseout = function(){
        timer = setTimeout(function(){
            rank81.style.display = 'none';
        },100);
    }
    rank91.onmouseover = rank9.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank91.style.display = 'block';
    }
    rank91.onmouseout = rank9.onmouseout = function(){
        timer = setTimeout(function(){
            rank91.style.display = 'none';
        },100);
    }
    rank01.onmouseover = rank0.onmouseover = function(){
        if(timer) clearTimeout(timer)
        rank01.style.display = 'block';
    }
    rank01.onmouseout = rank0.onmouseout = function(){
        timer = setTimeout(function(){
            rank01.style.display = 'none';
        },100);
    }
}();