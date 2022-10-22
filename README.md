# LaTeX CV & PDF generating script

The PDFs in the repo should always be up to date. If they need to compiled for any reason anyways that can be done as follows:

## Usage
Clone this repository and mak the PDF generating script executable:

~~~
clone git@github.com:DiegoRenner/CV.git 
cd CV 
chmod +x generate_PDFs.sh
~~~

Now the PDFs can be generated using the script as described below:

~~~
./generate_PDFs.sh [OPTION]
~~~

This script generates the dark and light themed CV PDFs according to the arguments. If no arguments are passed both versions are generated.\

-l, \--light Generate CV with light theme. \
-d, \--dark Generate CV with dark theme. \
-h, \--help Disaply this message.

## License

Format is MIT but all the data is owned by Diego Renner.

## Acknowledgments

* To [@sb2nov](https://github.com/sb2nov/) for the initial code!
* And to others contributors listed [here](https://github.com/sb2nov/resume/graphs/contributors)
