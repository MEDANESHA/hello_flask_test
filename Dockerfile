FROM python:3.9

WORKDIR /app

# Copiez le code source de l'application dans l'image
COPY . .

# Installez les dépendances de l'application
RUN pip install -r requirements.txt  

# Ajoutez le script d'initialisation et donnez-lui les permissions d'exécution
#ADD init_script.sh /app
#RUN chmod +x /app/init_script.sh

# Commande par défaut pour démarrer l'application lorsqu'un conteneur est lancé
CMD ["python","app.py"]
