<?php
Function GetResultArray($Querry){
    $meta = $Querry->result_metadata();
    while ($field = $meta->fetch_field())
    {
        $params[] = &$row[$field->name];
    }
    call_user_func_array(array($Querry, 'bind_result'), $params);
    while ($Querry->fetch()) {
        foreach($row as $key => $val)
        {
            $c[$key] = $val;
        }
        $result[] = $c;
    }
    return $result;
}
?>