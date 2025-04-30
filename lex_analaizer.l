%{
#include <stdio.h>
FILE *yyin;
%}

%option noyywrap

DIGIT      [0-9]
ID         [a-z]
NUM_INT    {DIGIT}+
NUM_FLOAT  {DIGIT}+"."{DIGIT}+
WS         [ \t]+

%%

"//".*                                      { printf("COMMENT\n"); }

i{WS}+{ID}                                  { printf("intdcl id\n"); }
f{WS}+{ID}                                  { printf("floatdcl id\n"); }

{ID}{WS}*={WS}*{NUM_INT}                    { printf("id assign inum\n"); }
{ID}{WS}*={WS}*{NUM_FLOAT}                  { printf("id assign fnum\n"); }
{ID}{WS}*={WS}*{ID}{WS}*\+{WS}*{NUM_INT}    { printf("id assign id plus inum\n"); }
{ID}{WS}*={WS}*{ID}{WS}*\+{WS}*{NUM_FLOAT}  { printf("id assign id plus fnum\n"); }

p{WS}+{ID}                                  { printf("print id\n"); }

[\n]                                        { /* Ignore newline */ }
{WS}+                                       { /* Ignore whitespace */ }

.                                           { printf("Unrecognized token\n"); }

%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror("File opening failed");
            return 1;
        }
        yyin = file;
    }
    yylex();
    return 0;
}
