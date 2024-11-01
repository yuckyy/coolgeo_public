<?php

// класс пользователя
Class user
{
    private $mysqli;

    //конструктор
    function user($mysqli)
    {
        $this -> mysqli = $mysqli;
    }

    function LogIn($login, $password)
    {
        // результат авторизации
        $LogInResult = false;

        // получить хеш пароля
        $md5password = md5($login.$password);

        // Подготавливаем запросы к БД
        $result = array();
        $LoginQuerry = $this -> mysqli->prepare("SELECT * FROM Users WHERE (`Login` = ? AND `Password` = ?) LIMIT 1");
        $LoginQuerry->bind_param('is', $login, $md5password);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (isset($result[0])){
            if ($result['0']['UserStatusID'] == 1){
                $_SESSION['authentication']['UserID'] = $result['0']['UserID'];
                $_SESSION['authentication']['Name'] = $result['0']['Name'];
                $_SESSION['authentication']['Login'] = $login;
                $_SESSION['authentication']['Phone'] = $result['0']['Phone'];
                $_SESSION['authentication']['Email'] = $result['0']['Email'];
                $_SESSION['authentication']['Country'] = $result['0']['Country'];
                $_SESSION['authentication']['City'] = $result['0']['City'];
                $_SESSION['authentication']['UserStatusID'] = $result['0']['UserStatusID'];
                $LogInResult = true;
            } else {
                $this -> LogOut();
            }
        }else{
            $this -> LogOut();
        }
        return $LogInResult;
    }

    function changeName($UserID, $Name){
        $Querry = $this -> mysqli->prepare("Update Users set Name = ? where UserID = ?");
        $Querry->bind_param('si', $Name, $UserID);
        $Querry->execute();
        $_SESSION['authentication']['Name'] = $Name;
    }
    function changePhone($UserID, $Phone){
        $Querry = $this -> mysqli->prepare("Update Users set Phone = ? where UserID = ?");
        $Querry->bind_param('si', $Phone, $UserID);
        $Querry->execute();
        $_SESSION['authentication']['Phone'] = $Phone;
    }
    function changeEmail($UserID, $Email){
        $Querry = $this -> mysqli->prepare("Update Users set Email = ? where UserID = ?");
        $Querry->bind_param('si', $Email, $UserID);
        $Querry->execute();
        $_SESSION['authentication']['Email'] = $Email;
    }



    function LogOut()
    {
        unset($_SESSION['authentication']);
    }

    function Register($name, $login, $password)
    {
        // получить хеш пароля
        $md5password = md5($login.$password);

        // Подготавливаем запросы к БД
        $LoginQuerry = $this -> mysqli->prepare("Insert into Users (Name, Login, Password, UserStatusID) values( ?, ?, ?, 1)");
        $LoginQuerry->bind_param('sss', $name, $login, $md5password);
        $query_result =  $LoginQuerry->execute();

        //AddGroup
        $UserID = $this -> mysqli -> insert_id;
        $this->AddGroup($UserID, 1);
        return $UserID;
    }

    function Delete($UserID)
    {
        // Подготавливаем запросы к БД
        $LoginQuerry = $this -> mysqli->prepare("delete from Users where UserID = ?");
        $LoginQuerry->bind_param('s', $UserID);
        $query_result =  $LoginQuerry->execute();
        return $query_result;
    }

    function AddGroup($UserID, $GroupID)
    {
        // Подготавливаем запросы к БД
        $LoginQuerry = $this -> mysqli->prepare("Insert into UserGroups (UserID, GroupID) values( ?, ?)");
        $LoginQuerry->bind_param('ii', $UserID, $GroupID);
        $query_result =  $LoginQuerry->execute();
        return $query_result;
    }

    function ChangePassword($UserID, $password)
    {
        // Подготавливаем запросы к БД
        $result = array();
        $LoginQuerry = $this -> mysqli->prepare("SELECT Login from Users WHERE (`UserID` = ?) LIMIT 1");
        $LoginQuerry->bind_param('i', $UserID);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (isset($result[0])){
            $login = $result[0]['Login'];
            $md5password = md5($login.$password);
            // Подготавливаем запросы к БД
            $LoginQuerry = $this -> mysqli->prepare("update Users set password = ? where UserID = ?");
            $LoginQuerry->bind_param('si', $md5password, $UserID);
            $query_result =  $LoginQuerry->execute();
        }
    }

    function changePassport($UserID, $PasportSurName, $PasportName, $PasportMiddleName, $PasportSerial, $PasportIssuedBy, $PasportIssuedDate)
    {
        $PasportIssuedTime = $this->getTimeFromDate($PasportIssuedDate);
        $updateQuerry = $this->mysqli->prepare("
            update Users set 
                  PasportSurName = ?, 
                  PasportName = ?,
                  PasportMiddleName = ?,
                  PasportSerial = ?,
                  PasportIssuedBy = ?,
                  PasportIssuedDate = from_unixtime(?)
              WHERE UserID = ?
        ");
        $updateQuerry->bind_param('sssssii', $PasportSurName, $PasportName, $PasportMiddleName, $PasportSerial, $PasportIssuedBy, $PasportIssuedTime, $UserID);
        $updateQuerry->execute();
    }

    function GetById($UserID)
    {
        $LoginQuerry = $this -> mysqli->prepare("SELECT * from Users WHERE (`UserID` = ?) LIMIT 1");
        $LoginQuerry->bind_param('i', $UserID);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        return $result[0];
    }

    function GetByLogin($Login)
    {
        $LoginQuerry = $this -> mysqli->prepare("SELECT * from Users WHERE (`Login` = ?) LIMIT 1");
        $LoginQuerry->bind_param('s', $Login);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (count($result)>0){
            return $result[0];
        }else{
            return false;
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