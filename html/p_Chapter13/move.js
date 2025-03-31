const animationMove=function(selector){
    const targetEl=document.querySelector(selector);
    const browerScrollY=window.pageYOffset;
    const targetScorlly=targetEl.getBoundingClientRect().top+browerScrollY;
    window.scrollTo({top:targetScorlly, behavior:'smooth'});
}
const scrollMoveE1=document.querySelectorAll("[data-animation=scroll='true']");
for(let i=0; i<scrollMoveE1,length; i++){
    scrollMoveE1[i].addEventListener('click', function(e){
        const target=this.dataset.target;
        animationMove(target);
    });
}