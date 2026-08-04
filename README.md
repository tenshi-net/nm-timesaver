# Nmap Timesaver Project (nm-timesaver)

This repository will include any and all shell scripts that I set up to save a bit of time with [nmap](https://nmap.org/) during the process of enumeration. The scripts will include pre-written nmap sequences that are meant to be assigned terminal aliases according to your needs, so that you don't have to regularly type out the full commands.

For now, they're very basic. I'm still a novice at shell scripting and I'm still pretty early in the process of learning ethical hacking, but I figured these would be a good way to save a little time. I also see ways that some of these might be useful to network administrators, systems administrators and security engineers. Ultimately, this is just a documentation of my learning, as most of my repos are.

# Scripts

## nmrecon

The first script, **nmrecon.sh**, runs `nmap -sC -sV` and outputs it into a file specified by year/month/day/hour/minute. It saves the output in a dedicated nmap folder that needs to be located in the user's Home directory (/home/user/nmap). The script will warn you if you haven't created the appropriate folder for it to save to. 

Save the script to your Home directory and run it in your terminal with `./nmrecon.sh [target IP]`. As with all scripts, make sure that it has execute permissions or it simply won't run (`sudo chmod +x nmrecon.sh`). 

If you want to make the process even quicker, you can add a terminal alias for the script.

# Disclaimer

I highly recommend **against** using these scripts if you don't at least have a reasonably solid understanding of what nmap is or what the switches are doing. Automation and time saving are great but not if you don't understand what's going on. _**Don't be a script kiddie**_.
