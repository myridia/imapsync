# imapsync
With this tool, you can transfer and sync an IMAP email account with all its folder structure from one server to another IMAP account on a different server 

## Example usage
```
  docker run -i myridia/imapsync \
--tls1 \
--host1 serverfoo.com \
--user1 bar@foo.com  \
--password1  secretpass \
--tls2 \
--host2 serverbar.com \
--user2 foo@bar.com  \
--password2  secretpass
```
