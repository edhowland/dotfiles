# Clone your Github workstation to a new host

## Abstract


Say you have a new machine from which you wnat to start working from.
Here are the steps I went through to clone my existing setup on one Linux host to a new host:

### Conventions used in this document:

- Your current host is : 'myhost'
- The new host is : 'yourhost'
- Your current host .ssh/ folder is referred as ~/.ssh
- The new host .ssh/ folder is preceeded with its own full path: E.g. /home/you
- In my own example file paths, the full path is: /home/edh

#### Replace with your own home path```
$ echo $HOME
/home/edh
```

### Preamble

The following assumptions are assumed:

#### Note: In the following paths: replace '/home/edh' with your $HOME contents.

- You can git clone/push/pull from github.com/your_name/repository.
- You have a public SSH key loaded in Github settings area fro this.
- SSH and Git are insstalled  on the new host.
- On your current host: You have 2 files in your ~/.ssh  : 
  *  /home/edh/.ssh/git.id_rsa
  * /home/edh/.ssh/git.id_rsa.pub

It is assumed that have a public private key pair for only Github stored in
their own files.
Also, you have configured your ~/.ssh/config with a 
hhost github.com
section.

## Steps

1. cd ~/.ssh
2. Edit ./config
  - extract out the lines beginning wit hhost github.com into a new file: github-config.txt
  - Replace the following /home/edh' path prefix with your own home prefix  on new host

```
host github.com
  User git
  IdentityFile=/home/edh/.ssh/git.id_rsa
```

3. Tarball the following 3 files into github-keys.tar.gz.
  * Be careful with this file. It contains your private key for Github.

```
# If not already therein:
$ cd ~/.ssh
$ tar zcvf github-keys.tar.gz ./github-config.txt ./git.id_rsa.pub ./git.id_rsa
# Now scp to new host
scp github-keys.tar.gz yourhost:./ssh
```

4. Now ssh to your new host and extract the tarbal

```
$ ssh you@yourhost
yourhost $ tar zxvf github-keys.tar.gz
```

5. Now clone your repositories

```
# cd to your development root
yourhost $ cd ~/dev

# Now try to clone with your  URLsssh 
yourhost $ git clone git:/github.com/your_name/your_repo
```

## Optional steps

- Make sure git is setup w/user.name and user.email

```
# This setup might not be required if it was already  done previously and loaded in your Github repo.
# In your repository folder:
yourhost $ git config user.name "Your Name"
yourhost $ git config user.email you@example.com
```

- Setup your git flow setup if you use git-flow and it is installed on your new host:

```
yourhost $ cd /~/dev/your_repo
yourhost $ git flow init -d
```


## Conclusion