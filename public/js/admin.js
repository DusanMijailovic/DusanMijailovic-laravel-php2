!function(t){"use strict";t("#sidebarToggle").click(function(e){e.preventDefault(),t("body").toggleClass("sidebar-toggled"),t(".sidebar").toggleClass("toggled")}),t("body.fixed-nav .sidebar").on("mousewheel DOMMouseScroll wheel",function(e){if(768<$window.width()){var o=e.originalEvent,t=o.wheelDelta||-o.detail;this.scrollTop+=30*(t<0?1:-1),e.preventDefault()}}),t(document).scroll(function(){100<t(this).scrollTop()?t(".scroll-to-top").fadeIn():t(".scroll-to-top").fadeOut()}),t(document).on("click","a.scroll-to-top",function(e){var o=t(this);t("html, body").stop().animate({scrollTop:t(o.attr("href")).offset().top},1e3,"easeInOutExpo"),e.preventDefault()})}(jQuery);

$(document).on('click', '.delete-btn', function(e){
    e.preventDefault();
    let userID = $(this).data("id");


    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/' + userID,
        method: 'DELETE',
        dataType: "json",
        data: {
            deleteBtn: true,
            userID: userID
        },
        success: function(data){

            refreshUser();


        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);

        }
    });
});

function refreshUser(){

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: "/admin/showAll",
        method: "GET",
        dataType: "json",
        success: function(data){

            let html="";
            for(let user of data){
                html += `<tr>
            <td>${ user.userID }</td>
            <td>${ user.fullName }</td>
            <td>${ user.email }></td>
            <td>${ user.registerDate }></td>
            <td>

              <button class="btn btn-danger delete-btn" data-id="${ user.userID }">Delete</button>
            </td>
          </tr>`;
            }
            $(".user-table").html(html);
        },
        error: function (xhr, status, statusText) {
            console.error('----> ERROR <----');
            console.log(statusText);
        }

    })
}


/* ************************ ADMIN CONTACT ************************** */

$(document).on('click', '.delete-contact', function(e){
    e.preventDefault();
    let contactID = $(this).data("id");


    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/contact/' +  contactID,
        method: 'DELETE',
        dataType: "json",
        data: {
            deleteContact: true,
            contactID: contactID
        },
        success: function(data){
            refreshContact();


        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);

        }
    });
});

function refreshContact(){

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },

        url: "/admin/contact/showAll",
        method: "GET",
        dataType: "json",
        success: function(data){
            let html="";
            for(let contact of data){
                html += `<tr>
            <td>${ contact.contactID }</td>
            <td>${ contact.fullName }</td>
            <td>${ contact.email }</td>
            <td>${ contact.content }</td>
            <td>
              <button class="btn btn-danger delete-contact" data-id="${ contact.contactID }">Delete</button>
            </td>
          </tr>`;
            }
            $(".contact-table").html(html);
        }

    })
}


/* ************************ ADMIN CATEGORIES ************************** */


$(document).on("click", ".insert-btn", function(e){
    e.preventDefault();

    let categoryName = $("#category").val();




    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/category',
        method: 'POST',
        dataType: "json",
        data: {
            categoryBtn: true,
            categoryName: categoryName
        },
        success: function(data){

            clearForm();

            refreshCategory();

        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(status);
            console.log(xhr);
            console.log(statusText);

        }
    });
});

$(document).on('click', '.delete-category', function(e){
    e.preventDefault();
    let categoryID = $(this).data("id");


    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/category/' + categoryID,
        method: 'DELETE',
        dataType: "json",
        data: {
            deleteCategory: true,
            categoryID: categoryID
        },
        success: function(data){

            refreshCategory();

        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);

        }
    });
});

$(document).on('click', '.update-category', function(e){
    e.preventDefault();


    let categoryID = $(this).data('id');



    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/category/' + categoryID + '/edit',
        method: 'GET',
        dataType: 'json',
        data: {
            btn: true,
            categoryID: categoryID
        },
        success: function(data){

            fillForm(data);
        },
        error: function(xhr, status, statusText){
             console.error('----> ERROR <----');
             console.log(statusText);
            console.clear();
        }
    })
});

$(".edit-btn").click(function(){
    let categoryID = $('#hdnID').val();
    let name = $("#category").val();




    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/category/' + categoryID,
        method: 'PUT',
        data: {
            updateCategory: true,
            categoryID: categoryID,
            name: name
        },
        dataType: 'json',
        success: function(data){

            clearForm();
            refreshCategory();

        },
        error: function(xhr, status, statusText){
            console.clear();
        }
    })
})


function refreshCategory(){

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/category/showAll',
        method: 'GET',
        dataType: "json",

        success: function(data){

            printCategories(data);

        },
        error: function(xhr, status, statusText){
             console.error('----> ERROR <----');
             console.log(statusText);
            console.clear();
        }
    })
}

