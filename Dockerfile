## use the official Python3.9 image
FROM python:3.9

## set the working directory to /code
WORKDIR /code

## Copy the corrent directory conmtents in the containers st /code
COPY ./requirements.txt /code/requirements.txt

## Install the requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Setup a new user named "user"
RUN useradd user

#switch to the "user" user
USER user

#set home to the users home directory

ENV HOME =/home/user \
    PATH=/hoem/user/.local/bin:PATH

# set the working directory to the user's home directory
WORKDIR $HOME/app.py

# copy the current directory contents into the container at $HOME/app setting the ower 
COPY --chown==user . $HOME/app.py

## Start the FastAPI App on port 7860
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","7860"]