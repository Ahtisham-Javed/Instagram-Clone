$(document).ready(function () {
  $('.post-like').click(function () {
    var post_id = $(this).data("id");
    $.ajax({
      url: "/post/like/" + post_id,
      method: "GET"
    }).done(function (response) {
      console.log(response);
    });
  });
});