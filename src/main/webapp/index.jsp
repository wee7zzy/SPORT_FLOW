<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Pro - Accueil</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <!-- Navbar -->
    <header class="bg-black text-white">
        <div class="container mx-auto flex justify-between items-center py-4 px-6">
            <h1 class="text-2xl font-bold">🏋️ Gym Pro</h1>
            <nav>
                <ul class="flex space-x-6">
                    <li><a href="index.jsp" class="hover:text-gray-400">Accueil</a></li>
                    <li><a href="#about" class="hover:text-gray-400">À propos</a></li>
                    <li><a href="#services" class="hover:text-gray-400">Services</a></li>
                    <li><a href="#contact" class="hover:text-gray-400">Contact</a></li>
                    <li><a href="connexion.jsp" class="bg-green-500 px-4 py-2 rounded-lg hover:bg-green-600">Connexion</a></li>
                    <li><a href="inscription.jsp" class="bg-blue-500 px-4 py-2 rounded-lg hover:bg-blue-600">S'inscrire</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="relative bg-cover bg-center h-[500px] flex items-center justify-center text-center text-white" style="background-image: url('image/pexels-karolina-grabowska-4046792.jpg');">
        <div class="bg-black bg-opacity-50 p-10 rounded-xl">
            <h2 class="text-4xl font-bold mb-4">Transforme ton corps, change ta vie</h2>
            <p class="text-lg mb-6">Rejoignez-nous et commencez votre parcours de remise en forme aujourd'hui !</p>
            <a href="inscription.jsp" class="bg-blue-500 px-6 py-3 text-lg font-bold rounded-lg hover:bg-blue-600">Commencer maintenant</a>
        </div>
    </section>

    <!-- À propos -->
    <section id="about" class="container mx-auto px-6 py-16 text-center">
        <h3 class="text-3xl font-bold mb-6">À propos de Gym Pro</h3>
        <p class="text-gray-700 max-w-2xl mx-auto">Nous offrons des entraînements personnalisés, des cours collectifs et des équipements de pointe pour vous aider à atteindre vos objectifs de fitness.</p>
    </section>

    <!-- Services -->
    <section id="services" class="bg-gray-200 py-16">
        <div class="container mx-auto px-6">
            <h3 class="text-3xl font-bold text-center mb-8">Nos Services</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-6 rounded-lg shadow-md text-center">
                    <h4 class="text-xl font-semibold mb-2">Coaching Personnel</h4>
                    <p class="text-gray-600">Des entraînements adaptés à vos besoins avec des coachs certifiés.</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md text-center">
                    <h4 class="text-xl font-semibold mb-2">Cours Collectifs</h4>
                    <p class="text-gray-600">Des cours motivants : yoga, HIIT, musculation et plus encore.</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md text-center">
                    <h4 class="text-xl font-semibold mb-2">Équipements de Haute Qualité</h4>
                    <p class="text-gray-600">Des machines et équipements modernes pour une expérience optimale.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact -->
    <section id="contact" class="container mx-auto px-6 py-16 text-center">
        <h3 class="text-3xl font-bold mb-6">Contactez-nous</h3>
        <p class="text-gray-700 mb-4">📍 Adresse : 123 Rue du Fitness, BENI MELLAL</p>
        <p class="text-gray-700 mb-4">📞 Téléphone : +212 6 12 34 56 78</p>
        <p class="text-gray-700">✉️ Email : contact@gympro.com</p>
    </section>

    <!-- Footer -->
    <footer class="bg-black text-white text-center py-6">
        <p>© 2025 Gym Pro - Tous droits réservés</p>
    </footer>

</body>
</html>
