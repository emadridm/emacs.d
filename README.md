## Straight

Update all straight-installed packages as indicated below:

```
M-x straight-pull-all
```

## Vale

Vale (https://vale.sh/) is an open source, command-line tool that brings your editorial style guide to life. Install Vale with package manager or download from Releases and place in your $PATH. Then, generate your configuration using https://vale.sh/generator and copy this in your ~/.vale.ini file.

## Gptel

Gptel (https://gptel.org/) is a simple Large Language Model chat client for Emacs, with support for many models and backends. It works in the spirit of Emacs, available at any time and uniformly in any buffer.

Create your ~/.authinfo or ~/.authinfo.pgp file according to [Emacs auth-source](https://www.gnu.org/software/emacs/manual/html_mono/auth.html) and add the machine, login and password as show bellow:

```
machine api.openai.com login apikey password <your-openai-apikey>
machine aistudio.google.com login apikey password <your_gemini_apikey>
```

### Gemini

Create your API key in [Google AI Studio](https://aistudio.google.com/api-keys) and add an entry to your ~/.authinfo[.pgp] file using _aistudio.google.com_ as the *machine*, _apikey_ as *login* and _<your-gemini-apikey>_ as your *password*. 

```
machine aistudio.google.com login apikey password <your_gemini_apikey>
```

## Grammar

