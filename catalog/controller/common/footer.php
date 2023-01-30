<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_email'] = $this->language->get('text_email');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_blog'] = $this->language->get('text_blog'); 
		$data['blog'] = $this->url->link('blog/category'); 
		$data['text_support'] = $this->language->get('text_support');
		$data['text_complain'] = $this->language->get('text_complain');
		$data['text_store_locator'] = $this->language->get('text_store_locator');
		$data['text_find_stores'] = $this->language->get('text_find_stores');
		$data['text_apps'] = sprintf($this->language->get('text_apps'), $this->config->get('config_short_name'));
		$data['text_google_play'] = $this->language->get('text_google_play');
		$data['text_app_store'] = $this->language->get('text_app_store');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_stay_connected'] = $this->language->get('text_stay_connected');

		$data['name'] = $this->config->get('config_name');
		$data['short_name'] = $this->config->get('config_short_name');
		$data['address'] = $this->config->get('config_address');
		$data['email'] = $this->config->get('config_email');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['open'] = $this->config->get('config_open');
		$data['facebook'] = $this->config->get('config_social_facebook');
		$data['twitter'] = $this->config->get('config_social_twitter');
		$data['instagram'] = $this->config->get('config_social_instagram');
		$data['youtube'] = $this->config->get('config_social_youtube');
		$data['linkedin'] = $this->config->get('config_social_linkedin');
		$data['pinterest'] = $this->config->get('config_social_pinterest');
		$data['play_store'] = $this->config->get('config_apps_android');
		$data['app_store'] = $this->config->get('config_apps_ios');
		$data['support'] = $this->config->get('config_support');
		$data['complain'] = $this->config->get('config_complain');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

		$data['copyright'] = sprintf($this->language->get('text_copyright'), date('Y', time()), $this->config->get('config_name'));
		$data['powered'] = $this->language->get('text_powered');

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}