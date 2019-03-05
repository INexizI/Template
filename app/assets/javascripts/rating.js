// document.addEventListener('turbolinks:load', function() {
$(document).ready(function() {
  $(".rating").raty({
    starType: "i",
    half: true,
    target: "#g-rating",
    targetType: "score",
    targetScore: "#g-rating",
    scoreName: "game[rating]",
    targetKeep: true,
    path: "/assets/",
    score: function() {
      return $(this).attr("data-score");
    },
    click: function() {
      $('.rating').click(function(event) {
        $("#rating-submit").click();
      });
    }
  });

  $(".rate").raty({
    starType: "i",
    half: true,
    readOnly: true,
    path: "/assets/",
    score: function() {
      return $(this).attr("data-score");
    },
  });
});
