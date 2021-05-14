<?php

namespace App\Models;

use CodeIgniter\Model;

class GroupModel extends Model
{
    public function addUserToGroup(int $userId, int $groupId)
    {
        cache()->delete("{$userId}_groups");

        $data = [
            'user_id'   => (int)$userId,
            'group_id'  => (int)$groupId
        ];

        return $this->db->table('groups')->insert($data);
    }
}
