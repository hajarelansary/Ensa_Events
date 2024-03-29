<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
          rel="stylesheet">
    <style>
        .bar-1 {
            width: ${100*event.ratingStats[0]/event.reviews.size()}%;
        }

        .bar-2 {
            width: ${100*event.ratingStats[1]/event.reviews.size()}%;
        }

        .bar-3 {
            width: ${100*event.ratingStats[2]/event.reviews.size()}%;
        }

        .bar-4 {
            width: ${100*event.ratingStats[3]/event.reviews.size()}%;
        }

        .bar-5 {
            width: ${100*event.ratingStats[4]/event.reviews.size()}%;
        }
    </style>
</head>

<body class="w-100">
<div class="text-center bg-main d-flex justify-content-center">
    <img src="${pageContext.request.contextPath}/assets/events/${event.coverPhoto}" class="cover-img">
</div>
<div class="py-3 px-md-5 px-3">
    <div class="row">
        <div class="col-md-8 col-12">
            <span class="text-uppercase text-danger"><fmt:formatDate value="${event.date}" type="date"
                                                                     pattern="EEEE, dd MMM yyyy 'at' HH:mm"/></span>
            <h3>${event.name}</h3>
        </div>
        <div class="col-md-4 col-12 d-flex justify-content-start justify-content-md-end">
            <div class="">

                <button class="btn btn-light ">
                    <svg class="btn-icon">
                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-star"></use>
                    </svg>
                    Intrested
                </button>
                <button class="btn btn-light">
                    <svg class="btn-icon">
                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-share-2"></use>
                    </svg>
                </button>
            </div>
        </div>
    </div>
</div>

