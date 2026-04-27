# OpsBot. Log Analyzer (Python Project)

##  What OpsBot Is All About

OpsBot is a tool that helps people who work with computers find security problems, in log files from servers. It does this by reading the log data and picking out the stuff.Then it makes a summary report.
This way people do not have to look through thousands of lines of log data by hand.

## The Problem We Are Trying To Solve

Every day companies make log files.Looking through these logs for mistakes. Failed login attempts takes a lot of time. OpsBot does this work automatically.

It does things like:

- Finding the log entries

- Counting how many times something happens

- Making a report


## What OpsBot Can Do

- It reads a log file called `server.log`

- It picks out the logs that say ERROR, CRITICAL or FAILED LOGIN

- It counts how times each thing happens using a dictionary

- It makes a report file

- It tries to find possible attacks

- It shows what the most frequent problem is

- It shows how big the file is

## What We Used To Make OpsBot

- We used Python

- We used something called File Handling

- We used Lists and Dictionaries

- We used the OS Module


## How The Project Is Organized



OpsBot/

│── opsbot.py

│── server.log

│── security_alert_YYYY-MM-DD.txt



##  How To Get OpsBot Running

```bash

python opsbot.py

```

---

## What The Log File Might Look Like

```

ERROR: Database failed

CRITICAL: Server crash

FAILED LOGIN: admin

```

---

## What The Report Might Look Like

```

===== SECURITY REPORT =====

ERROR: 2

CRITICAL: 1

FAILED LOGIN: 2

```

---
