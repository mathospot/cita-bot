from setuptools import setup, find_packages

setup(
    name="bcncita",
    version="1.0.0",
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        "selenium==4.1.3",
        "Mako==1.1.3",
        "anticaptchaofficial==1.0.31",
        "requests==2.26.0",
        "backoff==2.1.2",
    ],
    python_requires=">=3.10",
)
