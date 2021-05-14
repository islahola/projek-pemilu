<?php

namespace App\Controllers;

use App\Models\FormulirModel;
use App\Models\CountModel;


class Admin extends BaseController
{
    protected $formulirModel;
    protected $countModel;
    public function __construct()
    {
        $this->formulirModel = new FormulirModel();
        $this->countModel = new CountModel();
    }
    public function index()
    {
        return view('admin/index');
    }
    public function desboard()
    {
        $formulir = $this->formulirModel->paginate(3);
        $data = [
            'title' => 'tampil formulir',
            'formulir' => $formulir,
            'pager' => $this->formulirModel->pager,
        ];

        return view('admin/desboard', $data);
    }
    public function saksi()
    {
        $formulir = $this->formulirModel->paginate(3);
        $data = [
            'title' => 'tampil formulir',
            'formulir' => $formulir,
            'tot_saksi' => $this->countModel->tot_saksi(),
            'pager' => $this->formulirModel->pager,
        ];
        return view('admin/saksi', $data);
    }
}
