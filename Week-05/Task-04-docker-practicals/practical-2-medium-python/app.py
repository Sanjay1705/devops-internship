import os, socket

greet = os.getenv("GREETING", "Hello")
print(f"{greet} from container host: {socket.gethostname()}")

