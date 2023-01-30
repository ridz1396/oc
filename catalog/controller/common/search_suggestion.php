<?php
class ControllerCommonSearchSuggestion extends Controller {
	public function index() {
		$data['products'] = array();
		$data['categories'] = array();
		$data['manufacturers'] = array();

		$this->load->model('catalog/product');
		$this->load->model('catalog/category');
		$this->load->model('tool/image');

		if (isset($this->request->get['keyword'])) {
			$filter_data = array(
				'filter_name'         => $this->request->get['keyword'],
				'sort'                => 'p.sort_order',
				'order'               => 'ASC',
				'start'               => 0,
				'limit'               => 5
			);
	
			$products = $this->model_catalog_product->getProducts($filter_data);
	
			foreach ($products as $product) {
				if ($product['image']) {
					$image = $this->model_tool_image->resize($product['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}
	
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
	
				if ((float)$product['special']) {
					$special = $this->currency->format($this->tax->calculate($product['special'], $product['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
	
				$data['products'][] = array(
					'label'       => $product['name'],
					'thumb'       => $image,
					'price'       => $special ? $special : $price,
					'special'     => false,
					'href'        => $this->url->link('product/product', 'product_id=' . $product['product_id'])
				);
			}
			
			$categories = $this->model_catalog_category->getCategoriesBySearch($this->request->get['keyword']);
			
			foreach ($categories as $category) {
				if ($category['image']) {
					$image = $this->model_tool_image->resize($category['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				}
				
				$url = '';

				$data['categories'][] = array(
					'label'       => $category['name'],
					'thumb'       => $image,
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$this->response->setOutput(json_encode($data));
	}

	public function product() {
		$data = array();

		$this->load->model('catalog/product');

		if (isset($this->request->get['keyword'])) {
			$filter_data = array(
				'filter_name'         => $this->request->get['keyword'],
				'sort'                => 'p.sort_order',
				'order'               => 'ASC',
				'start'               => 0,
				'limit'               => 7
			);
	
			$products = $this->model_catalog_product->getProducts($filter_data);

			foreach ($products as $product) {
				$data[] = array(
					'label'       => $product['name'],
					'value'    	  => $product['product_id']
				);
			}
		}

		$this->response->setOutput(json_encode($data));
	}
}