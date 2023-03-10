<?php
class ControllerModuleFeaturedCategory extends Controller {
	public function index($setting) {
	
		$this->load->language('module/featured_category');

		$data['heading_title'] = $setting['name'];
		$data['heading_description'] = $setting['description'];

		$this->load->model('catalog/category'); 
		
		$this->load->model('tool/image');

		$data['categories'] = array();

		if (empty($setting['limit'])) {
			$setting['limit'] = 4;
		}

		$categories = array_slice($setting['category'], 0, (int)$setting['limit']);

		foreach ($categories as $category_id) {
			$category_info = $this->model_catalog_category->getCategory($category_id);
			//print "<pre>"; print_r($category_info); print "</pre>";
			if ($category_info) {
				if ($category_info['image']) {
					$image = $this->model_tool_image->resize($category_info['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}
				
				$data['categories'][] = array(
					'category_id' => $category_info['category_id'],
					'thumb'   	 => $image,
					'name'    	 => $category_info['name'],
					'href'    	 => $this->url->link('product/category', 'path=' . ($category_info['parent_id'] ? $category_info['parent_id'] . '_' . $category_info['category_id'] : $category_info['category_id']))
				);
			}
		}

		if ($data['categories']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/featured_category.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/featured_category.tpl', $data);
			} else {
				return $this->load->view('default/template/module/featured_category.tpl', $data);
			}
		}
	}
}