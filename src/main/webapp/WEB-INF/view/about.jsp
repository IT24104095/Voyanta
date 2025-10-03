<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Voyanta</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/about.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>
<%@ include file="/WEB-INF/view/common/navbar.jsp" %>

<section class="about">
    <div class="container">

        <section class="about-header">
            <div class="about-text">
                <h1>About Our Company</h1>
                <p>We're dedicated to providing exceptional car rental services with a focus on quality, convenience, and customer satisfaction.</p>
                <a href="#" class="btn">Browse our Fleet</a>
                <a href="#" class="btn outline">Contact Us</a>
            </div>
            <div class="about-image">
                <img src="${pageContext.request.contextPath}/assets/images/1.jpg" alt="car">
            </div>
        </section>

        <section class="story-section">
            <h2>Our Story</h2>
            <p>Founded in 2025, our car rental service began with a small fleet of just 5 vehicles. Today, we've grown to become one of the leading car rental providers in the region with over 100 vehicles and multiple locations.</p>

            <div class="story-content">
                <div class="story-image">
                    <img src="${pageContext.request.contextPath}/assets/images/1.jpg" alt="BashuDev">
                </div>
                <div class="story-text">
                    <h3>From Small Beginnings to Industry Leader</h3>
                    <p>What started as a small family business has grown into a trusted name in the car rental industry. Our journey has been defined by our commitment to quality service and customer satisfaction.</p>
                    <p>We've continuously expanded our fleet to include the latest models and a wide range of vehicle types to meet every customer's needs - from economy cars to luxury vehicles and everything in between.</p>
                    <p>Throughout our growth, we've maintained our core values of transparency, reliability, and exceptional service that have been the foundation of our success.</p>
                </div>
            </div>
        </section>

        <section class="values-section">
            <h2>Our Values</h2>
            <p>Our core values guide everything we do, from how we maintain our vehicles to how we interact with our customers.</p>

            <div class="values-grid">
                <div class="value-card">
                    <div class="value-icon">🚗</div>
                    <h3>Quality</h3>
                    <p>We maintain a modern fleet of well-serviced vehicles to ensure reliability and safety.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">✓</div>
                    <h3>Reliability</h3>
                    <p>We deliver on our promises and ensure a hassle-free rental experience every time.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">👥</div>
                    <h3>Customer Focus</h3>
                    <p>We put our customers first and strive to exceed expectations with every interaction.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">⏱</div>
                    <h3>Efficiency</h3>
                    <p>We value your time and have streamlined our processes for quick and easy rentals.</p>
                </div>
            </div>
        </section>
    </div>
</section>
<div class="container">
    <!-- Achievement Section -->
    <section class="achievement-section">
        <h1 class="section-title">Our Achievement</h1>
        <div class="underline"></div>
        <p class="section-description">We're proud of our accomplishments and the recognition we've received for our service excellence.</p>

        <div class="achievement-grid">
            <!-- Recognition Column -->
            <div class="achievement-card" data-aos="fade-right">
                <div class="achievement-header">
                    <i class="fas fa-trophy"></i>
                    <h3>Achievement & Recognition</h3>
                </div>
                <ul class="achievement-list">
                    <li><i class="fas fa-check-circle"></i> Best Car Rental Service 2023 - City Business Awards</li>
                    <li><i class="fas fa-check-circle"></i> Customer Service Excellence Award 2022</li>
                    <li><i class="fas fa-check-circle"></i> Green Fleet Initiative Recognition 2021</li>
                    <li><i class="fas fa-check-circle"></i> Top 10 Car Rental Companies 2020-Industry Magazine</li>
                </ul>
            </div>

            <!-- Numbers Column -->
            <div class="achievement-card" data-aos="fade-left">
                <div class="achievement-header">
                    <i class="fas fa-chart-line"></i>
                    <h3>By the Numbers</h3>
                </div>
                <div class="stats-container">
                    <div class="stat-item">
                        <h2 class="counter">100+</h2>
                        <p>Vehicles in our fleet</p>
                    </div>
                    <div class="stat-item">
                        <h2 class="counter">15,000+</h2>
                        <p>Happy customers annually</p>
                    </div>
                    <div class="stat-item">
                        <h2 class="counter">5</h2>
                        <p>Locations across the region</p>
                    </div>
                    <div class="stat-item">
                        <h2 class="counter">98%</h2>
                        <p>Customer satisfaction rate</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="cta-content" data-aos="fade-right">
            <h2>Ready to Experience Our Service?</h2>
            <p>Browse our fleet of quality vehicles and book your next rental today. We're committed to making your journey comfortable and hassle-free.</p>
            <button class="cta-button">Browse Vehicle <i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="cta-image" data-aos="fade-left">
            <img src="${pageContext.request.contextPath}/assets/images/1.jpg" alt="BashuDev">
        </div>
    </section>
</div>

<!-- AOS Animation Library -->
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>
    // Initialize AOS animation
    AOS.init({
        duration: 800,
        once: false
    });

    // Counter animation for statistics
    document.addEventListener("DOMContentLoaded", function() {
        const counters = document.querySelectorAll('.counter');
        const speed = 200;

        counters.forEach(counter => {
            const updateCount = () => {
                const target = parseInt(counter.innerText);
                const count = parseInt(counter.innerText);

                if (count < target) {
                    counter.innerText = count + 1;
                    setTimeout(updateCount, speed);
                }
            };

            updateCount();
        });
    });
</script>
<jsp:include page="/WEB-INF/view/common/footer.jsp" />
</body>
</html>