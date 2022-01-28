from food_proj import __version__
import os

#TEST CAN BE RUN BY TYPING THE FOLLOWING COMMAND IN THE TERMINAL AND ARE LOCATED WITHIN EACH APP PROJECT DIRECTORY:
#python manage.py test
 
def test_version():
    assert __version__ == '0.1.0'
