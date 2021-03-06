<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Liens utiles</title>
		<c:import url="../includes/htmlheader.jsp" />
		<link href="../css/liensutiles.css" rel="stylesheet">
	</head>
	<body>
		<c:import url="../includes/menuprincipal.jsp">
			<c:param name="pageSelectionnee" value="liensutiles"/>
		</c:import>		
		<div class="container">
			<c:import url="../includes/messages.jsp" />
			<header class="row page-header"><h1>Liens utiles</h1></header>
			<div class="row">
				<div class=" col-md-12">
					<article class="panel panel-default">
						<div class="panel-heading"><h4>Essentiels</h4></div>
	  					<table class="table">
							<tr>
								<th></th>
								<th class="description">Description</th>
								<th>Logiciel</th>
								<th>Système</th>
							</tr>
							<tr>
								<td rowspan="2">Editeur de texte</td>
								<td rowspan="2">L'éditeur de texte permet de créer et modifier les différents fichier de votre site web. La coloration syntaxique facilite la lecture du code.</td>
								<td><a href="http://www.sublimetext.com" target="_blank">Sublime Text</a></td>
								<td>Windows, OSX, Linux</td>
							</tr>
							<tr>
								<td><a href="http://notepad-plus-plus.org" target="_blank">Notepad++</a></td>
								<td>Windows</td>
							</tr>
							<tr>
								<td rowspan="4">Navigateur web</td>
								<td rowspan="4">Le navigateur web permet d'afficher un site web. Chacun peut avoir son comportement spécifique. Il est important pour un développeur web d'en avoir plusieurs installés.</td>
								<td><a href="https://www.google.fr/chrome/browser/" target="_blank">Google Chrome</a></td>
								<td>Windows, OSX, Linux</td>
							</tr>
							<tr>
								<td><a href="https://www.mozilla.org/fr/firefox/" target="_blank">Mozilla Firefox</a></td>
								<td>Windows, OSX, Linux</td>
							</tr>
							<tr>
								<td>Microsoft Internet Explorer</td>
								<td>Windows (Défaut)</td>
							</tr>
							<tr>
								<td>Apple Safari</td>
								<td>OSX (Défaut)</td>
							</tr>
	  					</table>
					</article>
				</div>
			</div>
			<div class="row">
				<div class=" col-md-6">
					<article class="panel panel-default">
						<div class="panel-heading"><h4>Développer un site en Java</h4></div>
						<div class="panel-body">
	  						<p>Développer un site web avec Java nécessite quelques outils listés ci-dessous.</p>
						</div>
	  					<table class="table">
							<tr>
								<td><a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html" target="_blank">JDK8</a></td>
								<td>Le JDK contient la JRE permettant d'exécuter des applications Java ainsi que tous les utilitaires pour compiler ces applications.</td>
							</tr>
							<tr>
								<td><a href="http://www.eclipse.org/downloads/" target="_blank">Eclipse</a></td>
								<td>Eclipse est un environnement de développement. La version qui nous intéresse est <strong>Eclipse Luna for JavaEE Developpers</strong> qui contient tous les plugins nécessaires au dévelopement d'application web en Java.</td>
							</tr>
							<tr>
								<td><a href="http://tomcat.apache.org/download-80.cgi" target="_blank">Apache Tomcat 8</a></td>
								<td>Apache Tomcat est un conteneur de servlet permettant d'exécuter une application web développée en Java.</td>
							</tr>
	  					</table>
					</article>
				</div>
				<div class=" col-md-6">
					<article class="panel panel-default">
						<div class="panel-heading"><h4>Base de données</h4></div>
	  					<table class="table">
							<tr>
								<td><a href="http://dev.mysql.com/downloads/mysql/" target="_blank">MySQL 5.6</a></td>
								<td>MySQL est un serveur de base de données relationnel, l'un des plus utilisés dans le monde.</td>
							</tr>
							<tr>
								<td><a href="http://dev.mysql.com/downloads/workbench/" target="_blank">MySQL Workbench</a></td>
								<td>Workbench est le client MySQL officiel.</td>
							</tr>
							<tr>
								<td><a href="http://www.heidisql.com/download.php" target="_blank">HeidiSQL</a></td>
								<td>HeidiSQL est un client SQL pour Windows plus léger que MySQL Workbench. En plus de MySQL, il gère également PostgreSQL et SQL Server.</td>
							</tr>
	  					</table>
					</article>
				</div>
			</div>
			<div class="row">
				<div class=" col-md-6">
					<article class="panel panel-default">
						<div class="panel-heading"><h4>Travail collaboratif</h4></div>
						<div class="panel-body">
	  						<p>Travailler à plusieurs développeurs sur un même projet entraîne des problématiques spécifiques : partage des sources, gestion des conflits... Des outils permettent de faciliter ce travail.</p>
						</div>
	  					<table class="table">
							<tr>
								<td><a href="http://git-scm.com/downloads" target="_blank">Git</a></td>
								<td>
									Git est un logiciel de gestion de version. Son installation permet d'accéder à Git en ligne de commande. Le <a href="https://www.atlassian.com/fr/git/" target="_blank">tutoriel d'Atlassian</a> vous donnera les bases de son utilisations. <br>
									D'autres outils de gestion de version existent : <a href="http://mercurial.selenic.com/downloads" target="_blank">Mercurial</a>, <a href="https://subversion.apache.org" target="_blank">Subversion</a> ou <a href="http://cvs.nongnu.org" target="_blank">CVS</a> par exemple.
								</td>
							</tr>
							<tr>
								<td><a href="http://www.sourcetreeapp.com" target="_blank">SourceTree</a></td>
								<td>SourceTree est un client graphique pour Git (et Mercurial) permettant de s'affranchir des lignes de commande et de simplifier la gestion d'un projet Git.</td>
							</tr>
							<tr>
								<td><a href="http://www.sourcetreeapp.com" target="_blank">GitHub</a></td>
								<td>GitHub est un site web permettant d'héberger des dépôts Git. Son utilisation est gratuite si le projet développé est open souce. Des comptes payants permettent d'héberger des projets privés.</td>
							</tr>
							<tr>
								<td><a href="https://bitbucket.org" target="_blank">BitBucket</a></td>
								<td>BitBucket est un site web permettant d'héberger des dépôts Git ou Mercurial. Contrairement à GitHub, la création de projets privés est gratuite. La limitation se situe au niveau du nombre d'tilisateurs pouvant contibuer à un projet (5 maximum pour les comptes gratuits).</td>
							</tr>
	  					</table>
					</article>
				</div>
				<div class=" col-md-6">
					<article class="panel panel-default">
						<div class="panel-heading"><h4>Héberger son site en JavaEE</h4></div>
						<div class="panel-body">
	  						<p>Héberger des sites web en Java est plus compliqué que d'héberger un site web PHP. Voici quelques services permettant de le faire.</p>
						</div>
	  					<table class="table">
							<tr>
								<td><a href="https://www.openshift.com" target="_blank">OpenShift</a></td>
								<td>L'offre Platform As A Service (PAAS) de RedHat permet entre autres l'hébergement de projet Java. L'utilisation d'un serveur MySQL est possible.</td>
							</tr>
							<tr>
								<td><a href="https://www.heroku.com" target="_blank">Heroku</a></td>
								<td>Autre offre PAAS qui permet l'hébergement de projet Java. L'utilisation d'un serveur MySQL n'est pas possible mais PostgreSQL est disponible.</td>
							</tr>
	  					</table>
					</article>
				</div>
			</div>
		</div>
	</body>
</html>