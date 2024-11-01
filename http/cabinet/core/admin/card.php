<?php

// класс пользователя
Class card
{
    private $mysqli;

    var $CardID;
    var $PageID;
    var $Name;
    var $ShowAdditionalLinks;
    var $AdditionalLinksType;
    var $CardImageSrc;
    var $CardTypeID;
    var $PriceByExcursion = Array();
    var $PriceByToure = Array();
    var $PriceByWedding = Array();
    var $DefaultCurrency = Array();
    var $CurrencyList = Array();
    var $HotelList = Array();

    //конструктор
    function card($mysqli, $CardID)
    {
        $this -> mysqli = $mysqli;
        $this->CardID = $CardID;
        $this -> getCardData();
        $this -> getPriceSettings();
        $this -> getDefaultCurrency();
        $this -> getCurrencyList();
        $this -> getHotelList();
    }

    function getCardData(){
        // Подготавливаем запросы к БД
        $result = array();
        $Querry = $this -> mysqli->prepare("
            SELECT c.*, pt.PrimaryTitle
              FROM Card c
                left join PagePrimaryTitle pt on pt.PageID = c.PageID and pt.LangID = ?
              WHERE (c.CardID = ? ) LIMIT 1
            ");
        $Querry->bind_param('ii', $_SESSION['language'], $this->CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this->PageID = $result[0]['PageID'];
        $this->Name = $result[0]['PrimaryTitle'];
        $this->ShowAdditionalLinks = $result[0]['ShowAdditionalLinks'];
        $this->AdditionalLinksType = $result[0]['AdditionalLinksType'];
        $this->CardImageSrc = $result[0]['CardImageSrc'];
        $this->CardTypeID = $result[0]['CardTypeID'];
    }

    function getPriceSettings(){
        // PriceByExcursion
        $result = array();
        $Querry = $this -> mysqli->prepare("
                SELECT c.PriceID, c.CurrencyID, c.Value ,c.Value2 ,c.Value3 ,c.Value4 ,c.Value5, c.Value6, c.Value7, c1.Name as 'CurrencyName'
                    FROM CardPriceByExcursion c
                       LEFT JOIN Currency c1 ON c.CurrencyID = c1.CurrencyID
                    WHERE c.CardID = ?
                    order by c.Value7
            ");
        $Querry->bind_param('i', $this->CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $Price){
                $this->PriceByExcursion[$Price['CurrencyID']]['PriceID'] = $Price['PriceID'];
                $this->PriceByExcursion[$Price['CurrencyID']]['CurrencyID'] = $Price['CurrencyID'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value'] = $Price['Value'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value2'] = $Price['Value2'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value3'] = $Price['Value3'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value4'] = $Price['Value4'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value5'] = $Price['Value5'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value6'] = $Price['Value6'];
                $this->PriceByExcursion[$Price['CurrencyID']]['Value7'] = $Price['Value7'];
                $this->PriceByExcursion[$Price['CurrencyID']]['CurrencyName'] = $Price['CurrencyName'];
            }
        }


        // PriceByToure
        $result = array();
        $Querry = $this -> mysqli->prepare("
            SELECT c.PriceID, c.CurrencyID, c.HotelID, c.Value, c.Value2, c.Value3, c.Value4, c.Value5, c.Value6, c.Value7, c1.Name as 'CurrencyName', h.Name as 'HotelName'
                FROM CardPriceByToure c
                   LEFT JOIN Currency c1 ON c.CurrencyID = c1.CurrencyID
                   LEFT JOIN Hotel h ON c.HotelID = h.HotelID
                WHERE CardID = ?
                order by c.Value
            ");
        $Querry->bind_param('i', $this->CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $Price){
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['PriceID'] = $Price['PriceID'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['CurrencyID'] = $Price['CurrencyID'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value'] = $Price['Value'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value2'] = $Price['Value2'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value3'] = $Price['Value3'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value4'] = $Price['Value4'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value5'] = $Price['Value5'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value6'] = $Price['Value6'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['Value7'] = $Price['Value7'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['CurrencyName'] = $Price['CurrencyName'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['HotelID'] = $Price['HotelID'];
                $this->PriceByToure[$Price['CurrencyID']][$Price['HotelID']]['HotelName'] = $Price['HotelName'];
            }
        }


        // PriceByWedding
        $result = array();
        $Querry = $this -> mysqli->prepare("
                 SELECT c.CardID, c.PriceID, c.CurrencyID, c.HotelID, c.GuestValue, c.OwnerValue, c1.Name as 'CurrencyName', h.Name as 'HotelName'
                    FROM CardPriceByWedding c
                       LEFT JOIN Currency c1 ON c.CurrencyID = c1.CurrencyID
                       LEFT JOIN Hotel h ON c.HotelID = h.HotelID
                    WHERE c.CardID = ?
                    order by c.OwnerValue, c.GuestValue
            ");
        $Querry->bind_param('i', $this->CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);

        if($result){
            foreach ($result as $Price){
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['PriceID'] = $Price['PriceID'];
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['CurrencyID'] = $Price['CurrencyID'];
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['GuestValue'] = $Price['GuestValue'];
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['OwnerValue'] = $Price['OwnerValue'];
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['CurrencyName'] = $Price['CurrencyName'];
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['HotelID'] = $Price['HotelID'];
                $this->PriceByWedding[$Price['CurrencyID']][$Price['HotelID']]['HotelName'] = $Price['HotelName'];
            }
        }
    }

    function getDefaultCurrency(){
        $Querry = $this -> mysqli->prepare("
                SELECT c.CurrencyID, c.Name
                    FROM Currency c
                    WHERE isDefault = 1
                    LIMIT 1
            ");
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this->DefaultCurrency = $result[0];
    }

    function getCurrencyList(){
        $Querry = $this -> mysqli->prepare("
                SELECT c.CurrencyID, c.Name
                    FROM Currency c
            ");
        $Querry->execute();
        $result = GetResultArray($Querry);
        foreach ($result as $CurrentCurrency){
            $this->CurrencyList[$CurrentCurrency['CurrencyID']]['CurrencyID'] = $CurrentCurrency['CurrencyID'];
            $this->CurrencyList[$CurrentCurrency['CurrencyID']]['Name'] = $CurrentCurrency['Name'];
        }
    }

    function getHotelList(){
        $Querry = $this -> mysqli->prepare("
                SELECT h.HotelID, h.Name
                  FROM Hotel h
            ");
        $Querry->execute();
        $result = GetResultArray($Querry);
        foreach ($result as $Hotel){
            $this->HotelList[$Hotel['HotelID']]['HotelID'] = $Hotel['HotelID'];
            $this->HotelList[$Hotel['HotelID']]['Name'] = $Hotel['Name'];
        }
    }

    function getCost($BookingFormData)
    {
        $BookingCostData = Array(
            'BookingCost' => 0,
            'BookingCurrency' => $this-> DefaultCurrency['CurrencyID'],
            'BookingCurrencyName' => $this-> DefaultCurrency['Name'],
        );
        switch ($this->CardTypeID) {
            case 1:
                $PeopleCount = 0;
                $BookingCurrency = $this-> DefaultCurrency['CurrencyID'];
                $BookingCurrencyName = $this-> DefaultCurrency['Name'];
                $Value = 0;
                if (isset($BookingFormData['PeopleCount'])){
                    $PeopleCount = $BookingFormData['PeopleCount'];
                }
                if (isset($BookingFormData['СurrencyID'])){
                    if (isset($this->CurrencyList[$BookingFormData['СurrencyID']])){
                        $BookingCurrency = $BookingFormData['СurrencyID'];
                        $BookingCurrencyName = $this->CurrencyList[$BookingFormData['СurrencyID']]['Name'];
                    }
                }
                if(isset($this->PriceByExcursion[$BookingCurrency]['Value'])){
                    if($PeopleCount < 8){
                        switch ($PeopleCount){
                            case 7:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value'];
                                break;
                            case 6:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value2'];
                                break;
                            case 5:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value3'];
                                break;
                            case 4:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value4'];
                                break;
                            case 3:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value5'];
                                break;
                            case 2:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value6'];
                                break;
                            case 1:
                                $Value = $this->PriceByExcursion[$BookingCurrency]['Value7'];
                                break;
                        }
                    }
                    else{
                        $Value = $this->PriceByExcursion[$BookingCurrency]['Value'];
                    }


                }
                $BookingCost = $PeopleCount * $Value;
                $BookingCostData['BookingCost'] = $BookingCost;
                $BookingCostData['BookingCurrency'] = $BookingCurrency;
                $BookingCostData['BookingCurrencyName'] = $BookingCurrencyName;

                break;
            case 2:
                $PeopleCount = 0;
                $BookingCurrency = $this-> DefaultCurrency['CurrencyID'];
                $BookingCurrencyName = $this-> DefaultCurrency['Name'];
                $HotelID = '';
                $Value = 0;
                if (isset($BookingFormData['PeopleCount'])){
                    $PeopleCount = $BookingFormData['PeopleCount'];
                }
                if (isset($BookingFormData['СurrencyID'])){
                    if (isset($this->CurrencyList[$BookingFormData['СurrencyID']])){
                        $BookingCurrency = $BookingFormData['СurrencyID'];
                        $BookingCurrencyName = $this->CurrencyList[$BookingFormData['СurrencyID']]['Name'];
                    }
                }
                if(isset($this->PriceByToure[$BookingCurrency])) {
                    if (isset($BookingFormData['HotelID'])){
                        if (isset($this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']])){
                            if ($PeopleCount < 8){
                                switch ($PeopleCount){
                                    case 7:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value'];
                                        break;
                                    case 6:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value2'];
                                        break;
                                    case 5:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value3'];
                                        break;
                                    case 4:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value4'];
                                        break;
                                    case 3:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value5'];
                                        break;
                                    case 2:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value6'];
                                        break;
                                    case 1:
                                        $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value7'];
                                        break;
                                }
                            }
                            else{
                                $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value'];
                            }
                        }
                    }
                }
                $BookingCost = $PeopleCount * $Value;
                $BookingCostData['BookingCost'] = $BookingCost;
                $BookingCostData['BookingCurrency'] = $BookingCurrency;
                $BookingCostData['BookingCurrencyName'] = $BookingCurrencyName;
                break;
            case 3:
                $PeopleCount = 0;
                $BookingCurrency = $this-> DefaultCurrency['CurrencyID'];
                $BookingCurrencyName = $this-> DefaultCurrency['Name'];
                $HotelID = '';
                $GuestValue = 0;
                $OwnerValue = 0;
                if (isset($BookingFormData['PeopleCount'])){
                    $PeopleCount = $BookingFormData['PeopleCount'];
                }
                if (isset($BookingFormData['СurrencyID'])){
                    if (isset($this->CurrencyList[$BookingFormData['СurrencyID']])){
                        $BookingCurrency = $BookingFormData['СurrencyID'];
                        $BookingCurrencyName = $this->CurrencyList[$BookingFormData['СurrencyID']]['Name'];
                    }
                }
                if(isset($this->PriceByWedding[$BookingCurrency])) {
                    if (isset($BookingFormData['HotelID'])){
                        if (isset($this->PriceByWedding[$BookingCurrency][$BookingFormData['HotelID']])){
                            $OwnerValue = $this->PriceByWedding[$BookingCurrency][$BookingFormData['HotelID']]['OwnerValue'];
                            $GuestValue = $this->PriceByWedding[$BookingCurrency][$BookingFormData['HotelID']]['GuestValue'];
                        }
                    }
                }
                $BookingCost = $OwnerValue + ($PeopleCount * $GuestValue);
                $BookingCostData['BookingCost'] = $BookingCost;
                $BookingCostData['BookingCurrency'] = $BookingCurrency;
                $BookingCostData['BookingCurrencyName'] = $BookingCurrencyName;
                break;
        }

        if (isset($BookingFormData['TotalAmountCorrection'])){
            $BookingCostData['TotalAmountCorrection'] = $BookingFormData['TotalAmountCorrection'];
            $BookingCostData['BookingCost'] = $BookingCostData['BookingCost'] + $BookingFormData['TotalAmountCorrection'];
        } else{
            $BookingCostData['TotalAmountCorrection'] = 0;
        }
        return $BookingCostData;
    }

    function getBaseAmount($BookingFormData)
    {
        switch ($this->CardTypeID) {
            case 1:
                $PeopleCount = 1;
                $BookingCurrency = $this-> DefaultCurrency['CurrencyID'];
                $BookingCurrencyName = $this-> DefaultCurrency['Name'];
                $Value = 0;
                if (isset($BookingFormData['СurrencyID'])){
                    if (isset($this->CurrencyList[$BookingFormData['СurrencyID']])){
                        $BookingCurrency = $BookingFormData['СurrencyID'];
                        $BookingCurrencyName = $this->CurrencyList[$BookingFormData['СurrencyID']]['Name'];
                    }
                }
                if(isset($this->PriceByExcursion[$BookingCurrency]['Value7'])){
                    $Value = $this->PriceByExcursion[$BookingCurrency]['Value7'];
                }
                $BookingCost = $PeopleCount * $Value;
                $BookingCostData['BookingCost'] = $BookingCost;
                $BookingCostData['BookingCurrency'] = $BookingCurrency;
                $BookingCostData['BookingCurrencyName'] = $BookingCurrencyName;
                break;
            case 2:
                $PeopleCount = 1;
                $BookingCurrency = $this-> DefaultCurrency['CurrencyID'];
                $BookingCurrencyName = $this-> DefaultCurrency['Name'];
                $HotelID = '';
                $Value = 0;

                if (isset($BookingFormData['СurrencyID'])){
                    if (isset($this->CurrencyList[$BookingFormData['СurrencyID']])){
                        $BookingCurrency = $BookingFormData['СurrencyID'];
                        $BookingCurrencyName = $this->CurrencyList[$BookingFormData['СurrencyID']]['Name'];
                    }
                }
                if(isset($this->PriceByToure[$BookingCurrency])) {
                    if (isset($BookingFormData['HotelID'])){
                        if (isset($this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']])){
                            $Value = $this->PriceByToure[$BookingCurrency][$BookingFormData['HotelID']]['Value'];
                        }
                    }else {
                        $first_hotel = array_shift($this->PriceByToure[$BookingCurrency] );
                        $Value = $first_hotel['Value'];
                    }
                }
                $BookingCost = $PeopleCount * $Value;
                $BookingCostData['BookingCost'] = $BookingCost;
                $BookingCostData['BookingCurrency'] = $BookingCurrency;
                $BookingCostData['BookingCurrencyName'] = $BookingCurrencyName;
                break;
            case 3:
                $PeopleCount = 0;
                $BookingCurrency = $this-> DefaultCurrency['CurrencyID'];
                $BookingCurrencyName = $this-> DefaultCurrency['Name'];
                $HotelID = '';
                $GuestValue = 0;
                $OwnerValue = 0;

                if (isset($BookingFormData['СurrencyID'])){
                    if (isset($this->CurrencyList[$BookingFormData['СurrencyID']])){
                        $BookingCurrency = $BookingFormData['СurrencyID'];
                        $BookingCurrencyName = $this->CurrencyList[$BookingFormData['СurrencyID']]['Name'];
                    }
                }
                if(isset($this->PriceByWedding[$BookingCurrency])) {
                    if (isset($BookingFormData['HotelID'])){
                        if (isset($this->PriceByWedding[$BookingCurrency][$BookingFormData['HotelID']])){
                            $OwnerValue = $this->PriceByWedding[$BookingCurrency][$BookingFormData['HotelID']]['OwnerValue'];
                            $GuestValue = $this->PriceByWedding[$BookingCurrency][$BookingFormData['HotelID']]['GuestValue'];
                        }
                    }{
                        $first_hotel = array_shift($this->PriceByWedding[$BookingCurrency] );
                        $OwnerValue = $first_hotel['OwnerValue'];
                        $GuestValue = $first_hotel['GuestValue'];
                    }
                }
                $BookingCost = $OwnerValue + ($PeopleCount * $GuestValue);
                $BookingCostData['BookingCost'] = $BookingCost;
                $BookingCostData['BookingCurrency'] = $BookingCurrency;
                $BookingCostData['BookingCurrencyName'] = $BookingCurrencyName;
                break;
        }
        return $BookingCostData;

    }
}

?>