document.addEventListener('turbolinks:load', function() {
  $(".rating").raty({
    starType: "i",
    half: true,
    target: "#g-rating",
    targetType: "score",
    targetScore: "#g-rating",
    targetKeep: true,
    path: "/assets/",
    score: function() {
      return $(this).attr("data-score");
    }
  });
});
