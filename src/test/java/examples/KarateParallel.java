package examples;

import cucumber.api.CucumberOptions;
import com.intuit.karate.cucumber.CucumberRunner;
import com.intuit.karate.cucumber.KarateStats;
import static org.junit.Assert.assertTrue;
import org.junit.Test;

@CucumberOptions(tags = {"~@ignore"})
public class KarateParallel {
	
	 @Test
	    public void testParallel() {
	        KarateStats stats = CucumberRunner.parallel(getClass(), 2, "target/surefire-reports");
	        assertTrue("scenarios failed", stats.getFailCount() == 0);
	    }
	    
	}
	


