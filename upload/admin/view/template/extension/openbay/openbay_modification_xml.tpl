<modification>
	<name>OpenBay Pro</name>
	<version>2.3</version>
	<link>www.openbaypro.com</link>
	<author>EcommerceHQ</author>
	<code>openbaypro</code>

	<file path="admin/controller/common/column_left.php">
		<operation>
			<search><![CDATA[// Stats]]></search>
			<add position="before"><![CDATA[
		// OpenBay Pro Menu
		$openbay_menu = array();

		$this->language->load('extension/openbay/openbay_menu');

		if ($this->user->hasPermission('access', 'extension/openbay')) {
			$openbay_menu[] = array(
				'name'	   => $this->language->get('text_openbay_dashboard'),
				'href'     => $this->url->link('extension/openbay', 'token=' . $this->session->data['token'], true),
				'children' => array()
			);

			$openbay_menu[] = array(
				'name'	   => $this->language->get('text_openbay_orders'),
				'href'     => $this->url->link('extension/openbay/orderlist', 'token=' . $this->session->data['token'], true),
				'children' => array()
			);

			$openbay_menu[] = array(
				'name'	   => $this->language->get('text_openbay_items'),
				'href'     => $this->url->link('extension/openbay/items', 'token=' . $this->session->data['token'], true),
				'children' => array()
			);

			// eBay sub menu
			$ebay = array();

			if ($this->user->hasPermission('access', 'extension/openbay/ebay') && $this->config->get('ebay_status') == 1) {
				$ebay[] = array(
					'name'     => $this->language->get('text_openbay_dashboard'),
					'href'     => $this->url->link('extension/openbay/ebay', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$ebay[] = array(
					'name'	   => $this->language->get('text_openbay_settings'),
					'href'     => $this->url->link('extension/openbay/ebay/settings', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$ebay[] = array(
					'name'	   => $this->language->get('text_openbay_links'),
					'href'     => $this->url->link('extension/openbay/ebay/viewitemlinks', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$ebay[] = array(
					'name'	   => $this->language->get('text_openbay_order_import'),
					'href'     => $this->url->link('extension/openbay/ebay/vieworderimport', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($ebay) {
				$openbay_menu[] = array(
					'name'	   => $this->language->get('text_openbay_ebay'),
					'href'     => '',
					'children' => $ebay
				);
			}

			// Amazon EU sub menu
			$amazon_eu = array();

			if ($this->user->hasPermission('access', 'extension/openbay/amazon') && $this->config->get('openbay_amazon_status') == 1) {
				$amazon_eu[] = array(
					'name'     => $this->language->get('text_openbay_dashboard'),
					'href'     => $this->url->link('extension/openbay/amazon', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$amazon_eu[] = array(
					'name'	   => $this->language->get('text_openbay_settings'),
					'href'     => $this->url->link('extension/openbay/amazon/settings', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$amazon_eu[] = array(
					'name'	   => $this->language->get('text_openbay_links'),
					'href'     => $this->url->link('extension/openbay/amazon/itemlinks', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($amazon_eu) {
				$openbay_menu[] = array(
					'name'	   => $this->language->get('text_openbay_amazon'),
					'href'     => '',
					'children' => $amazon_eu
				);
			}

			// Amazon US sub menu
			$amazon_us = array();

			if ($this->user->hasPermission('access', 'extension/openbay/amazonus') && $this->config->get('openbay_amazonus_status') == 1) {
				$amazon_us[] = array(
					'name'     => $this->language->get('text_openbay_dashboard'),
					'href'     => $this->url->link('extension/openbay/amazonus', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$amazon_us[] = array(
					'name'	   => $this->language->get('text_openbay_settings'),
					'href'     => $this->url->link('extension/openbay/amazonus/settings', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$amazon_us[] = array(
					'name'	   => $this->language->get('text_openbay_links'),
					'href'     => $this->url->link('extension/openbay/amazonus/itemlinks', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($amazon_eu) {
				$openbay_menu[] = array(
					'name'	   => $this->language->get('text_openbay_amazonus'),
					'href'     => '',
					'children' => $amazon_us
				);
			}

			// Etsy sub menu
			$etsy = array();

			if ($this->user->hasPermission('access', 'extension/openbay/etsy') && $this->config->get('etsy_status') == 1) {
				$etsy[] = array(
					'name'     => $this->language->get('text_openbay_dashboard'),
					'href'     => $this->url->link('extension/openbay/etsy', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$etsy[] = array(
					'name'	   => $this->language->get('text_openbay_settings'),
					'href'     => $this->url->link('extension/openbay/etsy/settings', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				if ($this->user->hasPermission('access', 'extension/openbay/etsy_product')) {
					$etsy[] = array(
						'name'	   => $this->language->get('text_openbay_links'),
						'href'     => $this->url->link('extension/openbay/etsy_product/links', 'token=' . $this->session->data['token'], true),
						'children' => array()
					);
				}
			}

			if ($etsy) {
				$openbay_menu[] = array(
					'name'	   => $this->language->get('text_openbay_etsy'),
					'href'     => '',
					'children' => $etsy
				);
			}

			// FBA sub menu
			$fba = array();

			if ($this->user->hasPermission('access', 'extension/openbay/fba') && $this->config->get('openbay_fba_status') == 1) {
				$fba[] = array(
					'name'     => $this->language->get('text_openbay_dashboard'),
					'href'     => $this->url->link('extension/openbay/fba', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$fba[] = array(
					'name'	   => $this->language->get('text_openbay_settings'),
					'href'     => $this->url->link('extension/openbay/fba/settings', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$fba[] = array(
					'name'	   => $this->language->get('text_openbay_fulfillmentlist'),
					'href'     => $this->url->link('extension/openbay/fba/fulfillmentlist', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);

				$fba[] = array(
					'name'	   => $this->language->get('text_openbay_orderlist'),
					'href'     => $this->url->link('extension/openbay/fba/orderlist', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($fba) {
				$openbay_menu[] = array(
					'name'	   => $this->language->get('text_openbay_fba'),
					'href'     => '',
					'children' => $fba
				);
			}
		}

		if ($openbay_menu) {
			$data['menus'][] = array(
				'id'       => 'menu-openbay',
				'icon'	   => 'fa-cubes',
				'name'	   => $this->language->get('text_openbay_extension'),
				'href'     => '',
				'children' => $openbay_menu
			);
		}
		]]></add>
		</operation>
	</file>
	<file path="admin/view/template/sale/order_info.tpl">
		<operation>
			<search><![CDATA[$footer;]]></search>
			<add position="before"><![CDATA[
<script type="text/javascript"><!--
	function changeStatus(){
		var status_id = $('select[name="order_status_id"]').val();

		$('#openbay-info').remove();

		$.ajax({
			url: 'index.php?route=extension/openbay/getorderinfo&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>&status_id=' + status_id,
			dataType: 'html',
			success: function(html) {
				$('#history').after(html);
			}
		});
	}

	function addOrderInfo(){
		var status_id = $('select[name="order_status_id"]').val();

		$.ajax({
			url: 'index.php?route=extension/openbay/addorderinfo&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>&status_id=' + status_id,
			type: 'post',
			dataType: 'html',
			data: $(".openbay-data").serialize()
		});
	}

	$(document).ready(function() {
		changeStatus();
	});

	$('select[name="order_status_id"]').change(function(){
		changeStatus();
	});
//--></script>
		]]></add>
		</operation>
		<operation>
			<search><![CDATA[$('#button-history').on('click', function() {]]></search>
			<add position="after"><![CDATA[
	if (typeof verifyStatusChange == 'function'){
		if (verifyStatusChange() == false){
			return false;
		} else{
			addOrderInfo();
		}
	} else{
		addOrderInfo();
	}
		]]></add>
		</operation>
	</file>
</modification>