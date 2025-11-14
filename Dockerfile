# This file tells Render to get the official n8n Docker image
# and set it up correctly with your database.
FROM n8nio/n8n
# We tell n8n to use the port Render expects
ENV N8N_PORT=${PORT}
# We set the user to 'node' which is safer
USER node
# This is the fix. We are forcing n8n to start
# and listen on the correct port from Render.
CMD ["n8n", "start", "--port=${PORT}"]
