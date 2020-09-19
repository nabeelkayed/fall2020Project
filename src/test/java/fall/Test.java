package fall;

import org.junit.runner.*;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.*;

@RunWith(Cucumber.class)
@CucumberOptions(features = "test" ,
plugin = {"html:target/cucumber/wikipedia.html" } , 
monochrome = true,
snippets = SnippetType.CAMELCASE ,
glue = {"fall"},
strict = true
)
public class Test {

}
