# Bing Wallpaper of the day

This script downloads the picture of the day from the Bing-Website. It also generates a blurred version of the picture. You can use these pictures for the screensaver.

### Requirements
To be able to run this script, you need to have 3 tools installed:

* Transferring data tool `curl`
* JSON processor `jq`
* Image processing tool `ImageMagick`

The script also assumes that you have a `Pictures` folder in your `HOME` directory.

### Installation
Simply download the script into a folder of your choice and execute it.

### Cron Job
To automatically download the latest picture, let a cron job run the script every hour.

```
$ crontab -e

0 * * * * $HOME/Projects/bing-wallpaper/bing-wallpaper.sh
```
