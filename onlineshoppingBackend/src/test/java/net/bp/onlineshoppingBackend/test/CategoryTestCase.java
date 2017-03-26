package net.bp.onlineshoppingBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.bp.onlineshoppingBackend.dao.CategoryDAO;
import net.bp.onlineshoppingBackend.dto.Category;

public class CategoryTestCase {
	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.bp.onlineshoppingBackend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

	/*@Test
	public void testAddCategory() {
		category = new Category();

		category.setName("Indian Wear");
		category.setDescription("This is indian wear category");
		category.setImageUrl("image1.jpg");

		category = new Category();

		category.setName("Western Wear");
		category.setDescription("This is western wear category");
		category.setImageUrl("image2.jpg");
		assertEquals("Successfully added a category inside a table", true, categoryDAO.add(category));

	}*/
}
