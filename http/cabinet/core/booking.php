<?php

Class booking
{
    private $mysqli;
    var $Lang;
    var $LangValue;

    //---------------------------
    var $BookingID = 0;
    var $UserID;
    var $Created;
    var $DateBooking;
    var $DateBookingEnd;
    var $CardID;
    var $BookingStatusID;
    var $BookingStatusIDName;
    var $Modified;
    var $Operator;
    var $PeopleCount;
    var $HotelID;
    var $Notes;
    var $BaseAmount;
    var $TotalAmountCorrection;
    var $TotalAmount;
    var $TotalAmountCurrency;
    var $UserReview;
    var $UserReviewDate;
    var $UserReviewStatusID;
    var $ReviewOperatorApproved;
    var $UserLangID;
    var $Card;
    var $HotelListID;
    var $HotelListName;
    var $HotelRoomsCount;
    var $OperatorNotes;
    var $UnloginedShow;

    //---------------------------
    var $UserName;
    var $UserPhone;
    var $UserEmail;
    var $PasportSurName;
    var $PasportName;
    var $PasportMiddleName;
    var $PasportSerial;
    var $PasportIssuedBy;
    var $PasportIssuedDate;
    //---------------------------

    var $StatusList;
    var $CardList;
    var $HotelList;

    //конструктор
    function booking($mysqli, $BookingID = 0)
    {
        $this->mysqli = $mysqli;
        $this->BookingID = $BookingID;
        $this->Lang = $_SESSION['language'];
        if ($this->BookingID != 0){
            $this -> getBooking();
        }
        $this -> getStatusList();
        $this -> getCardList();
        $this -> getHotelList();
        $this -> getLangValue();
    }

    function getBooking(){
        $Querry = $this->mysqli->prepare("
            SELECT b.BookingID, b.UserID, b.Created, b.DateBooking, b.DateBookingEnd, b.CardID, b.BookingStatusID, bs.Name as BookingStatusIDName, b.Modified, b.Operator, b.PeopleCount, b.HotelID, 
                  b.Notes, b.BaseAmount, b.TotalAmountCorrection, b.TotalAmount, b.TotalAmountCurrency, b.UserReview, b.UserReviewDate, b.UserReviewStatusID, b.ReviewOperatorApproved, b.UserLangID,
                  u.Name as UserName, u.Phone as UserPhone, u.Email as UserEmail, 
                  u.PasportSurName, u.PasportName, u.PasportMiddleName, u.PasportSerial, u.PasportIssuedBy, u.PasportIssuedDate,
                  b.HotelListID, h.Name as HotelListName, b.HotelRoomsCount, b.OperatorNotes, b.UnloginedShow
              FROM Booking b
                LEFT JOIN Users u on b.UserID = u.UserID
                LEFT JOIN HotelList h on h.HotelListID = b.HotelListID
                LEFT JOIN BookingStatusData bs ON bs.BookingStatusID=b.BookingStatusID AND bs.LangID = ?
              WHERE b.BookingID = ?
        ");
        $Querry->bind_param('ii', $this->Lang, $this->BookingID);
        $Querry->execute();
        $result = GetResultArray($Querry);

        $this->UserID = $result[0]['UserID'];
        $this->Created = $this -> getDateFromDB($result[0]['Created']);
        $this->DateBooking = $this -> getDateFromDB($result[0]['DateBooking']);
        $this->DateBookingEnd = $this -> getDateFromDB($result[0]['DateBookingEnd']);
        $this->CardID = $result[0]['CardID'];
        $this->BookingStatusID = $result[0]['BookingStatusID'];
        $this->BookingStatusIDName = $result[0]['BookingStatusIDName'];
        $this->Modified = $this -> getDateFromDB($result[0]['Modified']);
        $this->Operator = $result[0]['Operator'];
        $this->PeopleCount = $result[0]['PeopleCount'];
        $this->HotelID = $result[0]['HotelID'];
        $this->Notes = $result[0]['Notes'];
        $this->BaseAmount = $result[0]['BaseAmount'];
        $this->TotalAmountCorrection = $result[0]['TotalAmountCorrection'];
        $this->TotalAmount = $result[0]['TotalAmount'];
        $this->TotalAmountCurrency = $result[0]['TotalAmountCurrency'];
        $this->UserReview = $result[0]['UserReview'];
        $this->UserReviewDate = $this -> getDateFromDB($result[0]['UserReviewDate']);
        $this->UserReviewStatusID = $result[0]['UserReviewStatusID'];
        $this->ReviewOperatorApproved = $result[0]['ReviewOperatorApproved'];
        $this->UserLangID = $result[0]['UserLangID'];
        $this->HotelListID = $result[0]['HotelListID'];
        $this->HotelListName = $result[0]['HotelListName'];
        $this->HotelRoomsCount = $result[0]['HotelRoomsCount'];
        $this->OperatorNotes = $result[0]['OperatorNotes'];
        $this->UnloginedShow = $result[0]['UnloginedShow'];

        $this->UserName = $result[0]['UserName'];
        $this->UserPhone = $result[0]['UserPhone'];
        $this->UserEmail = $result[0]['UserEmail'];
        $this->PasportSurName = $result[0]['PasportSurName'];
        $this->PasportName = $result[0]['PasportName'];
        $this->PasportMiddleName = $result[0]['PasportMiddleName'];
        $this->PasportSerial = $result[0]['PasportSerial'];
        $this->PasportIssuedBy = $result[0]['PasportIssuedBy'];
        $this->PasportIssuedDate = $this -> getDateFromDB($result[0]['PasportIssuedDate']);

        // получить даныне каорточки
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/card.php');
        $this->Card = new card($this->mysqli, $this->CardID);
    }

    function getHotelList(){
        $Querry = $this->mysqli->prepare("
            SELECT hl.HotelListID, hl.Name, hl.Adress, hl.Phone
                FROM HotelList hl
        ");
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $row){
                $this->HotelList[$row['HotelListID']]['HotelListID'] = $row['HotelListID'];
                $this->HotelList[$row['HotelListID']]['Name'] = $row['Name'];
                $this->HotelList[$row['HotelListID']]['Adress'] = $row['Adress'];
                $this->HotelList[$row['HotelListID']]['Phone'] = $row['Phone'];
            }
        }
    }

    function getCardList(){
        $Querry = $this->mysqli->prepare("
            SELECT c.CardID, c.PageID, c.CardTypeID, ppt.PrimaryTitle
                FROM Card c
                  LEFT JOIN PagePrimaryTitle ppt ON c.PageID = ppt.PageID AND ppt.LangID = ?
                WHERE c.CardTypeID IN (1,2,3,4)

        ");
        $Querry->bind_param('i', $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $row){
                $this->CardList[$row['CardID']]['CardID'] = $row['CardID'];
                $this->CardList[$row['CardID']]['PageID'] = $row['PageID'];
                $this->CardList[$row['CardID']]['CardTypeID'] = $row['CardTypeID'];
                $this->CardList[$row['CardID']]['Name'] = $row['PrimaryTitle'];
            }
        }
    }

    function getLangValue(){
        $Querry = $this->mysqli->prepare("
            SELECT ll.Lang
                FROM LangList ll
                WHERE ll.LangID = ? 
        ");
        $Querry->bind_param('i', $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if ($result){
            $this->LangValue = $result[0]['Lang'];
        }
    }

    function getStatusList(){
        $Querry = $this->mysqli->prepare("
            SELECT bs.BookingStatusID, bsd.Name, bs.Active, bs.RowNumber
                FROM BookingStatus bs
                  LEFT JOIN BookingStatusData bsd ON bs.BookingStatusID=bsd.BookingStatusID AND bsd.LangID = ?
                ORDER BY bs.RowNumber
        ");
        $Querry->bind_param('i', $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $row){
                $this->StatusList[$row['BookingStatusID']]['BookingStatusID'] = $row['BookingStatusID'];
                $this->StatusList[$row['BookingStatusID']]['Name'] = $row['Name'];
                $this->StatusList[$row['BookingStatusID']]['Active'] = $row['Active'];
                $this->StatusList[$row['BookingStatusID']]['RowNumber'] = $row['RowNumber'];
            }
        }
    }

    function saveBooking(){
        $updateQuerry = $this->mysqli->prepare("
            update Booking set 
                  UnloginedShow = ?,
                  UserID = ?, 
                  DateBooking = from_unixtime(?), 
                  CardID = ?, 
                  BookingStatusID = ?, 
                  Modified = NOW(), 
                  Operator = ?, 
                  PeopleCount = ?, 
                  HotelID = ?, 
                  Notes = ?, 
                  TotalAmount = ?, 
                  TotalAmountCurrency = ?,
                  UserReview = ?, 
                  UserReviewDate = from_unixtime(?), 
                  UserReviewStatusID = ?, 
                  ReviewOperatorApproved = ?,
                  UserLangID = ?
              WHERE BookingID = ?
        ");
        $insertQuerry = $this->mysqli->prepare("
            insert into Booking (UserID, Created, DateBooking, CardID, BookingStatusID, Modified, Operator, PeopleCount, HotelID, Notes, TotalAmount, TotalAmountCurrency, UserReview, UserReviewDate, UserReviewStatusID, ReviewOperatorApproved, UserLangID, UnloginedShow )
              values ( ?, NOW(), from_unixtime(?), ?, ?, NOW(), ?, ?, ?, ?, ?, ?, ?, from_unixtime(?), ?, ?, ?, 1 )
        ");

        if ($this -> BookingID == 0 ){
            $DateBooking = $this -> getTimeFromDate($this->DateBooking);
            $UserReviewDate = $this -> getTimeFromDate($this->UserReviewDate);
            $insertQuerry->bind_param('iiiiiiissisiiii', $this->UserID, $DateBooking, $this->CardID, $this->BookingStatusID, $this->Operator, $this->PeopleCount, $this->HotelID, $this->Notes,
                $this->TotalAmount, $this->TotalAmountCurrency, $this->UserReview, $UserReviewDate, $this->UserReviewStatusID, $this->ReviewOperatorApproved, $this->UserLangID);
            $insertQuerry->execute();
            $this -> BookingID = $this->mysqli->insert_id;
        } else {
            $DateBooking = $this -> getTimeFromDate($this->DateBooking);
            $UserReviewDate = $this -> getTimeFromDate($this->UserReviewDate);
            $updateQuerry->bind_param('iiiiiiiissisiiiii', $this->UnloginedShow, $this->UserID, $DateBooking, $this->CardID, $this->BookingStatusID, $this->Operator, $this->PeopleCount, $this->HotelID, $this->Notes,
                $this->TotalAmount, $this->TotalAmountCurrency, $this->UserReview, $UserReviewDate, $this->UserReviewStatusID, $this->ReviewOperatorApproved, $this->BookingID, $this->UserLangID);
            $updateQuerry->execute();
        }
    }




    function changeStatus($BookingStatusID){
        $updateQuerry = $this->mysqli->prepare("
            update Booking set 
                  BookingStatusID = ?, 
                  Modified = NOW(), 
                  Operator = ? 
              WHERE BookingID = ?
        ");
        $updateQuerry->bind_param('iii', $BookingStatusID, $_SESSION['authentication']['UserID'], $this->BookingID);
        $updateQuerry->execute();
        $this->BookingStatusID = $BookingStatusID;
        $this->BookingStatusIDName = $this->StatusList[$BookingStatusID]['Name'];
    }

    function changePeriod($DateBooking, $DateBookingEnd){
        $updateQuerry = $this->mysqli->prepare("
            update Booking set 
                  DateBooking = from_unixtime(?), 
                  DateBookingEnd = from_unixtime(?),

                  Operator = ?,
                  Modified = NOW() 
              WHERE BookingID = ?
        ");
        $updateQuerry->bind_param('iiii', $this->getTimeFromDate($DateBooking), $this->getTimeFromDate($DateBookingEnd), $_SESSION['authentication']['UserID'], $this->BookingID);
        $updateQuerry->execute();
        $this->DateBooking = $DateBooking;
        $this->DateBookingEnd = $DateBookingEnd;
    }


    function changeBooking($CardID, $PeopleCount, $HotelID, $TotalAmountCurrency, $TotalAmountCorrection){
        $this->Card = new card($this->mysqli, $CardID);
        $this->CardID = $CardID;

        $BookingFormData = array();
        $BookingFormData['PeopleCount'] = $PeopleCount;
        $BookingFormData['СurrencyID'] = $TotalAmountCurrency;
        $BookingFormData['HotelID'] = $HotelID;
        $BookingFormData['TotalAmountCorrection'] = $TotalAmountCorrection;

        $baseAmountData = $this->Card->getBaseAmount($BookingFormData);
        $baseAmount = $baseAmountData['BookingCost'];

        $TotalAmountData = $this->Card->getCost($BookingFormData);
        $TotalAmount = $TotalAmountData['BookingCost'];

        $updateQuerry = $this->mysqli->prepare("
            update Booking set 
                  CardID = ?, 
                  PeopleCount = ?,
                  HotelID = ?,
                  TotalAmountCurrency = ?,
                  BaseAmount = ?,
                  TotalAmountCorrection = ?,
                  TotalAmount = ?,
                  Operator = ?,
                  Modified = NOW() 
              WHERE BookingID = ?
        ");
        $updateQuerry->bind_param('iiiisssii', $CardID, $PeopleCount, $HotelID, $TotalAmountCurrency, $baseAmount, $TotalAmountCorrection, $TotalAmount, $_SESSION['authentication']['UserID'], $this->BookingID);
        $updateQuerry->execute();

        $this->CardID = $CardID;
        $this->PeopleCount = $PeopleCount;
        $this->HotelID = $HotelID;
        $this->TotalAmountCurrency = $TotalAmountCurrency;
        $this->BaseAmount = $baseAmount;
        $this->TotalAmountCorrection = $TotalAmountCorrection;
        $this->TotalAmount = $TotalAmount;
    }

    function changeHotelList($HotelListID, $HotelRoomsCount){
        $updateQuerry = $this->mysqli->prepare("
            update Booking set 
                  HotelListID = ?, 
                  HotelRoomsCount = ?,
                  Operator = ?,
                  Modified = NOW() 
              WHERE BookingID = ?
        ");
        $updateQuerry->bind_param('iiii', $HotelListID, $HotelRoomsCount, $_SESSION['authentication']['UserID'], $this->BookingID);
        $updateQuerry->execute();

        $this->HotelListID = $HotelListID;
        $this->HotelListName = $this->HotelList[$HotelListID]['Name'];
        $this->HotelRoomsCount = $HotelRoomsCount;
    }

    function changeOperatorNotes($OperatorNotes){
        $updateQuerry = $this->mysqli->prepare("
            update Booking set 
                  OperatorNotes = ?,
                  Operator = ?,
                  Modified = NOW() 
              WHERE BookingID = ?
        ");
        $updateQuerry->bind_param('sii', $OperatorNotes, $_SESSION['authentication']['UserID'], $this->BookingID);
        $updateQuerry->execute();
        $this->OperatorNotes = $OperatorNotes;
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