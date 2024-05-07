from rest_framework.decorators import api_view
from rest_framework.response import Response
import sys
import os 
import signal

@api_view(["GET"])
def testing(request):
    return Response({"message":"all good"})

@api_view(["GET"])
def crash(request):
    os.kill(os.getpid(),signal.SIGINT)
    


# Create your views here.
