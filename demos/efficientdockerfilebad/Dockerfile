# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM python
WORKDIR /src
COPY . .
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]