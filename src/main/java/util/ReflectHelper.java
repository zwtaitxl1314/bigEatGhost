package util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class ReflectHelper {
	
	/**
	 * 从指定类中获取指定名称的方法
	 * @param c 指定从哪个类中获取方法
	 * @param name 指定需要获取的方法名称
	 * @param parameterTypes 需要获取的方法的参数类型列表
	 * @return
	 */
	public static final Method getDeclaredMethod( Class<?> c , String name , Class<?>... parameterTypes ){
		if( c == null ){
			throw new RuntimeException( "请指定方法所在的类" );
		}
		if( StringHelper.empty( name ) ){
			throw new RuntimeException( "请指定方法名称" );
		}
		
		Method m = null ;
				
		try {
			m = c.getDeclaredMethod( name , parameterTypes );
		} catch (NoSuchMethodException e) {
			throw new RuntimeException( "在 " + c.getName() + " 类中未找到 " + name + " 方法" , e );
		} catch (SecurityException e) {
			e.printStackTrace();
		}
		
		return m ;
	}
	
	/**
	 * 通过反射调用指定的方法
	 * @param o 用于指定调用哪个对象的方法
	 * @param m 被调用的方法
	 * @param args 被调用的方法所需要的实参列表
	 * @return
	 */
	public static final Object invoke( Object o , Method m , Object... args ) {
		if( m == null ){
			throw new RuntimeException( "请指定被调用的方法" );
		}
		try {
			m.setAccessible( true );
			return m.invoke( o , args );
		} catch (IllegalAccessException e) {
			throw new RuntimeException( "指定方法不允许被调用" , e );
		} catch (IllegalArgumentException e) {
			throw new RuntimeException( "参数错误" , e );
		} catch (InvocationTargetException e) {
			throw new RuntimeException( "执行方法时发送错误" , e );
		}
	}

}
