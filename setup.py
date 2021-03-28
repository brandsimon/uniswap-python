from setuptools import setup, find_packages


setup(
    name='uniswap',
    version='0.4.6',
    description='An unofficial Python wrapper for the Uniswap exchange',
    author='sm',
    # package_dir={'': 'uniswap'},
    packages=find_packages('uniswap/'),
    include_package_data=True,
    zip_safe=False,
)
