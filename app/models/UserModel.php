<?php
include SYSTEM . 'BaseModel.php';
class UserModel extends BaseModel
{
    public function getUsers()
    {
        return array(
            'Mubbi',
            'Test',
            'foo',
            'bar'
        );
    }
}
