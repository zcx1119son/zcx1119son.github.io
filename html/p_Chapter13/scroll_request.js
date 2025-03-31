const headerEl=document.querySelector("header");
window.addEventListener('scroll', function(){
    requestAnimationFrame(scrollCheck);
});
function scrollCheck(){
    let browerScrollY=window.scrollY ? window.scrollY:window.pageYOffset;
    if(browerScrollY>0){
        headerEl.classList.add("active");
    }else{
        headerEl.classList.remove("active");
    }
}
