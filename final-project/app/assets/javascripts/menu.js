$(document).ready(function () {
function updateMenuItem(menu_id, item_id){
     console.log("Fetching new menu items", item_id);
     $.ajax({
       url: '/items/' + item_id,
       type: 'get',
       })
       .done(function(data){
         console.log(data);
         $('.panel-body').html("");
         $('#order_item_id').val(data.id);
        //


        var urlString = "url(" + data.url_file_name + "),none"
        console.log(urlString);
         $('img.img-responsive')
            .css({
            'background-image': urlString,
            'background-size': 'cover',
            'width': '100%',
            'height': '400px'
          });

            // .attr('style', );
       });
     }


      $('.modal-button').on('click', function(e){
        var menu_id = e.target.parentElement.dataset.menuId
        var item_id = e.target.parentElement.dataset.itemId
        updateMenuItem(menu_id, item_id);
      });

    /************** Tabbed Menu Scripts **************/

    $('.menu-filters li').click(function () {
        $('.menu-filters li').removeClass('active');
        $(this).addClass('active');
        // var menuType = $(this).attr('data-menu-type');
        //
        // $(this).closest('.tabbed-menu').find('.narrow-menu').removeClass('active');
        // $(this).closest('.tabbed-menu').find("[data-menu-type='" + menuType + "']").addClass('active');
        activateMenu(this);
    });

    function activateMenu(selectItem){
      var menuType = $(selectItem).attr('data-menu-type');

      $(selectItem).closest('.tabbed-menu').find('.narrow-menu').removeClass('active');
      $(selectItem).closest('.tabbed-menu').find("[data-menu-type='" + menuType + "']").addClass('active');
    }
    activateMenu($('.menu-filters li').first());
    $
});
