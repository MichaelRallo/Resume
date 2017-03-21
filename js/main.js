$(document).ready(function(){
    //************************************//
    //*****Main-Navigation Controller*****//
    //************************************//
    $('#projects').click(function(){
        if($(this).hasClass('active-main-navigation')){return;}
        else{
            $('#main-navigation .active-main-navigation').removeClass('active-main-navigation');
            $(this).addClass('active-main-navigation');
            $('.sub-navigation').fadeOut(200);
            $('.container-items').fadeOut(200);
            setTimeout(function(){$('#sub-navigation-projects').fadeIn(200);}, 200);          
            setTimeout(function(){$('#container-projects').fadeIn(200);}, 200);          
        }
    });
    
    $('#aboutMe').click(function(){
        if($(this).hasClass('active-main-navigation')){return;}
        else{
            $('#main-navigation .active-main-navigation').removeClass('active-main-navigation');
            $(this).addClass('active-main-navigation');
            $('.sub-navigation').fadeOut(200);
            $('.container-items').fadeOut(200);
            setTimeout(function(){$('#sub-navigation-aboutMe').fadeIn(200);}, 200);          
            setTimeout(function(){$('#container-aboutMe').fadeIn(200);}, 200);          
        }  
    });
    
    $('#education').click(function(){
        if($(this).hasClass('active-main-navigation')){return;}
        else{
            $('#main-navigation .active-main-navigation').removeClass('active-main-navigation');
            $(this).addClass('active-main-navigation');
            $('.sub-navigation').fadeOut(200);
            $('.container-items').fadeOut(200);
            setTimeout(function(){$('#sub-navigation-education').fadeIn(200);}, 200);          
            setTimeout(function(){$('#container-education').fadeIn(200);}, 200);          
        }
    });
    
    
    //***********************************//
    //*****Sub-Navigation Controller*****//
    //***********************************//
    
    //************Projects**************//
    $('#all-projects').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-projects .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-projects>*').fadeOut(200); 
            setTimeout(function(){$('#container-projects>*:not(".attraction-alt")').fadeIn(200);}, 200);    
        }
    });
    
    $('#applications').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-projects .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-projects>*').fadeOut(200); 
            setTimeout(function(){$('#container-projects>.applications').fadeIn(200);}, 200);    
        }        
    });
    
    $('#ai').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-projects .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-projects>*').fadeOut(200); 
            setTimeout(function(){$('#container-projects>.ai').fadeIn(200);}, 200);    
        }            
    });
    
    $('#systems').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-projects .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-projects>*').fadeOut(200); 
            setTimeout(function(){$('#container-projects>.systems').fadeIn(200);}, 200);    
        }            
    });
    
    $('#web').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-projects .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-projects>*').fadeOut(200); 
            setTimeout(function(){$('#container-projects>.web').fadeIn(200);}, 200);    
        }            
    });

    
    
    //************AboutMe************//
    $('#biography').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-aboutMe .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-aboutMe>*').fadeOut(200);
            setTimeout(function(){$('#container-aboutMe>.biography').fadeIn(200);}, 200);   
        }    
    }); 

    $('#employment').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-aboutMe .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-aboutMe>*').fadeOut(200);
            setTimeout(function(){$('#container-aboutMe>.employment').fadeIn(200);}, 200);   
        }           
    });  
    
    $('#references').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-aboutMe .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-aboutMe>*').fadeOut(200);
            setTimeout(function(){$('#container-aboutMe>.references').fadeIn(200);}, 200);   
        }            
    }); 
    
    
    
    //************Education************//
    $('#universities').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-education .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-education>*').fadeOut(200);
            setTimeout(function(){$('#container-education>.universities').fadeIn(200);}, 200);   
        }             
    }); 

    $('#courses').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-education .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-education>*').fadeOut(200);
            setTimeout(function(){$('#container-education>.courses').fadeIn(200);}, 200);   
        }               
    });  
    
    $('#pl').click(function(){
        if($(this).hasClass('active-sub-navigation')){return;}
        else{
            $('#sub-navigation-education .active-sub-navigation').removeClass('active-sub-navigation');
            $(this).addClass('active-sub-navigation');
            $('#container-education>*').fadeOut(200);
            setTimeout(function(){$('#container-education>.pl').fadeIn(200);}, 200);   
        }                   
    }); 
    
    $('.school').click(function(){
        switch($(this).attr('id')){
            case "mizzou": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.school').removeClass('active');
                    $(this).addClass('active');
                    $('.school-content').fadeOut(200);
                    setTimeout(function(){$('#mizzouContent').fadeIn(200);}, 200);   
                }   
                break;
                
            case "lindenwood": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.school').removeClass('active');
                    $(this).addClass('active');
                    $('.school-content').fadeOut(200);
                    setTimeout(function(){$('#lindenwoodContent').fadeIn(200);}, 200);   
                }   
                break;
                
            case "scc": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.school').removeClass('active');
                    $(this).addClass('active');
                    $('.school-content').fadeOut(200);
                    setTimeout(function(){$('#sccContent').fadeIn(200);}, 200);   
                }   
                break;
                
            case "fzn": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.school').removeClass('active');
                    $(this).addClass('active');
                    $('.school-content').fadeOut(200);
                    setTimeout(function(){$('#fznContent').fadeIn(200);}, 200);   
                }   
                break;
                
                
                
                
            default:{return;}
        }
     }); 
    
    $('.subject').click(function(){
        switch($(this).attr('id')){
            case "programming": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.subject').removeClass('active');
                    $(this).addClass('active');
                    $('.course-content').fadeOut(200);
                    setTimeout(function(){$('#programmingCourses').fadeIn(200);}, 200);   
                }   
                break;
                
            case "math": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.subject').removeClass('active');
                    $(this).addClass('active');
                    $('.course-content').fadeOut(200);
                    setTimeout(function(){$('#mathCourses').fadeIn(200);}, 200);   
                }   
                break;
                
            case "os": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.subject').removeClass('active');
                    $(this).addClass('active');
                    $('.course-content').fadeOut(200);
                    setTimeout(function(){$('#osCourses').fadeIn(200);}, 200);   
                }   
                break;
                
            case "repair": 
                if($(this).hasClass('active')){return;}
                else{
                    $('.subject').removeClass('active');
                    $(this).addClass('active');
                    $('.course-content').fadeOut(200);
                    setTimeout(function(){$('#repairCourses').fadeIn(200);}, 200);   
                }   
                break;
                
                
                
                
            default:{return;}
        }                        
    }); 
    
    //*******Item PopUp******//
    $('.item-popup-container').popup({
        transition: 'all 0.3s'
    });
    
    
    
    
    
        $('.reveal-container').click(function(){
            $(this).css('background-color','darkred').css('cursor','default').css('height','230px');
            $(this).find('.pre-reveal').fadeOut(500);
            
            var temp = $(this);
            $(temp).find('.post-reveal').fadeIn(500);
            setTimeout(function(){
                console.log("hi");
                
                
            }, 500); 
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
}); 