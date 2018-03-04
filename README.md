## correlation
Test for Association/Correlation Between Paired Samples

### Description
Test for association between paired samples, using one of Pearson's product moment correlation coefficient, Kendall's tau or Spearman's rho.
Hypothesis test of correlation is important for science and engineering.
Detailed correlation can be calculated with R, but you need to enter commands with commands.
Many scientists and engineers are not good at inputting by command, especially nonparametric correlation calculation is difficult.
Therefore, we made it possible to perform correlation calculation as a Web application.

### Launch web application
You can install from R console.
If shiny is not installed on your PC, install shiny with Internet connection.

    install.packages("shiny")

If shiny is installed, it can be started from R console with the following command.
    
    shiny::runGitHub("correlation", "ToshihiroIguchi")

For those who have difficulty installing R, I have published it as a web application in [shinyapps.io](https://toshihiroiguchi.shinyapps.io/correlation/).

### License 

```
MIT License

Copyright (c) 2018 Toshihiro Iguchi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### Auther
Toshihiro Iguchi

