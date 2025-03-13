<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.utilisateurDAO" %>
<%@ page import="model.utilisateurs" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau de bord Client</title>
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
                    <li><a href="logoutServlet" class="bg-green-500 px-4 py-2 rounded-lg hover:bg-green-600">Deconnexion</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="relative bg-cover bg-center h-[500px] flex items-center justify-center text-center text-white" style="background-image: url('image/pexels-karolina-grabowska-4046792.jpg');">
        <div class="bg-black bg-opacity-50 p-10 rounded-xl">
            <h2 class="text-4xl font-bold mb-4">Bienvenue, <%= session.getAttribute("name") %></h2>
        </div>
    </section>

    <!-- Séances d'Entraînement -->
    <section class="container mx-auto px-6 py-16 text-center">
        <h3 class="text-3xl font-bold mb-6">Vos Séances d'Entraînement</h3>
        <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-md">
            <thead>
                <tr>
                    <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Nom du Coach</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Date d'Entraînement</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    utilisateurDAO dao = new utilisateurDAO();
                    List<utilisateurs> coaches = dao.getCoachesForClient(session.getAttribute("name").toString());
                    for (utilisateurs coach : coaches) {
                %>
                <tr class="border-b">
                    <td class="px-6 py-3 text-sm text-gray-700"><%= coach.getNom() %></td>
                    <td class="px-6 py-3 text-sm text-gray-700">DD-MM-YYYY</td> <!-- Remplace avec la vraie date -->
                    <td class="px-6 py-3 text-sm text-gray-700">
                        <a href="modifierSeance?id=<%= coach.getId() %>" class="text-blue-500 hover:underline">Modifier</a>
                        <a href="supprimerSeance?id=<%= coach.getId() %>" onclick="return confirm('Voulez-vous vraiment supprimer cette séance ?');" class="ml-4 text-red-500 hover:underline">Supprimer</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </section>

    <!-- Footer -->
    <footer class="bg-black text-white text-center py-6">
        <p>© 2025 Gym Pro - Tous droits réservés</p>
    </footer>

</body>
</html>
