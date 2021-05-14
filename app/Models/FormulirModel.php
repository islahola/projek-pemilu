<?php

namespace App\Models;

use App\Models\GroupModel;
use CodeIgniter\Model;

class FormulirModel extends Model
{
    protected $table      = 'formulir';
    protected $useTimestamps = true;
    protected $allowedFields = ['nik', 'user-id', 'kelurahan', 'tps', 'partai', 'calon1', 'calon2', 'calon3', 'status'];

    protected $afterInsert = ['addToGroup'];
    protected $assignGroup;

    protected function addToGroup($data)
    {
        if (is_numeric($this->assignGroup)) {
            $groupModel = model(GroupModel::class);
            $groupModel->addUserToGroup($data['id'], $this->assignGroup);
        }

        return $data;
    }
}
