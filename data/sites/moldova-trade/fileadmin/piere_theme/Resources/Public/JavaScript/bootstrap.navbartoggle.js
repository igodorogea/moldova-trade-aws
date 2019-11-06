$(function() {

    /**
     * Toggle collapsed class on navbar toggle button to change
     * the appereance of the toggle button when navbar is open
     */
    //$('.navbar-collapse .navitem-with-submenu')
    //    .on('show.bs.collapse', function (ev) {
    //        ev.stopPropagation();
    //        $(this).addClass('open');
    //    })
    //    .on('hide.bs.collapse', function (ev) {
    //        ev.stopPropagation();
    //    })
    //    .on('hidden.bs.collapse', function (ev) {
    //        ev.stopPropagation();
    //        $(this).removeClass('open');
    //    });

    $('.navitem-submenu-toggle').on('click', function(ev) {
        ev.preventDefault();
    });
});