package cd.demo.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Order implements Serializable {

    private static final long serialVersionUID = 7654321L;

    @JsonProperty("who")
    private String who;

    @JsonProperty("what")
    private String what;


    @JsonCreator
    public Order(@JsonProperty("who") String who, @JsonProperty("what") String what) {
        this.who = who;
        this.what = what;
    }

    public String getWho() {
        return who;
    }

    public void setWho(String who) {
        this.who = who;
    }

    public String getWhat() {
        return what;
    }

    public void setWhat(String what) {
        this.what = what;
    }

    @Override
    public String toString() {
        return "Order{" +
                "who='" + who + '\'' +
                ", what='" + what + '\'' +
                '}';
    }
}
