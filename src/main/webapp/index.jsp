<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Nebula — Immersive E‑Commerce</title>
    
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700&family=Syne:wght@500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-deep: #050b14;
            --glass-bg: rgba(15, 25, 35, 0.65);
            --glass-border: rgba(72, 187, 255, 0.2);
            --primary-glow: #2dd4ff;
            --accent-purple: #c084fc;
            --text-light: #edf2f8;
            --text-muted: #94a3b8;
            --card-bg: rgba(18, 28, 40, 0.75);
            --success: #10b981;
            --danger: #f43f5e;
            --radius-xl: 28px;
            --radius-md: 20px;
            --shadow-soft: 0 25px 45px -12px rgba(0, 0, 0, 0.5);
            --backdrop-blur: blur(16px);
        }

        body {
            background: radial-gradient(circle at 10% 20%, #0a0f1a, #03060c);
            font-family: 'Inter', sans-serif;
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* custom scroll */
        ::-webkit-scrollbar {
            width: 5px;
        }
        ::-webkit-scrollbar-track {
            background: #0f172a;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary-glow);
            border-radius: 10px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* glass header */
        .glass-header {
            position: sticky;
            top: 20px;
            z-index: 100;
            width: calc(100% - 40px);
            margin: 0 20px;
            border-radius: 60px;
            background: rgba(8, 18, 28, 0.75);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(45, 212, 255, 0.2);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            transition: all 0.2s;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 24px;
            gap: 20px;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Syne', sans-serif;
            font-size: 1.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, #ffffff, var(--primary-glow));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .brand span {
            background: linear-gradient(135deg, var(--accent-purple), #2dd4ff);
            -webkit-background-clip: text;
            background-clip: text;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }
        .nav-links a {
            font-weight: 500;
            font-size: 0.95rem;
            transition: 0.2s;
            color: var(--text-light);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .nav-links a i { font-size: 1rem; }
        .nav-links a:hover { color: var(--primary-glow); text-shadow: 0 0 6px rgba(45,212,255,0.4); }

        .search-glass {
            background: rgba(255, 255, 255, 0.06);
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid rgba(255,255,255,0.1);
            backdrop-filter: blur(4px);
        }
        .search-glass input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 180px;
            font-size: 0.85rem;
        }
        .search-glass input::placeholder { color: #7e8aa2; }
        .icon-btn {
            background: transparent;
            border: none;
            color: white;
            cursor: pointer;
            font-size: 1.2rem;
            transition: 0.2s;
        }
        .cart-icon {
            position: relative;
            display: flex;
            align-items: center;
        }
        .cart-count-badge {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--danger);
            border-radius: 40px;
            width: 20px;
            height: 20px;
            font-size: 11px;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            color: white;
        }

        /* hero section - cosmic */
        .hero-modern {
            margin: 40px 20px 20px;
            border-radius: 48px;
            background: linear-gradient(125deg, rgba(0, 30, 45, 0.7), rgba(5, 10, 25, 0.85)), url('https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=2000&q=80');
            background-size: cover;
            background-position: center;
            backdrop-filter: blur(2px);
            padding: 70px 40px;
            text-align: center;
            border: 1px solid rgba(45,212,255,0.25);
            box-shadow: 0 20px 40px -15px black;
        }
        .hero-modern h1 {
            font-size: 3.5rem;
            font-family: 'Syne', sans-serif;
            font-weight: 800;
            background: linear-gradient(145deg, #fff, #b0f0ff);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .btn-group {
            margin-top: 32px;
            display: flex;
            gap: 18px;
            justify-content: center;
            flex-wrap: wrap;
        }
        .btn-primary-glow {
            background: linear-gradient(105deg, #0b2b3b, #0a1a2a);
            border: 1px solid var(--primary-glow);
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: all 0.25s;
            box-shadow: 0 0 8px rgba(45,212,255,0.3);
        }
        .btn-primary-glow:hover {
            background: #1c4e6e;
            border-color: #6ee7ff;
            box-shadow: 0 0 18px rgba(45,212,255,0.5);
            transform: scale(1.02);
        }
        .btn-outline-light {
            background: transparent;
            border: 1px solid rgba(255,255,255,0.5);
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 500;
            color: white;
            cursor: pointer;
        }

        /* categories cards glass */
        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            font-family: 'Syne';
            text-align: center;
            margin-bottom: 12px;
            letter-spacing: -0.01em;
        }
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin-top: 32px;
        }
        .cat-glass {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s ease;
            border: 1px solid rgba(72, 187, 255, 0.2);
            cursor: pointer;
        }
        .cat-glass i {
            font-size: 2.6rem;
            color: var(--primary-glow);
            margin-bottom: 12px;
        }
        .cat-glass:hover {
            transform: translateY(-6px);
            border-color: var(--primary-glow);
            background: rgba(25, 45, 65, 0.8);
            box-shadow: 0 20px 30px -10px rgba(0,0,0,0.5);
        }

        /* product grid neon */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
            margin-top: 40px;
        }
        .product-card {
            background: rgba(12, 22, 35, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 32px;
            border: 1px solid rgba(45,212,255,0.2);
            overflow: hidden;
            transition: 0.2s all;
        }
        .product-card:hover {
            border-color: #2dd4ff;
            transform: translateY(-5px);
            box-shadow: 0 25px 35px -15px rgba(0,0,0,0.5);
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-info {
            padding: 18px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.2rem;
        }
        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin: 10px 0;
        }
        .current-price {
            font-size: 1.4rem;
            font-weight: 800;
            color: #b9f2ff;
        }
        .old-price {
            font-size: 0.85rem;
            text-decoration: line-through;
            color: #8e9aaf;
        }
        .rating {
            color: #facc15;
            font-size: 0.8rem;
        }
        .add-to-cart {
            background: rgba(45,212,255,0.12);
            border: 1px solid #2dd4ff;
            width: 100%;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 12px;
        }
        .add-to-cart:hover {
            background: #2dd4ff;
            color: #0a0f1a;
            box-shadow: 0 0 12px #2dd4ff;
        }

        /* flash sale special */
        .flash-deal {
            background: linear-gradient(115deg, #0c1b2c, #07121e);
            border-radius: 48px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 20px;
            margin-top: 30px;
            border: 1px solid rgba(192,132,252,0.4);
            overflow: hidden;
        }
        .deal-image {
            flex: 1.2;
            min-height: 300px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80') center/cover;
        }
        .deal-content {
            flex: 1;
            padding: 32px;
        }
        .timer-cosmic {
            display: flex;
            gap: 15px;
            margin: 20px 0;
        }
        .time-unit {
            background: rgba(0,0,0,0.6);
            backdrop-filter: blur(8px);
            border-radius: 24px;
            padding: 12px 18px;
            text-align: center;
            min-width: 70px;
            border: 1px solid #c084fc;
        }
        .time-unit span:first-child {
            font-size: 1.8rem;
            font-weight: 800;
            font-family: monospace;
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 20px 0;
        }
        .testi-card {
            min-width: 320px;
            background: rgba(20, 30, 44, 0.65);
            backdrop-filter: blur(12px);
            border-radius: 32px;
            padding: 24px;
            border: 1px solid rgba(255,255,255,0.08);
        }

        .newsletter-glass {
            background: rgba(15, 25, 40, 0.7);
            backdrop-filter: blur(14px);
            border-radius: 48px;
            padding: 48px 28px;
            text-align: center;
            border: 1px solid #2dd4ff40;
        }
        .newsletter-group {
            display: flex;
            gap: 12px;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .newsletter-group input {
            background: rgba(0,0,0,0.4);
            border: 1px solid #4b5563;
            border-radius: 60px;
            padding: 14px 22px;
            width: 300px;
            color: white;
        }

        footer {
            margin-top: 60px;
            padding: 40px 20px;
            border-top: 1px solid rgba(45,212,255,0.2);
            text-align: center;
        }

        @media (max-width: 860px) {
            .nav-links { display: none; }
            .mobile-menu-btn { display: block; }
            .header-inner { justify-content: space-between; }
            .hero-modern h1 { font-size: 2.2rem; }
        }
        @media (max-width: 600px) {
            .container { padding: 0 20px; }
            .deal-image { min-height: 220px; }
        }
        .mobile-nav-drawer {
            display: none;
            background: #07111ecc;
            backdrop-filter: blur(24px);
            border-radius: 32px;
            margin: 12px 20px;
            padding: 20px;
        }
    </style>
</head>
<body>

<div class="glass-header">
    <div class="header-inner">
        <div style="display: flex; align-items: center; gap: 16px;">
            <button class="mobile-menu-btn" id="openMobileMenu"><i class="fas fa-bars"></i></button>
            <div class="brand">NEBULA<span>STORE</span></div>
        </div>
        <div class="nav-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#" id="catMenuTrigger"><i class="fas fa-th-large"></i> Categories</a>
            <a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a>
            <a href="#reviews"><i class="fas fa-star"></i> Reviews</a>
        </div>
        <div style="display: flex; align-items: center; gap: 15px;">
            <div class="search-glass">
                <i class="fas fa-search"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <div class="cart-icon">
                <i class="fas fa-shopping-bag icon-btn" id="cartIconBtn" style="font-size: 1.4rem;"></i>
                <span class="cart-count-badge" id="cartTotal">0</span>
            </div>
        </div>
    </div>
</div>

<div class="mobile-nav-drawer" id="mobileDrawer">
    <ul style="list-style: none; display: flex; flex-direction: column; gap: 18px;">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="mobileCatLink">Categories</a></li>
        <li><a href="#deals">🔥 Deals</a></li>
        <li><a href="#reviews">💬 Testimonials</a></li>
    </ul>
</div>

<main>
    <div class="container">
        <div class="hero-modern">
            <h1>Beyond the ordinary.<br>Cosmic drops.</h1>
            <p style="margin-top: 15px; max-width: 600px; margin-inline: auto; opacity: 0.8;">Grab futuristic gear, premium electronics & streetwear with interstellar shipping.</p>
            <div class="btn-group">
                <button class="btn-primary-glow" id="shopNowBtn"><i class="fas fa-meteor"></i> Shop Now</button>
                <button class="btn-outline-light" id="dealsBtn">Limited Offers →</button>
            </div>
        </div>

        <!-- categories -->
        <section style="margin-top: 60px;">
            <h2 class="section-title">⚡ Explore realms</h2>
            <div class="grid-categories" id="categoriesList"></div>
        </section>

        <!-- trending products -->
        <section style="margin-top: 70px;">
            <h2 class="section-title">✨ Trending Nebula picks</h2>
            <div class="product-grid" id="productContainer"></div>
        </section>

        <!-- flash sale -->
        <section id="deals" style="margin: 70px 0;">
            <h2 class="section-title">🌀 Gravity deal · 24h left</h2>
            <div class="flash-deal">
                <div class="deal-image"></div>
                <div class="deal-content">
                    <h3 style="font-size: 1.8rem;">MacBook Air M2 · Starlight</h3>
                    <p style="color: #a0b3d9;">Supercharged by next‑gen performance, ultraportable design.</p>
                    <div class="timer-cosmic" id="countdownTimer">
                        <div class="time-unit"><span id="days">0</span><br>Days</div>
                        <div class="time-unit"><span id="hours">00</span><br>Hrs</div>
                        <div class="time-unit"><span id="minutes">00</span><br>Min</div>
                        <div class="time-unit"><span id="seconds">00</span><br>Sec</div>
                    </div>
                    <div style="display: flex; gap: 20px; align-items: baseline; flex-wrap: wrap;">
                        <span class="current-price" style="font-size: 2rem;">$999</span>
                        <span class="old-price" style="font-size: 1.2rem;">$1,299</span>
                        <span style="background: #f43f5e; border-radius: 40px; padding: 5px 12px;">-23%</span>
                    </div>
                    <button class="add-to-cart" id="dealAddBtn" style="width: auto; margin-top: 20px; padding: 12px 28px;">Add to cart</button>
                </div>
            </div>
        </section>

        <!-- testimonials -->
        <section id="reviews" style="margin: 50px 0;">
            <h2 class="section-title">💫 Voices from the cosmos</h2>
            <div class="testimonial-scroll">
                <div class="testi-card"><div class="rating">★★★★★</div><p>“Insane quality, feels like premium sci-fi experience. Delivery was lightning fast!”</p><b>- Luna V.</b></div>
                <div class="testi-card"><div class="rating">★★★★☆</div><p>“The interface is next level, products arrived in cosmic packaging. Loved it.”</p><b>- Orion K.</b></div>
                <div class="testi-card"><div class="rating">★★★★★</div><p>“Best customer service and huge discounts. My go-to store now.”</p><b>- Nova Chen</b></div>
            </div>
        </section>

        <!-- newsletter -->
        <section>
            <div class="newsletter-glass">
                <h3 style="font-size: 1.8rem;">🚀 Hyperdrive updates</h3>
                <p>Subscribe for exclusive flash deals and early access</p>
                <div class="newsletter-group">
                    <input type="email" id="subEmail" placeholder="your@nebula.com">
                    <button class="btn-primary-glow" id="subBtn">Subscribe</button>
                </div>
                <div id="subMsg" style="margin-top: 12px; font-size: 0.8rem;"></div>
            </div>
        </section>
    </div>
</main>

<footer>
    <div class="container">
        <p style="letter-spacing: 1px;">© 2026 NEBULA — futuristic commerce, designed with 🧬</p>
        <div style="margin-top: 12px; display: flex; justify-content: center; gap: 20px;">
            <i class="fab fa-twitter"></i> <i class="fab fa-instagram"></i> <i class="fab fa-github"></i>
        </div>
    </div>
</footer>

<script>
    // DATA
    const categoriesData = [
        { name: "Quantum Phones", icon: "fa-mobile-screen" },
        { name: "Neo Laptops", icon: "fa-laptop-code" },
        { name: "Cyber Apparel", icon: "fa-shirt" },
        { name: "Audio Gear", icon: "fa-headphones" },
        { name: "Footwear", icon: "fa-shoe-prints" },
        { name: "Accessories", icon: "fa-gem" }
    ];
    const productsData = [
        { id: 1, title: "iPhone 16 Pro Nova", price: 1199, oldPrice: 1299, rating: 5, img: "https://images.unsplash.com/photo-1592899677977-9e10ca5889f6?auto=format&fit=crop&w=600&q=80", category: "Quantum Phones" },
        { id: 2, title: "Zenbook Pro 16 OLED", price: 1899, oldPrice: 2099, rating: 4, img: "https://images.unsplash.com/photo-1531297484001-80022131f5a1?auto=format&fit=crop&w=600&q=80", category: "Neo Laptops" },
        { id: 3, title: "Galaxy Buds 3 Pro", price: 199, rating: 5, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80", category: "Audio Gear" },
        { id: 4, title: "Techwear Jacket", price: 249, oldPrice: 320, rating: 4, img: "https://images.unsplash.com/photo-1591047139829-d91aecb6caea?auto=format&fit=crop&w=600&q=80", category: "Cyber Apparel" },
        { id: 5, title: "Nike Vaporfly", price: 220, rating: 5, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "Footwear" },
        { id: 6, title: "Smartwatch Orbit", price: 349, oldPrice: 499, rating: 5, img: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80", category: "Accessories" }
    ];

    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartTotal');
    const productContainer = document.getElementById('productContainer');
    const categoriesContainer = document.getElementById('categoriesList');
    const searchField = document.getElementById('globalSearch');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemsCount;
    }

    function addToCartById(productId, productTitle) {
        cartItemsCount++;
        updateCartUI();
        // subtle feedback effect
        const btn = document.querySelector(`.add-btn-${productId}`);
        if(btn) {
            const origText = btn.innerText;
            btn.innerText = "✓ Added";
            setTimeout(() => { if(btn) btn.innerText = origText; }, 1000);
        } else {
            alert(`✨ ${productTitle} added to cart`);
        }
    }

    function renderProducts(filter = "") {
        const filtered = productsData.filter(p => 
            p.title.toLowerCase().includes(filter.toLowerCase()) || 
            p.category.toLowerCase().includes(filter.toLowerCase())
        );
        productContainer.innerHTML = "";
        filtered.forEach(prod => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${prod.title}</div>
                    <div class="price-row">
                        <div><span class="current-price">$${prod.price}</span> ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice}</span>` : ''}</div>
                        <div class="rating">${'★'.repeat(Math.floor(prod.rating))} ${prod.rating%1 ? '½' : ''}</div>
                    </div>
                    <button class="add-to-cart add-btn-${prod.id}" data-id="${prod.id}"><i class="fas fa-cart-arrow-down"></i> Add to cart</button>
                </div>
            `;
            const btn = card.querySelector('.add-to-cart');
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                addToCartById(prod.id, prod.title);
            });
            productContainer.appendChild(card);
        });
    }

    function renderCategories() {
        categoriesContainer.innerHTML = "";
        categoriesData.forEach(cat => {
            const catDiv = document.createElement('div');
            catDiv.className = 'cat-glass';
            catDiv.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4><div style="font-size:12px;">explore</div>`;
            catDiv.addEventListener('click', () => {
                searchField.value = cat.name;
                renderProducts(cat.name);
                window.scrollTo({ top: document.querySelector('.product-grid')?.offsetTop - 80, behavior: 'smooth' });
            });
            categoriesContainer.appendChild(catDiv);
        });
    }

    // countdown timer
    function setupDealTimer() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(14, 0, 0, 0);
        if(targetDate < new Date()) targetDate.setDate(targetDate.getDate() + 1);
        function updateTimer() {
            const diff = targetDate - new Date();
            if(diff <= 0) {
                document.getElementById('days').innerText = "0"; document.getElementById('hours').innerText = "00";
                document.getElementById('minutes').innerText = "00"; document.getElementById('seconds').innerText = "00";
                return;
            }
            const days = Math.floor(diff / (1000*60*60*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('days').innerText = days;
            document.getElementById('hours').innerText = hours.toString().padStart(2,'0');
            document.getElementById('minutes').innerText = mins.toString().padStart(2,'0');
            document.getElementById('seconds').innerText = secs.toString().padStart(2,'0');
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    }

    // event binding
    document.getElementById('shopNowBtn').addEventListener('click', () => {
        document.querySelector('.product-grid')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('dealsBtn').addEventListener('click', () => {
        document.getElementById('deals')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('dealAddBtn').addEventListener('click', () => {
        cartItemsCount++;
        updateCartUI();
        alert("🚀 Limited MacBook added to cart!");
    });
    searchField.addEventListener('input', (e) => renderProducts(e.target.value));
    document.getElementById('subBtn').addEventListener('click', () => {
        const email = document.getElementById('subEmail').value;
        const msgDiv = document.getElementById('subMsg');
        if(!email || !email.includes('@')) {
            msgDiv.innerHTML = "⚠️ Enter a valid email address";
            msgDiv.style.color = "#ffaa88";
        } else {
            msgDiv.innerHTML = "✅ Subscribed! Get ready for stellar deals.";
            msgDiv.style.color = "#a5f3c3";
            document.getElementById('subEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 2500);
        }
    });
    document.getElementById('openMobileMenu').addEventListener('click', () => {
        const drawer = document.getElementById('mobileDrawer');
        drawer.style.display = drawer.style.display === 'none' || drawer.style.display === '' ? 'block' : 'none';
    });
    document.getElementById('mobileCatLink')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.querySelector('.grid-categories')?.scrollIntoView({ behavior: 'smooth' });
        document.getElementById('mobileDrawer').style.display = 'none';
    });
    document.getElementById('catMenuTrigger')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.querySelector('.grid-categories')?.scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('cartIconBtn')?.addEventListener('click', () => {
        alert(`🛒 Your cart has ${cartItemsCount} item(s). Checkout simulation.`);
    });

    // init
    renderCategories();
    renderProducts("");
    updateCartUI();
    setupDealTimer();
</script>
</body>
</html>
