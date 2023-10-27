.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    .line 1520
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1523
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    .line 1524
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    .line 1525
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1526
    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1517
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->updateResource(II)V

    return-void
.end method

.method private clear()V
    .locals 5

    .line 1529
    const-string v0, "ImsConfigStorage"

    const-string v1, "phone_id = ?"

    .line 1530
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1532
    .local v2, "args":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1537
    :catch_0
    move-exception v3

    .line 1538
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ResourceHelper.clear Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1535
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1536
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "ResourceHelper.clear SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1533
    :catch_2
    move-exception v3

    .line 1534
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ResourceHelper.clear IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 1540
    :goto_1
    return-void
.end method

.method private updateResource(II)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1543
    const-string v0, ", value:"

    const-string v1, "ImsConfigStorage"

    const/4 v2, -0x1

    .line 1545
    .local v2, "curValue":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1546
    .local v3, "cv":Landroid/content/ContentValues;
    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "phone_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1547
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "feature_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1552
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->getResourceValue(I)I

    move-result v4

    move v2, v4

    .line 1553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateResource() comparing: curValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string v4, "phone_id=? AND feature_id=?"

    .line 1557
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1558
    .local v5, "args":[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    nop

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    goto :goto_2

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "updateResource update Exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1573
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1574
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "updateResource update SecurityException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1571
    :catch_2
    move-exception v0

    .line 1572
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "updateResource update IllegalArgumentException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    goto :goto_2

    .line 1560
    :catch_3
    move-exception v4

    .line 1561
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateResource() ImsException featureId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 1568
    :catch_4
    move-exception v0

    .line 1569
    .local v0, "e1":Ljava/lang/Exception;
    const-string v5, "updateResource insert Exception"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1566
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1567
    .local v0, "e1":Ljava/lang/SecurityException;
    const-string v5, "updateResource insert SecurityException"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Ljava/lang/SecurityException;
    goto :goto_1

    .line 1564
    :catch_6
    move-exception v0

    .line 1565
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    const-string v5, "updateResource insert IllegalArgumentException"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_0

    .line 1578
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method


# virtual methods
.method getResourceValue(I)I
    .locals 13
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1581
    const-string v0, "Feature "

    const-string v1, "ImsConfigStorage"

    const/4 v2, 0x0

    .line 1582
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, -0x1

    .line 1583
    .local v3, "result":I
    const-string v4, "phone_id"

    const-string v5, "feature_id"

    const-string v6, "value"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v9

    .line 1589
    .local v9, "projection":[Ljava/lang/String;
    const/16 v4, 0x65

    :try_start_0
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    .line 1590
    invoke-static {v5, p1}, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->getUriWithFeatureId(II)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1589
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 1593
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 1594
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1595
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1596
    .local v5, "valueIndex":I
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v3, v6

    .line 1597
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    .end local v5    # "valueIndex":I
    nop

    .line 1611
    if-eqz v2, :cond_1

    .line 1612
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1599
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not assigned with res value!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "result":I
    .end local v9    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .end local p1    # "featureId":I
    throw v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1611
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "result":I
    .restart local v9    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .restart local p1    # "featureId":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1606
    :catch_0
    move-exception v1

    .line 1607
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not assigned with res value or something wrong with cursor"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "result":I
    .end local v9    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .end local p1    # "featureId":I
    throw v5

    .line 1604
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "result":I
    .restart local v9    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .restart local p1    # "featureId":I
    :catch_1
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "getResourceValue SecurityException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    nop

    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_1

    .line 1612
    goto :goto_0

    .line 1602
    :catch_2
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "getResourceValue IllegalArgumentException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1611
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v2, :cond_1

    .line 1612
    goto :goto_0

    .line 1616
    :cond_1
    :goto_1
    return v3

    .line 1611
    :goto_2
    if-eqz v2, :cond_2

    .line 1612
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1614
    :cond_2
    throw v0
.end method
