.class public Lcom/mediatek/wfo/ril/MwiRadioResponse;
.super Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse$Stub;
.source "MwiRadioResponse.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/wfo/ril/MwiRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V
    .locals 2
    .param p1, "ril"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p2, "phoneId"    # I

    .line 12
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    .line 14
    iput p2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mPhoneId:I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MwiRadioResponse, phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLogv(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private responseInt(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "integer"    # I

    .line 133
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 134
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 135
    const/4 v1, -0x1

    .line 136
    .local v1, "ret":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 137
    move v1, p2

    .line 138
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseInt, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 139
    iget-object v2, v0, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 143
    .end local v1    # "ret":I
    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 116
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "ret":Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 119
    move-object v1, p2

    .line 120
    iget-object v2, v0, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 124
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 98
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 99
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 102
    iget-object v2, v0, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 106
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 29
    if-eqz p0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public getWfcConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "integer"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseInt(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 53
    return-void
.end method

.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 88
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 73
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 68
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 78
    return-void
.end method

.method public setWfcConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 48
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 43
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 38
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 63
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 82
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 83
    return-void
.end method

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 58
    return-void
.end method
