# SID Project Resources

This repository details the resources available for the calculations for the SID projects.

Two types of machines are available for computation:

- Machines at the INSA
- Servers at the CRIANN

The two following sections detail the steps to connect to the machines.

The details are given for Linux user. If you want to connect from windows and have windows 10, I recommend installing [Ubuntu](https://www.numerama.com/tech/158150-le-shell-bash-sous-windows-10-ce-quil-faut-savoir.html). If not, you'll probably want to use [PuTTY](https://www.putty.org/)

In this repository, examples taken from [tensorflow](https://www.tensorflow.org/tutorials) and [pytorch](https://pytorch.org/tutorials/) are given. The last section details how to start the calculations on the jupyter notebook at the CRIANN.

**Warning: For all the following steps, you will need INSA login/password.**

## Accessing the machines at the INSA

You can find all the information for remote connection [here](https://wiki.insa-rouen.fr/doku.php?id=insa:salles-tp:start)

The computer with the GPUs are the ones in MAHR207.

Prior to connecting to a machine, you may want to check if it is up or not [here](https://dsi.insa-rouen.fr/salles/37/).

Once this is done, if you are inside the INSA, you may connect through ssh with the following command:

```bash
ssh -X <username>@gmlinXX.insa-rouen.fr
```

If you are outside INSA, you'll need to use a ssh tunnel:

```bash
# In the first terminal
ssh -L2200:gmlinXX.insa-rouen.fr:22 <username>@ssh.insa-rouen.fr

# In the second
ssh -X -p2200 -o 'HostKeyAlias gmlinXX.insa-rouen.fr' <username>@localhost
```

## Connecting to the CRIANN

There is two possible situations you can be in when you try to connect to the servers. Either you connect from a machine at the INSA or from the outside.

If you connect from the insa, simply do the following to connect:

```bash
# Run the ssh command from a bash shell
ssh xxxxxxyy@deca-cafe.crihan.fr
```

If you connect from outside the insa, you need to connect through the ssh proxy:

**For now the connection through tunnel is bugged, but you can access the server connecting first at a machine at the INSA then to the CRIANN c.f [previous section](#Accessing-the-machines-at-the-INSA)**
```bash

```

## Running calculation on the CRIANN

Once you are connected at the CRIANN, you can start a notebook using the following commands:

```bash
# During the project sessions
starttp

# At any other time
startprojet
```

This will give you an address to connect to through a web browser. Once connected you can access all the example codes (given that you have cloned this repository on the server).

Multiple examples are available both for tensorflow and pytorch:

- image classification
- text generation
- image generation

**Warning** 
To use the notebooks for pytorch, you will need to install pytorch first. To do so, start a terminal from the launcher and run the following command:

```bash
pip install torchvision --user
```

**Warning**
Jupyter may not release CUDA from the notebooks, to run a new notebook you may need to restart or close the previous one.
