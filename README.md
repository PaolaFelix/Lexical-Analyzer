# Lexical-Analyzer

## Project Description

This project is a **lexical analyzer** for a custom programming language (AC). The analyzer is implemented using **flex** and **C**, and it performs lexical analysis of AC code to identify and categorize different components such as comments, variable declarations, assignments, and print statements.

## Files Included

- `lex_analaizer.l`: The main Lex file that defines the lexical analyzer.

## Prerequisites

Make sure you have the following installed on your system:

- **flex** (Lexical analyzer generator)
- **gcc** (C Compiler)
- **make** (Build automation tool)

You can install these on Linux using:

```bash
sudo apt-get install flex gcc make
```

On macOS, use Homebrew:

```bash
brew install flex gcc make
```

## Installation

1. Clone this repository:

```bash
git clone https://github.com/PaolaFelix/Lexical-Analyzer.git
cd Lexical-Analyzer
```

2. Build the lexical analyzer:

```bash
make
```

This will generate the `lex_analaizer` executable from the Lex source code (`lex_analaizer.l`).

## Usage

1. Create an AC code file (e.g., `example.ac`). You can either write it manually or use any code editor to generate the content. Here's an example of how the `example.ac` might look:

```ac
//DVM7XXX491
f v
i i
g = 99
y = y * 60
p m
```

2. To run the lexical analyzer on your AC code:

```bash
./lex_analaizer example.ac
```

This will process the `example.ac` file and output the lexical analysis result.

