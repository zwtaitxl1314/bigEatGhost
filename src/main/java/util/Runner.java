package util;

import exception.DataAccessException;

public interface Runner {
	
	void doInTransaction() throws DataAccessException ;

}
