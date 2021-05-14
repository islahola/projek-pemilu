<?php

namespace App\Controllers;

use App\Models\FormulirModel;

class User extends BaseController
{
    protected $formulirModel;
    public function __construct()
    {
        $this->formulirModel = new FormulirModel();
    }
    public function index()
    {
        return view('user/index');
    }
    public function form()
    {
        return view('user/formulir');
    }
    public function tampil()
    {
        $formulir = $this->formulirModel->findAll();

        $data = [
            'title' => 'tampil formulir',
            'formulir' => $formulir
        ];
        return view('user/tampil', $data);
    }
    public function save()
    {
        $this->formulirModel->save([
            'nik' => $this->request->getVar('nik'),
            'user-id' => $this->request->getVar('user-id'),
            'kelurahan' => $this->request->getVar('kelurahan'),
            'tps' => $this->request->getVar('tps'),
            'partai' => $this->request->getVar('partai'),
            'calon1' => $this->request->getVar('calon1'),
            'calon2' => $this->request->getVar('calon2'),
            'calon3' => $this->request->getVar('calon3'),
            'status' => $this->request->getVar('status')
        ]);

        return view('user/tampil>');
    }
}
