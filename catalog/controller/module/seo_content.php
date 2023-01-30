<?php
class ControllerModuleSeoContent extends Controller {
	public function index($setting) {
	
		$this->load->language('module/featured_category');

		$data['heading_title'] = $setting['name'];

		$data['content'] = html_entity_decode($setting['content'], ENT_QUOTES, 'UTF-8');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/seo_content.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/seo_content.tpl', $data);
		} else {
			return $this->load->view('starship/template/module/seo_content.tpl', $data);
		}
	}
}