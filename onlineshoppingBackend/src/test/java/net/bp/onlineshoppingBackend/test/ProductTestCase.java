package net.bp.onlineshoppingBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.bp.onlineshoppingBackend.dao.CategoryDAO;
import net.bp.onlineshoppingBackend.dao.ProductDAO;
import net.bp.onlineshoppingBackend.dto.Product;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;

	private static ProductDAO productDAO;
	private static CategoryDAO categoryDAO;

	private Product product;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.bp");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}

	@Test
	public void testAddProduct() {
		product = new Product();

		product.setName("saree");
		product.setBrand("deno designs");
		product.setDescription("india's best designer ");
		product.setQuantity(5);
		product.setPrice(500);
		product.setImageUrl("image1.jpg");
		product.setCategory(categoryDAO.get(1));

		assertEquals("Successfully added a user inside a table", true, productDAO.add(product));
	}

	/*@Test
	public void testGetProduct() {
		product = productDAO.get(1);

		assertEquals("Successfully fetched user inside a table", "saree", product.getName());
	}*/

	/*@Test
	public void testUpdateProduct() {
		product = productDAO.get(1);

		product.setBrand("Levi's");
		assertEquals("Successfully updated data inside a table", true, productDAO.update(product));
	}

	@Test
	public void testDeleteDelete() {
		product = productDAO.get(1);

		assertEquals("Successfully deleted from a table", true, productDAO.delete(product));
	}*/

}
