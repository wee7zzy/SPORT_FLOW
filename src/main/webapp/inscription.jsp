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
                    <li><a href="#" class="hover:text-gray-400">Accueil</a></li>
                    <li><a href="#about" class="hover:text-gray-400">À propos</a></li>
                    <li><a href="#services" class="hover:text-gray-400">Services</a></li>
                    <li><a href="#contact" class="hover:text-gray-400">Contact</a></li>
                     <li><a href="connexion.jsp" class="bg-green-500 px-4 py-2 rounded-lg hover:bg-green-600">Connexion</a></li>
                    <li><a href="inscription.jsp" class="bg-blue-500 px-4 py-2 rounded-lg hover:bg-blue-600">S'inscrire</a></li>
                </ul>
            </nav>
        </div>
    </header>

   <!-- Hero Section avec Formulaire d'inscription et lien de connexion -->

   <section class="relative bg-cover bg-center h-[500px] flex items-center justify-center text-center text-white"
       style="background-image: url('image/pexels-karolina-grabowska-4046792.jpg');">
       <div class="bg-black bg-opacity-50 p-10 rounded-xl w-[400px] mb-6">
           <h2 class="text-3xl font-bold mb-4">Inscription</h2>
           <form action="inscriptionServlet" method="POST" class="space-y-4">
               <!-- Champ Nom -->
               <div>
                   <label for="name" class="block text-left">Nom :</label>
                   <input type="text" id="name" name="name" required
                       class="w-full px-4 py-2 text-black rounded-lg">
               </div>

               <!-- Champ Email -->
               <div>
                   <label for="email" class="block text-left">Email :</label>
                   <input type="email" id="email" name="email" required
                       class="w-full px-4 py-2 text-black rounded-lg">
               </div>

               <!-- Champ Mot de Passe -->
               <div>
                   <label for="password" class="block text-left">Mot de passe :</label>
                   <input type="password" id="password" name="password" required
                       class="w-full px-4 py-2 text-black rounded-lg">
               </div>

               <!-- Sélection du Rôle -->
               <div>
                   <label for="role" class="block text-left">Rôle :</label>
                   <select id="role" name="role" required class="w-full px-4 py-2 text-black rounded-lg">
                       <option value="client">Client</option>
                       <option value="entraineur">Entraîneur</option>
                   </select>
               </div>

               <!-- Bouton S'inscrire -->
               <button type="submit" class="bg-blue-500 px-6 py-3 w-full text-lg font-bold rounded-lg hover:bg-blue-600">
                   S'inscrire
               </button>
           </form>

           <!-- Lien pour se connecter -->
           <p class="mt-4">
               Déjà inscrit ?
               <a href="connexion.jsp" class="text-blue-400 hover:underline">Se connecter</a>
           </p>
       </div>
   </section>



    <!-- Contact -->
    <section id="contact" class="container mx-auto px-6 py-16 text-center ">
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
