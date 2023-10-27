.class public Lcom/mediatek/ims/ril/ImsRadioResponse;
.super Lcom/mediatek/ims/ril/ImsRadioResponseBase;
.source "ImsRadioResponse.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 2
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 34
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 36
    iput p2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mPhoneId:I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRadioResponse, phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 474
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 475
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_5

    .line 476
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 477
    .local v2, "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 478
    const/4 v4, 0x2

    new-array v5, v4, [J

    .line 479
    .local v5, "timeSlot":[J
    new-array v6, v4, [Ljava/lang/String;

    .line 481
    .local v6, "timeSlotStr":[Ljava/lang/String;
    new-instance v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v7}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    aput-object v7, v2, v3

    .line 482
    aget-object v7, v2, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->status:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 483
    aget-object v7, v2, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 484
    aget-object v7, v2, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 485
    aget-object v7, v2, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 486
    aget-object v7, v2, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 487
    aget-object v7, v2, v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 488
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 489
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 491
    aget-object v7, v6, v8

    if-eqz v7, :cond_2

    aget-object v7, v6, v1

    if-nez v7, :cond_0

    goto :goto_2

    .line 495
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 496
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 497
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v9, "GMT+8"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 499
    :try_start_0
    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 500
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    aput-wide v10, v5, v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v9    # "date":Ljava/util/Date;
    nop

    .line 495
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 501
    .restart local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v4

    .line 502
    .local v4, "e":Ljava/text/ParseException;
    const-string v9, "responseCallForwardInfoEx() ParseException occured"

    invoke-virtual {p0, v9}, Lcom/mediatek/ims/ril/ImsRadioResponse;->riljLoge(Ljava/lang/String;)V

    .line 503
    const/4 v5, 0x0

    .line 507
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v7    # "j":I
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    aget-object v4, v2, v3

    iput-object v5, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    goto :goto_3

    .line 492
    :cond_2
    :goto_2
    aget-object v4, v2, v3

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 477
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 510
    .end local v3    # "i":I
    .end local v5    # "timeSlot":[J
    .end local v6    # "timeSlotStr":[Ljava/lang/String;
    :cond_3
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_4

    .line 511
    iget-object v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 513
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 515
    .end local v2    # "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_5
    return-void
.end method

.method private responseFailCause(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "info"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 588
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 589
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 592
    new-instance v2, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v2}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    move-object v1, v2

    .line 593
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 594
    iget-object v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 595
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 599
    .end local v1    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 542
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "ret":Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 545
    move-object v1, p2

    .line 546
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 550
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static responseStringArrayList(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/ims/ril/ImsRILAdapter;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 74
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "ret":[Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 78
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 79
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 83
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 85
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 524
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 525
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 528
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 532
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 46
    if-eqz p0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 48
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 628
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 629
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 624
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 625
    return-void
.end method

.method public cancelUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 291
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 292
    return-void
.end method

.method public conferenceDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 246
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 247
    return-void
.end method

.method public controlCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 123
    return-void
.end method

.method public controlImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 219
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 220
    return-void
.end method

.method public dialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 273
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 274
    return-void
.end method

.method public eccRedialApproveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 104
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 105
    return-void
.end method

.method public forceReleaseCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 327
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 328
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 403
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 384
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 385
    return-void
.end method

.method public getImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # I

    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 196
    return-void
.end method

.method public getImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public getImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # I

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 211
    return-void
.end method

.method public getProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 176
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 177
    return-void
.end method

.method public getXcapStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 300
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 301
    return-void
.end method

.method public hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 228
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 229
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 435
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 436
    return-void
.end method

.method public imsBearerStateConfirmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 336
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 337
    return-void
.end method

.method public imsDeregNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 140
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 141
    return-void
.end method

.method public imsEctCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 113
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 114
    return-void
.end method

.method public pullCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 59
    return-void
.end method

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 418
    return-void
.end method

.method public querySsacStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 642
    .local p2, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 643
    return-void
.end method

.method public queryVopsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "vops"    # I

    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 635
    return-void
.end method

.method public resetSuppServResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 309
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 310
    return-void
.end method

.method public responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 568
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 570
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 571
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 574
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 578
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method public varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 560
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 563
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 429
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseStringArrayList(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 430
    return-void
.end method

.method public sendImsSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 608
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 610
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 611
    new-instance v1, Lcom/mediatek/ims/MtkSmsResponse;

    iget v2, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ims/MtkSmsResponse;-><init>(ILjava/lang/String;I)V

    .line 612
    .local v1, "ret":Lcom/mediatek/ims/MtkSmsResponse;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 613
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 617
    .end local v1    # "ret":Lcom/mediatek/ims/MtkSmsResponse;
    :cond_1
    return-void
.end method

.method public sendUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 282
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 283
    return-void
.end method

.method public setCallAdditionalInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 647
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 648
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 422
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 423
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 131
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 132
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 374
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 375
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 410
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 411
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 392
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 393
    return-void
.end method

.method public setImsBearerNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 345
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 346
    return-void
.end method

.method public setImsCallModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 451
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 452
    return-void
.end method

.method public setImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 191
    return-void
.end method

.method public setImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 200
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 201
    return-void
.end method

.method public setImsEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 149
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 150
    return-void
.end method

.method public setImsRegistrationReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 359
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 360
    return-void
.end method

.method public setImsRtpReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 354
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 355
    return-void
.end method

.method public setImscfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 158
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 159
    return-void
.end method

.method public setModemImsCfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "results"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 185
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 186
    return-void
.end method

.method public setSipHeaderReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 446
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 447
    return-void
.end method

.method public setSipHeaderResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 441
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 442
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 638
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 639
    return-void
.end method

.method public setVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 366
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 367
    return-void
.end method

.method public setWfcProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 237
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 238
    return-void
.end method

.method public setupXcapUserAgentStringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 319
    return-void
.end method

.method public toggleRttAudioIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 456
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 457
    return-void
.end method

.method public videoCallAcceptResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 96
    return-void
.end method

.method public videoRingtoneEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 652
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 653
    return-void
.end method

.method public vtDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 255
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 256
    return-void
.end method

.method public vtDialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 264
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 265
    return-void
.end method
