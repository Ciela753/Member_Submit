package vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Criteria {
	 private int pageNum;
	 private int amount;
	 private int category=1;
	
	 public Criteria() {
		this(1, 20);
		// TODO Auto-generated constructor stub
	}

	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}

}
