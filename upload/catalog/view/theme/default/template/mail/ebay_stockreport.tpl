<html dir="ltr" lang="en">
<head>
    <title><?php echo $title; ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body style="background-solor:#FFFFFF;font-family: arial;font-size:12px;color:#343C53;">

<div style="width:800px;margin-left:auto;margin-right:auto;">
    <div style="height:102px;padding:0px;margin-bottom:10px;border-bottom:2px solid #343C53;">
        <div style="width:49%; float:left;">
            <img src="https://uk.openbaypro.com/account/live/images/obp.png">
        </div>
        <div style="width:49%; float:right;">
            <h3 style="margin-top:20px;margin:0px; padding:0px;text-align:right;font-size:18px;"><a href="https://help.openbaypro.com/" style="text-decoration:none; color:#c91920;"><?php echo $help; ?></a></h3>
        </div>
    </div>

    <div>
        <div style="width: 100%; float:left;">
            <div style="width: 60%; float:left;">
                <h1 style="margin:0 0 5px 0">Your OpenBay Stock report</h1>
                <p style="padding-right:20px;">This report details all of your products listed on eBay and what is linked to your OpenCart products. It is important that you link all items on eBay so that your stock levels are correct on your store and eBay when items sell. You should also ensure that if stock levels are different (they will be shown below), update them asap to avoid over or underselling. </p>
                <?php if($summary == 1){ ?>
                    <p>Items which have sold on eBay but are not paid for are not included in the figures - you need to account for these as they will already be deducted from your stock levels.</p>
                <?php } ?>
            </div>
            <table style="margin-bottom:20px; width:40%;" align="right;" style="float:right; border-bottom:1px solid #343C53;" cellpadding="2" cellspacing="0">
                <thead>
                <tr>
                    <td style="border-bottom:2px solid #343C53; font-weight:bold; padding:5px;" colspan="2">Summary</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td style="padding:5px;">Report created</td>
                    <td style="padding:5px; text-align:right;"><?php echo date("d/m/Y"); ?></td>
                </tr>
                <tr>
                    <td style="padding:5px;">Total eBay listings</td>
                    <td style="padding:5px; text-align:right;"><?php echo $ebay_products; ?></td>
                </tr>
                <tr>
                    <td style="padding:5px;">Total OpenCart items</td>
                    <td style="padding:5px; text-align:right;"><?php echo $store_products; ?></td>
                </tr>
                <tr>
                    <td style="padding:5px;">Linked items</td>
                    <td style="padding:5px; text-align:right;"><?php echo $storelinked_products; ?> (<?php echo $storelinked_percent; ?>%)</td>
                </tr>
                <tr>
                    <td style="padding:5px;">Items with errors</td>
                    <td style="padding:5px; text-align:right;"><?php echo $product_errors; ?> (<?php echo $errorlinked_percent; ?>%)</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div style="clear:both;"></div>
        <?php if($summary == 1){ ?>
        <table style="width:100%;" cellpadding="2" cellspacing="0">
            <thead>
            <tr>
                <td style="border-bottom:2px solid #343C53; font-weight:bold; padding:5px;">Product name</td>
                <td style="border-bottom:2px solid #343C53; font-weight:bold; padding:5px; text-align:center;">eBay<br />Qty</td>
                <td style="border-bottom:2px solid #343C53; font-weight:bold; padding:5px; text-align:center;">Store<br />Qty</td>
                <td style="border-bottom:2px solid #343C53; font-weight:bold; padding:5px; text-align:right;">Status</td>
            </tr>
            </thead>
            <tbody>
            <?php foreach($products as $product){ ?>
            <tr>
                <td style="border-bottom:1px solid #343C53; padding:5px;"><?php echo $product['name']; ?></td>
                <td style="border-bottom:1px solid #343C53; padding:5px; text-align:center;"><?php echo $product['eQty']; ?></td>
                <td style="border-bottom:1px solid #343C53; padding:5px; text-align:center;"><?php echo $product['sQty']; ?></td>
                <td style="border-bottom:1px solid #343C53; padding:5px; text-align:right;"><?php echo $product['status']; ?></td>
            </tr>
            <?php } ?>
            </tbody>
        </table>
        <?php } ?>
    </div>
</div>
</body>
</html>
