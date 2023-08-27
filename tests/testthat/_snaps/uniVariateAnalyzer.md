# uniVariateAnalyzerUI

    Code
      uniVariateAnalyzerUI(id = "FieldChecker")
    Output
      <div class="row">
        <div class="col-sm-4">
          <div id="FieldChecker-stat_tab" class="shiny-html-output"></div>
        </div>
        <div class="col-sm-8">
          <div id="FieldChecker-stat_plot" class="shiny-html-output"></div>
        </div>
      </div>

# uniVariateAnalyzer - double ID with default parameters

    Code
      output$stat_tab
    Output
      $html
      The variable is a key (distinct values for each observation)
      
      $deps
      list()
      

---

    Code
      output$stat_plot
    Output
      $html
      No available plot for type double(ID)
      
      $deps
      list()
      

# uniVariateAnalyzer - double with default parameters

    Code
      output$stat_tab
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">double</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">5.8</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">5</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Variance:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">0.69</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Standard Deviation:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">0.83</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">1st Quantile:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">5.1</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">3rd Quantile:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">6.4</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">7.9</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">4.3</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - double with density plot

    Code
      output$stat_tab
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">double</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">5.8</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">5</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Variance:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">0.69</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Standard Deviation:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">0.83</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">1st Quantile:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">5.1</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">3rd Quantile:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">6.4</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">7.9</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">4.3</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - factor with default parameters

    Code
      output$stat_tab
    Output
      $html
      <div class="row">
        <div class="col-sm-12">
          <div class="row">
            <div class="col-sm-6">Variable Type:</div>
            <div class="col-sm-6">
              <div style="float: right;">
                <span class="right badge badge-info badge-pill">factor</span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">Missing Observations Stat.:</div>
            <div class="col-sm-6">
              <div style="float: right;">
                <span class="right badge badge-info badge-pill">0 (0%)</span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">Unique Values Count:</div>
            <div class="col-sm-6">
              <div style="float: right;">
                <span class="right badge badge-info badge-pill">3</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6">Mode:</div>
        <div class="col-sm-6">
          <div style="float: right;">
            <span class="right badge badge-info badge-pill">setosa, versicolor, virginica</span>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - integer with default parameters

    Code
      output$stat_tab
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">integer</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">22</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">123</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">110, 175, 180</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Variance:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">4700.87</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Standard Deviation:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">68.56</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">1st Quantile:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">96.5</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">3rd Quantile:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">180</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">335</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">52</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - date with default parameters

    Code
      output$stat_tab
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">Date</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-08</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-05</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - date with year group

    Code
      output$stat_tab
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">Date</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-08</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-05</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - date with month group

    Code
      output$stat_tab
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">Date</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-08</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-05</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - date with invalid group

    Code
      output$stat_tab
    Warning <simpleWarning>
      date_group: nogroupis invalid. Setting it to NULL
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">Date</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-08</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-05</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

---

    Code
      output$stat_tab
    Warning <simpleWarning>
      date_group: nogroupis invalid. Setting it to NULL
    Output
      $html
      <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-6">Variable Type:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">Date</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Missing Observations Stat.:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">0 (0%)</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">Unique Values Count:</div>
              <div class="col-sm-6">
                <div style="float: right;">
                  <span class="right badge badge-info badge-pill">35</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Median:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Mode:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-06</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Max:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-08</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">Min:</div>
          <div class="col-sm-6">
            <div style="float: right;">
              <span class="right badge badge-info badge-pill">1970-01-05</span>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

# uniVariateAnalyzer - character with default different label

    Code
      output$stat_tab
    Output
      $html
      <div class="row">
        <div class="col-sm-12">
          <div class="row">
            <div class="col-sm-6">Variable Type:</div>
            <div class="col-sm-6">
              <div style="float: right;">
                <span class="right badge badge-info badge-pill">character</span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">Missing Observations Stat.:</div>
            <div class="col-sm-6">
              <div style="float: right;">
                <span class="right badge badge-info badge-pill">0 (0%)</span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">Unique Values Count:</div>
            <div class="col-sm-6">
              <div style="float: right;">
                <span class="right badge badge-info badge-pill">35</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      $deps
      list()
      

---

    Code
      class(output$stat_plot)
    Output
      [1] "list"

