// const btnMap = document.querySelector(".btn-map");
// const btnList = document.querySelector(".btn-list");
// const mapView = document.querySelector(".map-view");
// const listView = document.querySelector("#list-view");

// const initMapListToggle = () => {
//   btnList.onclick = () => {
//     mapView.classList.add("ninja");
//     listView.classList.remove("ninja");
//   };

//   btnMap.onclick = () => {
//     mapView.classList.remove("ninja");
//     listView.classList.add("ninja");
//   };
// };


// const tabBookings = document.querySelector(".cafe-bookings-tab");
// const tabTables = document.querySelector(".cafe-tables-tab");
// const tabReviews = document.querySelector(".cafe-reviews-tab");
// const tabTransactions = document.querySelector(".cafe-transactions-tab");

// const bookings = document.querySelector("#cafe-bookings");
// const tables = document.querySelector("#cafe-tables");
// const reviews = document.querySelector("#cafe-reviews");
// const transactions = document.querySelector("#cafe-transactions");



// const initCafeDashToggle = () => {
//   if (tabBookings && tabTables && tabReviews && tabTransactions) {
//     tabBookings.onclick = () => {
//       tabBookings.classList.add("active");
//       tabTables.classList.remove("active");
//       tabReviews.classList.remove("active");
//       tabTransactions.classList.remove("active");

//       bookings.classList.remove("ninja");
//       tables.classList.add("ninja");
//       reviews.classList.add("ninja");
//       transactions.classList.add("ninja");
//     };

//     tabTables.onclick = () => {
//       tabBookings.classList.remove("active");
//       tabTables.classList.add("active");
//       tabReviews.classList.remove("active");
//       tabTransactions.classList.remove("active");

//       bookings.classList.add("ninja");
//       tables.classList.remove("ninja");
//       reviews.classList.add("ninja");
//       transactions.classList.add("ninja");
//     };

//     tabReviews.onclick = () => {
//       tabBookings.classList.remove("active");
//       tabTables.classList.remove("active");
//       tabReviews.classList.add("active");
//       tabTransactions.classList.remove("active");

//       bookings.classList.add("ninja");
//       tables.classList.add("ninja");
//       reviews.classList.remove("ninja");
//       transactions.classList.add("ninja");
//     };

//       tabTransactions.onclick = () => {
//         tabBookings.classList.remove("active");
//         tabTables.classList.remove("active");
//         tabReviews.classList.remove("active");
//         tabTransactions.classList.add("active");

//         bookings.classList.add("ninja");
//         tables.classList.add("ninja");
//         reviews.classList.add("ninja");
//         transactions.classList.remove("ninja");
//     };
//   }
// };


// const tablesCafe = document.querySelector(".showpage-nomad-book-tables");
// const nomadReviews = document.querySelector(".showpage-nomad-reviews");

// const bookSpot = document.querySelector(".showpage-book-spot-tab");
// const nomadReviewsTab = document.querySelector(".showpage-reviews-tab")

// const initCafeShowToggle = () => {
//   if (bookSpot && nomadReviewsTab) {
//     bookSpot.onclick = () => {
//       bookSpot.classList.add("active");
//       nomadReviewsTab.remove("active");

//       tablesCafe.classList.remove("ninja");
//       nomadReviews.classList.add("ninja")
//     };

//     nomadReviewsTab.onclick = () => {
//       bookSpot.classList.remove("active");
//       nomadReviewsTab.add("active");

//       tablesCafe.classList.add("ninja");
//       nomadReviews.classList.remove("ninja");
//     }
//   }
// };




// export { initMapListToggle };
// export { initCafeDashToggle};
// export { initCafeShowToggle};

