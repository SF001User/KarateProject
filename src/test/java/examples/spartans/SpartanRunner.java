package examples.spartans;

import com.intuit.karate.junit5.Karate;

class SpartanRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("spartans").relativeTo(getClass());
    }    

}
