<?php 

class Kategori extends CI_Controller{
	public function pernak_pernik()
	{
		$data['pernak_pernik'] = $this->model_kategori->data_pernak_pernik()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('pernak_pernik',$data);
		$this->load->view('templates/foother');
	}
	public function pakaian_pria()
	{
		$data['pakaian_pria'] = $this->model_kategori->data_pakaian_pria()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('pakaian_pria',$data);
		$this->load->view('templates/foother');
	}
	public function pakaian_wanita()
	{
		$data['pakaian_wanita'] = $this->model_kategori->data_pakaian_wanita()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('pakaian_wanita',$data);
		$this->load->view('templates/foother');
	}
	public function kain()
	{
		$data['kain'] = $this->model_kategori->data_kain()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('kain',$data);
		$this->load->view('templates/foother');
	}
}