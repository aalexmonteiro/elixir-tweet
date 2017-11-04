FROM ubuntu:14.04
MAINTAINER Alex Monteiro "aalexmonteiro@gmail.com"

# Install base package
RUN apt-get update
RUN apt-get install -y wget git build-essential

# Install Erlang
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN sudo dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y esl-erlang

# Install Elixir
RUN apt-get install -y elixir