<div class="px-md-4 p-0 pb-3 bg-main">
    <div class="row">
        <div class="col-md-8 col-lg-9 col-12 px-4 px-md-3 px-lg-4">
            <div class="bg-white mt-4 p-4 rounded">
                <h3>Details</h3>
                <div class="d-flex">
                    <svg class="detail-icon mr-2 mb-2">
                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-users"></use>
                    </svg>
                    <span>69 people responded</span>
                </div>
                <div class="d-flex">
                    <svg class="detail-icon mr-2  mb-2">
                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-user"></use>
                    </svg>
                    <span>Event By <strong>Club ${event.club.name}</strong></span>
                </div>
                <div class="d-flex">
                    <svg class="detail-icon mr-2 mb-2">
                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-public"></use>
                    </svg>
                    <span>Public - Anyone can attend this event</span>
                </div>
                <p>
                    ${event.description}
                </p>
            </div>
            <div class="bg-white mt-4 p-4 rounded">
                <h3>Reviews</h3>


                <div class="row justify-content-center">
                    <div class=" col-12 col-md-11 text-center mb-5">
                        <div class="card review-card">
                            <div class="row justify-content-start d-flex">
                                <div class="col-md-4 d-flex flex-column">
                                    <div class="rating-box">
                                        <h1 class="pt-4">${event.avgRating}</h1>
                                        <p class="">out of 5</p>
                                    </div>
                                    <div class="mt-1">
                                        <c:forEach begin="1" end="${event.avgRating}">
                                            <svg class="rating-icon">
                                                <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-star-full"></use>
                                            </svg>
                                        </c:forEach>
                                        <c:forEach begin="${event.avgRating+1}" end="5">
                                            <svg class="rating-icon">
                                                <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-star"></use>
                                            </svg>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="rating-bar0 justify-content-center">
                                        <table class="text-left mx-auto">
                                            <tr>
                                                <td class="rating-label">Excellent</td>
                                                <td class="rating-bar">
                                                    <div class="bar-container">
                                                        <div class="bar bar-5"></div>
                                                    </div>
                                                </td>
                                                <td class="text-right">${event.ratingStats[0]}</td>
                                            </tr>
                                            <tr>
                                                <td class="rating-label">Good</td>
                                                <td class="rating-bar">
                                                    <div class="bar-container">
                                                        <div class=" bar bar-4"></div>
                                                    </div>
                                                </td>
                                                <td class="text-right">${event.ratingStats[1]}</td>
                                            </tr>
                                            <tr>
                                                <td class="rating-label">Average</td>
                                                <td class="rating-bar">
                                                    <div class="bar-container">
                                                        <div class="bar bar-3"></div>
                                                    </div>
                                                </td>
                                                <td class="text-right">${event.ratingStats[2]}</td>
                                            </tr>
                                            <tr>
                                                <td class="rating-label">Poor</td>
                                                <td class="rating-bar">
                                                    <div class="bar-container">
                                                        <div class="bar bar-2"></div>
                                                    </div>
                                                </td>
                                                <td class="text-right">${event.ratingStats[3]}</td>
                                            </tr>
                                            <tr>
                                                <td class="rating-label">Terrible</td>
                                                <td class="rating-bar">
                                                    <div class="bar-container">
                                                        <div class="bar bar-1"></div>
                                                    </div>
                                                </td>
                                                <td class="text-right">${event.ratingStats[4]}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card review-card">
                            <form:form method="post" action="${pageContext.request.contextPath}/reviews/add" class="text-left">
                                <span >Rating:</span>
                                <div class="starrating risingstar d-flex justify-content-end flex-row-reverse">
                                    <input type="radio" id="star5" name="rating" value="5"/><label for="star5"
                                                                                                   title="5 star"></label>
                                    <input type="radio" id="star4" name="rating" value="4"/><label for="star4"
                                                                                                   title="4 star"></label>
                                    <input type="radio" id="star3" name="rating" value="3"/><label for="star3"
                                                                                                   title="3 star"></label>
                                    <input type="radio" id="star2" name="rating" value="2"/><label for="star2"
                                                                                                   title="2 star"></label>
                                    <input type="radio" id="star1" name="rating" value="1"/><label for="star1" title="1 star"></label>
                                </div>
                                <label for="description">Review:</label>
                                <textarea name="description" id="description" class="w-100"></textarea>
                                <input type="hidden" name="eventId" value="${event.id}">
                                <button class="mt-2 btn btn-primary mb-0">Write a review</button>

                            </form:form>
                        </div>
                        <c:forEach items="${event.reviews}" var="review">
                            <div class="card review-card">
                                <div class="row d-flex">
                                    <div class="">
                                        <img class="profile-pic"
                                             src="${pageContext.request.contextPath}/assets/img/users/${review.user.avatar}">
                                    </div>
                                    <div class="d-flex flex-column">
                                        <h3 class="mt-2 mb-0 text-capitalize">${review.user.firstname } ${review.user.lastname}</h3>
                                        <div>
                                            <p class="text-left d-flex align-items-center"><span
                                                    class="text-muted mr-1">${review.rating}</span>
                                                <c:forEach begin="1" end="${review.rating}">
                                                    <svg class="rating-icon">
                                                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-star-full"></use>
                                                    </svg>
                                                </c:forEach>
                                                <c:forEach begin="${review.rating+1}" end="5">
                                                    <svg class="rating-icon">
                                                        <use xlink:href="${pageContext.request.contextPath}/assets/img/icons.svg#icon-star"></use>
                                                    </svg>
                                                </c:forEach>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="ml-auto">
                                        <p class="text-muted pt-5 pt-sm-3">
                                            <fmt:formatDate value="${review.date}"
                                                            type="date"
                                                            pattern="dd-MM-yyyy 'at' HH:mm"/>
                                        </p>
                                    </div>
                                </div>
                                <div class="text-left">
                                    <p class="content">${review.description}</p>
                                    <c:if test="${review.user.username.equals(user.username)}">
                                        <%-- fixme  deleteReview(id) has to be implemented--%>
                                        <a class="link-primary" href="#" onclick="deleteReview(id)">Delete</a>
                                    </c:if>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <div class=" px-4 px-md-0 py-4 col-md-4 col-lg-3  col-sm-12 ">
            <div class="bg-white  p-4 rounded">
                <h3>Guests</h3>
                <div class="d-flex  justify-content-center py-4">
                    <div class="d-flex flex-column align-items-center">
                        <h2 cla>${event.participants.size()}</h2>
                        <h4 class="text-uppercase">Intrested</h4>
                    </div>
                </div>
                <div class="overflow-auto border-light border rounded users px-2">
                    <div class="user d-flex align-items-center">
                        <img class="user-img m-2" src="${pageContext.request.contextPath}/assets/img/user.png"/>
                        <span class="user-name">Riaz Beck</span>
                    </div>
                    <c:forEach items="${event.participants}" var="participant">
                        <div class="user d-flex align-items-center">
                            <img class="user-img m-2"
                                 src="${pageContext.request.contextPath}/assets/img/users/${participant.avatar}"/>
                            <span class="user-name">${participant.firstname} ${participant.lastname}</span>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="bg-color-blue d-flex flex-wrap justify-content-between align-items-center py-3 border-top">
    <p class="col-md-4 mb-0 text-white">&copy; 2021 Company, Inc</p>
    <a href="${pageContext.request.contextPath}/"
       class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
        <img class="bi me-2" height="40" src="${pageContext.request.contextPath}/assets/img/Logo.png" alt=""/>
    </a>
    <ul class="nav col-md-4 justify-content-end .text-white">
        <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Features</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-white">About</a></li>
    </ul>
</footer>
<!-- JQuery -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
<!-- Swiper JS -->
<script src="${pageContext.request.contextPath}/assets/js/swiper-bundle.min.js"></script>

<!-- Main script -->
<script src="${pageContext.request.contextPath}/assets/js/script.js"></script>

</body>

</html>