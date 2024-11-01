<?php

Class call_back
{
    private $mysqli;

    var $CallBackID;

    var $Phone;
    var $CardID;
    var $LangID;
    var $CallBackStatusID;
    var $Operator;
    var $Notes;
    var $Created;
    var $Modefied;

    var $StatusList;

    //конструктор
    function call_back($mysqli, $CallBackID = NULL)
    {
        $this -> mysqli = $mysqli;
        $this -> CallBackID = $CallBackID;
        $this->getStatusList();
        if ($CallBackID != NULL){
            $this->getByID($this->CallBackID);
        }
    }

    function getByID($CallBackID)
    {
        $Querry = $this -> mysqli->prepare("SELECT CallBackID, Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied from CallBackList WHERE (`CallBackID` = ?) LIMIT 1");
        $Querry->bind_param('i', $CallBackID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            $this->CallBackStatusID = $result[0]['CallBackID'];
            $this->Phone = $result[0]['Phone'];
            $this->CardID = $result[0]['CardID'];
            $this->LangID = $result[0]['LangID'];
            $this->CallBackStatusID = $result[0]['CallBackStatusID'];
            $this->Operator = $result[0]['Operator'];
            $this->Notes = $result[0]['Notes'];
            $this->Created = $this->getDateTimeFromDB($result[0]['Created']);
            $this->Modefied = $this->getDateTimeFromDB($result[0]['Modefied']);
        }
    }

    function save(){
        if ($this->CallBackID){
            $this->update();
        } else {
            $this->create();
        }
    }

    function update(){
        $updateQuerry = $this->mysqli->prepare("
            update CallBackList set 
                  Phone = ?,
                  CardID = ?,
                  LangID = ?,
                  CallBackStatusID = ?,
                  Operator = ?,
                  Notes = ?,
                  Modefied = NOW()
              WHERE CallBackID = ?
        ");
        $updateQuerry->bind_param('siiiisi', $this->Phone, $this->CardID, $this->LangID, $this->CallBackStatusID, $this->Operator, $this->Notes, $this->CallBackID );
        $updateQuerry->execute();
    }

    function create(){
        $insertQuerry = $this->mysqli->prepare("
            insert into CallBackList (Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied)
              values ( ?, ?, ?, ?, ?, ?, NOW(), NOW())
        ");

        $insertQuerry->bind_param('siiiis', $this->Phone, $this->CardID, $this->LangID, $this->CallBackStatusID, $this->Operator, $this->Notes );
        $insertQuerry->execute();
    }

    function getStatusList(){
        $Querry = $this->mysqli->prepare("
            SELECT cbs.CallBackStatusID, cbs.Name, cbs.Active
                FROM CallBackStatus cbs
                ORDER BY cbs.CallBackStatusID
        ");
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $row){
                $this->StatusList[$row['CallBackStatusID']]['CallBackStatusID'] = $row['CallBackStatusID'];
                $this->StatusList[$row['CallBackStatusID']]['Name'] = $row['Name'];
                $this->StatusList[$row['CallBackStatusID']]['Active'] = $row['Active'];
            }
        }
    }


    function getDateTimeFromDB($inputdate){
        if (strlen($inputdate) > 0){
            list($date,$time) = explode(' ',$inputdate);
            list($yyyy,$mm,$dd) = explode('-',$date);
            list($H,$i,$s) = explode(':',$time);
            if (checkdate($mm,$dd,$yyyy)) {
                if (strlen($time) == 0){
                    $inputdate .= ' 00:00:00';
                }
                $DateTime = DateTime::createFromFormat('Y-m-d H:i:s', $inputdate);
                $Timestamp = $DateTime->getTimestamp();
                return date('d.m.Y H:i:s', $Timestamp);
            }else{
                return '';
            }
        }else{
            return '';
        }
    }

    function getDateFromDB($inputdate){
        if (strlen($inputdate) > 0){
            list($date,$time) = explode(' ',$inputdate);
            list($yyyy,$mm,$dd) = explode('-',$date);
            list($H,$i,$s) = explode(':',$time);
            if (checkdate($mm,$dd,$yyyy)) {
                if (strlen($time) == 0){
                    $inputdate .= ' 00:00:00';
                }
                $DateTime = DateTime::createFromFormat('Y-m-d H:i:s', $inputdate);
                $Timestamp = $DateTime->getTimestamp();
                return date('d.m.Y', $Timestamp);
            }else{
                return '';
            }
        }else{
            return '';
        }
    }

    function getTimeFromDate($inputdate){
        if (strlen($inputdate) > 0){
            list($date,$time) = explode(' ',$inputdate);
            list($dd,$mm,$yyyy) = explode('.',$date);
            if (checkdate($mm,$dd,$yyyy)) {
                if (strlen($time) == 0){
                    $inputdate .= ' 00:00:00';
                }
                $DateTime = DateTime::createFromFormat('d.m.Y H:i:s', $inputdate);
                return $DateTime->getTimestamp();
            }else{
                return '';
            }
        }else{
            return '';
        }
    }
}
?>