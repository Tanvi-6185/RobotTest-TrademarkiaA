import os
import certifi
import undetected_chromedriver as uc
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary.base import keyword

# SSL fix
os.environ['SSL_CERT_FILE'] = certifi.where()

class UndetectedBrowser:
    def __init__(self):
        self.driver = None

    @keyword("Open Undetected Browser")
    def open_undetected_browser(self, url="https://www.google.com"):
        print("🚀 Launching undetected browser...")
        options = uc.ChromeOptions()
        options.add_argument("--disable-blink-features=AutomationControlled")
        self.driver = uc.Chrome(options=options, use_subprocess=True)

        # Register the browser with SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
        selenium_lib.register_driver(self.driver, alias="UndetectedChrome")

        self.driver.get(url)
        print(f"🌐 Browser navigated to: {url}")