function fillForm(category){
    $("#hdnID").val(category.categoryID);
    $("#category").val(category.name);
    $(".insert-btn").html("Insert");
}

function clearForm(){
    $("#hdnID").val("");
    $("#category").val("");
    $(".insert-btn").html("Insert");
}


function printCategories(data) {
    let html="";
    for(let category of data){
        html += `<tr>
        <td>${ category.categoryID }</td>
        <td>${ category.name }</td>
        <td>
          <button class="btn btn-danger delete-category" data-id="${ category.categoryID }">Delete</button>
          <button class="btn btn-danger update-category" data-id="${ category.categoryID }">Edit</button>

        </td>
      </tr>
        `;
    }
    $(".category-table").html(html);
}


/* **********************ADMIN TOOLS************************* */


$(document).on("click", ".insert-tool", function(e){
    e.preventDefault();

    let name = $("#name").val();
    let description = $("#description").val();
    let price = $("#price").val();
    let priceSite = $("#priceSite").val();
    let imgSrc = $("#imgSrc").val();
    let imgAlt = $("#imgAlt").val();


    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/tools',
        method: 'POST',
        dataType: "json",
        data: {
            toolBtn: true,
            name: name,
            description: description,
            price: price,
            priceSite: priceSite,
            imgSrc: imgSrc,
            imgAlt: imgAlt
        },
        success: function(data){
            clearFormTool();
            refreshTool();

        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(status);
            console.log(xhr);
            console.log(statusText);

        }
    });
});

$(document).on('click', '.delete-tool', function(e){
    e.preventDefault();
    let toolID = $(this).data("id");


    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/tools/' + toolID,
        method: 'DELETE',
        dataType: "json",
        data: {
            deleteTool: true,
            toolID: toolID
        },
        success: function(data){

            refreshTool();

        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);

        }
    });
});

$(document).on('click', '.edit-tool', function(e){
    e.preventDefault();


    let toolID = $(this).data('id');



    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/tools/' + toolID + '/edit',
        method: 'GET',
        data: {
            toolBtn: true,
            toolID: toolID
        },
        dataType: 'json',
        success: function(data){

            fillFormTool(data);
        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);
        }
    })
});

$(".update-tool").click(function(){
    let toolID = $("#hdnToolID").val();
    let name = $("#name").val();
    let description =  $("#description").val();
    let price =  $("#price").val();
    let priceSite =  $("#priceSite").val();
    let imgSrc = $("#imgSrc").val();
    let imgAlt = $("#imgAlt").val();




    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/tools/' + toolID,
        method: 'PUT',
        dataType: 'json',
        data: {
            updateTool: true,
            toolID: toolID,
            name: name,
            description: description,
            price: price,
            priceSite: priceSite,
            imgSrc: imgSrc,
            imgAlt: imgAlt


        },
        success: function(data){

            clearFormTool();
            refreshTool();

        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);
        }
    })
})


function fillFormTool(tool){
    $("#hdnToolID").val(tool.toolID);
    $("#name").val(tool.name);
    $("#description").val(tool.description);
    $("#price").val(tool.price);
    $("#priceSite").val(tool.sitePrice);
    $("#imgSrc").val(tool.imgSrc);
    $("#imgAlt").val(tool.imgAlt);


    $(".insert-tool").html("Insert");
}


function clearFormTool(){
    $("#hdnToolID").val("");
    $("#name").val("");
    $("#description").val("");
    $("#price").val("");
    $("#priceSite").val("");
    $("#imgSrc").val("");
    $("#imgAlt").val("");
    $(".insert-tool").html("Insert");
}

function refreshTool(){

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/admin/tools/showAll',
        method: 'GET',
        dataType: "json",

        success: function(data){

            printTools(data);

        },
        error: function(xhr, status, statusText){
            console.error('----> ERROR <----');
            console.log(statusText);
            console.clear();
        }
    })
}

function printTools(data) {
    let html="";
    for(let tool of data){
        html += `<tr>
        <td>${ tool.toolID }</td>
        <td>${ tool.name }</td>
        <td>${ tool.description.substr(0,99) }</td>
        <td>${ tool.price } dinara</td>
        <td>${ tool.sitePrice } dinara</td>
        <td><img class="admin-img" src="${ tool.imgSrc }" alt="${ tool.imgAlt }"></td>
        <td>

          <button class="btn btn-danger delete-tool" data-id="${ tool.toolID }">Delete</button>
        <td><button class="btn btn-danger edit-tool" data-id="${ tool.toolID }">Edit</button></td>

        </td>
      </tr>
        `;
    }
    $(".tool-table").html(html);
}
