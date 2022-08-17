# flake8: noqa
config.load_autoconfig()

DUMMY_USER_AGENT = 'Mozilla/5.0 (X11; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/77.0'
DEFAULT_FONT_SIZE = '13pt'
DEFAULT_FONT = 'monospace'
JS_CONFIG = 'content.javascript.enabled'

config.set(JS_CONFIG, True, 'file://*')
config.set(JS_CONFIG, True, 'chrome://*/*')
config.set(JS_CONFIG, True, 'qute://*/*')

# config.set(
#     'content.headers.user_agent',
#     DUMMY_USER_AGENT,
#     'https://accounts.google.com/*'
# )

c.fonts.downloads        = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.hints            = 'bold ' + DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.keyhint          = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.messages.error   = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.messages.info    = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.messages.warning = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.messages.error   = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.prompts          = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT_SIZE + ' sans-serif'
c.fonts.statusbar        = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT
c.fonts.tabs             = DEFAULT_FONT_SIZE + ' ' + DEFAULT_FONT

c.downloads.location.directory = '~/downloads'
c.downloads.location.prompt = False

c.url.default_page = "https://www.ecosia.org"
c.url.start_pages  = "https://www.ecosia.org"

c.url.searchengines = {
    "DEFAULT": "https://www.ecosia.org/search?q={}",
    "alt": "https://alternativeto.net/browse/search?q={}",
    "aur": "https://aur.archlinux.org/packages/?O=0&K={}",
    "ddg": "https://duckduckgo.com/?q={}",
    "eco": "https://www.ecosia.org/search?q={}",
    "ggl": "https://encrypted.google.com/search?q={}",
    "hub": "https://github.com/search?q={}",
    "wkp": "https://en.wikipedia.org/w/index.php?title=Special:Search&search={}",
    "ytb": "https://www.youtube.com/results?search_query={}",
}

c.scrolling.bar = 'always'

c.auto_save.interval= 5 * 60 * 1000
c.auto_save.session = True

# c.content.host_blocking.whitelist = [
#     "*.google.com"
# ]
