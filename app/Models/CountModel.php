<?php

namespace App\Models;

use CodeIgniter\Model;

class CountModel extends Model
{
    public function tot_saksi()
    {
        return $this->db->table('formulir')->countAll();
    }
}
