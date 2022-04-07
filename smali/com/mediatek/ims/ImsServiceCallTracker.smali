.class public Lcom/mediatek/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"


# static fields
.field private static final CALL_MSG_TYPE_ACTIVE:I = 0x84

.field private static final CALL_MSG_TYPE_ACTIVE_BY_REMOTE:I = 0x88

.field private static final CALL_MSG_TYPE_ALERT:I = 0x2

.field private static final CALL_MSG_TYPE_DISCONNECTED:I = 0x85

.field private static final CALL_MSG_TYPE_HELD:I = 0x83

.field private static final CALL_MSG_TYPE_HELD_BY_REMOTE:I = 0x87

.field private static final CALL_MSG_TYPE_ID_ASSIGN:I = 0x82

.field private static final CALL_MSG_TYPE_MT:I = 0x0

.field private static final IMS_VIDEO:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceCT"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static mImsServiceCTs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ImsServiceCallTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableVolteForImsEcc:Z

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->SENLOG:Z

    .line 63
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    iput p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    .line 105
    return-void
.end method

.method public static getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;
    .locals 2
    .param p0, "phoneId"    # I

    .line 96
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    new-instance v1, Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsServiceCallTracker;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_0
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method public static isEccExistOnAnySlot()Z
    .locals 4

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 250
    sget-object v1, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 251
    .local v1, "imsServiceCT":Lcom/mediatek/ims/ImsServiceCallTracker;
    const/4 v2, 0x0

    .line 253
    .local v2, "isEccExist":Z
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isEccExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const/4 v3, 0x1

    return v3

    .line 249
    .end local v1    # "imsServiceCT":Lcom/mediatek/ims/ImsServiceCallTracker;
    .end local v2    # "isEccExist":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 581
    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCT"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public static sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 587
    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 588
    :cond_1
    :goto_0
    const-string v0, "ImsServiceCT"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;
    .locals 5
    .param p1, "state"    # Lcom/mediatek/ims/ImsCallInfo$State;

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 134
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallInfo(state) : callID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " call num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 135
    invoke-static {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " call State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 137
    iget-object v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, p1, :cond_0

    .line 138
    return-object v2

    .line 140
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    :cond_0
    goto :goto_0

    .line 141
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 119
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v1, "getCallInfo(callId) : callID: "

    if-eqz v0, :cond_0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call num: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call State: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object v0
.end method

.method public getConferenceHostCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 169
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 170
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 172
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCallCount()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getEnableVolteForImsEcc()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    return v0
.end method

.method public getFgCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 159
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    .line 160
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 162
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParticipantCallId(Ljava/lang/String;)I
    .locals 5
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 182
    const/4 v0, -0x1

    .line 184
    .local v0, "participantCallId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ImsCallInfo;

    .line 186
    .local v3, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-object v4, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    iget-object v1, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    goto :goto_1

    .line 190
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v3    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParticipantCallId() : participantCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 194
    return v0
.end method

.method public getSelfAddressList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 326
    .local v0, "selfUri":[Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 327
    const/4 v1, 0x0

    return-object v1

    .line 329
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "selfAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 331
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "address":Ljava/lang/String;
    const-string v4, "[@;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "numberParts":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 334
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSelfAddress() selfId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 335
    aget-object v5, v4, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "numberParts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public isConferenceCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 215
    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x18

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConferenceCallExist()Z
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 288
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    const/4 v0, 0x1

    return v0

    .line 291
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    goto :goto_0

    .line 292
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isConferenceCallHost(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 223
    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConferenceHostCallExist()Z
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 299
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const/4 v0, 0x1

    return v0

    .line 302
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEccExist()Z
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 265
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 266
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsEcc:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall()Z
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 233
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 236
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 234
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .restart local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 237
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z
    .locals 2
    .param p1, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;

    .line 242
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v1, p1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v1, p1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfAddress(Ljava/lang/String;)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 308
    .local v0, "selfUri":[Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 309
    return v1

    .line 311
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 312
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "address":Ljava/lang/String;
    const-string v4, "[@;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "numberParts":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSelfAddress() selfId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " addr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 317
    aget-object v5, v4, v1

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    const/4 v1, 0x1

    return v1

    .line 311
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "numberParts":[Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public isVideoCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 207
    const/16 v0, 0x15

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoCallExist()Z
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 277
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 199
    const/16 v0, 0x14

    if-eq v0, p1, :cond_1

    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 24
    .param p1, "callInfo"    # [Ljava/lang/String;
    .param p2, "callSession"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 349
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-object v12, p1, v1

    .line 350
    .local v12, "callId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 351
    .local v13, "msgType":I
    const/4 v3, 0x5

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_0
    move v14, v3

    .line 352
    .local v14, "callMode":I
    const/4 v3, 0x6

    aget-object v15, p1, v3

    .line 354
    .local v15, "callNum":Ljava/lang/String;
    const/4 v3, 0x0

    .line 355
    .local v3, "isConference":Z
    invoke-virtual {v0, v14}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    const/4 v3, 0x1

    move v11, v3

    goto :goto_1

    .line 355
    :cond_1
    move v11, v3

    .line 359
    .end local v3    # "isConference":Z
    .local v11, "isConference":Z
    :goto_1
    const/4 v3, 0x0

    .line 360
    .local v3, "isConferenceHost":Z
    invoke-virtual {v0, v14}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceCallHost(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const/4 v3, 0x1

    move v10, v3

    goto :goto_2

    .line 360
    :cond_2
    move v10, v3

    .line 364
    .end local v3    # "isConferenceHost":Z
    .local v10, "isConferenceHost":Z
    :goto_2
    const/4 v3, 0x0

    .line 365
    .local v3, "isVideo":Z
    invoke-virtual {v0, v14}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    const/4 v3, 0x1

    move v9, v3

    goto :goto_3

    .line 365
    :cond_3
    move v9, v3

    .line 369
    .end local v3    # "isVideo":Z
    .local v9, "isVideo":Z
    :goto_3
    const/4 v3, 0x0

    .line 370
    .local v3, "isEcc":Z
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 371
    const/4 v3, 0x1

    move v8, v3

    goto :goto_4

    .line 370
    :cond_4
    move v8, v3

    .line 375
    .end local v3    # "isEcc":Z
    .local v8, "isEcc":Z
    :goto_4
    const/16 v16, 0x0

    .line 378
    .local v16, "isRemoteHold":Z
    const/16 v17, 0x0

    .line 379
    .local v17, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v3, ", isEcc = "

    const-string v4, ", isVideo = "

    const-string v6, ", isConferenceHost = "

    const-string v7, ", isConference = "

    const-string v2, ", callMode = "

    if-eqz v13, :cond_e

    if-eq v13, v5, :cond_c

    const/16 v5, 0x87

    if-eq v13, v5, :cond_a

    const/16 v5, 0x88

    if-eq v13, v5, :cond_8

    packed-switch v13, :pswitch_data_0

    move/from16 v23, v9

    move/from16 v22, v10

    move/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    goto/16 :goto_5

    .line 492
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallInfoIndication() : CALL_MSG_TYPE_DISCONNECTED => callId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 500
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 501
    .end local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .local v1, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_5

    return-void

    .line 502
    :cond_5
    sget-object v2, Lcom/mediatek/ims/ImsCallInfo$State;->DISCONNECTED:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 503
    iput-boolean v11, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 504
    iput-boolean v10, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 505
    iput-boolean v9, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 506
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    move-object/from16 v17, v1

    move/from16 v23, v9

    move/from16 v22, v10

    move/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    goto/16 :goto_5

    .line 473
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallInfoIndication() : CALL_MSG_TYPE_ACTIVE => callId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 481
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 482
    .end local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_6

    return-void

    .line 483
    :cond_6
    sget-object v2, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 484
    iput-boolean v11, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 485
    iput-boolean v10, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 486
    iput-boolean v9, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 487
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    move-object/from16 v17, v1

    move/from16 v23, v9

    move/from16 v22, v10

    move/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    goto/16 :goto_5

    .line 455
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallInfoIndication() : CALL_MSG_TYPE_HELD => callId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 463
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 464
    .end local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_7

    return-void

    .line 465
    :cond_7
    sget-object v2, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 466
    iput-boolean v11, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 467
    iput-boolean v10, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 468
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object/from16 v17, v1

    move/from16 v23, v9

    move/from16 v22, v10

    move/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    goto/16 :goto_5

    .line 410
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallInfoIndication() : CALL_MSG_TYPE_ID_ASSIGN => callId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 418
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 419
    .local v1, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    iget-object v7, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Lcom/mediatek/ims/ImsCallInfo;

    move-object v2, v6

    move-object v3, v12

    move-object v4, v15

    move v5, v11

    move/from16 v19, v13

    move-object v13, v6

    .end local v13    # "msgType":I
    .local v19, "msgType":I
    move v6, v10

    move-object/from16 v20, v15

    move-object v15, v7

    .end local v15    # "callNum":Ljava/lang/String;
    .local v20, "callNum":Ljava/lang/String;
    move v7, v9

    move/from16 v21, v8

    .end local v8    # "isEcc":Z
    .local v21, "isEcc":Z
    move v0, v9

    .end local v9    # "isVideo":Z
    .local v0, "isVideo":Z
    move-object v9, v1

    move-object/from16 v18, v1

    move v1, v10

    .end local v10    # "isConferenceHost":Z
    .local v1, "isConferenceHost":Z
    .local v18, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    move/from16 v10, v16

    move/from16 v22, v0

    move v0, v11

    .end local v11    # "isConference":Z
    .local v0, "isConference":Z
    .local v22, "isVideo":Z
    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/mediatek/ims/ImsCallInfo$State;ZLcom/mediatek/ims/ImsCallSessionProxy;)V

    invoke-virtual {v15, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v15, p0

    move/from16 v13, v21

    move/from16 v23, v22

    move/from16 v21, v0

    move/from16 v22, v1

    goto/16 :goto_5

    .line 531
    .end local v0    # "isConference":Z
    .end local v1    # "isConferenceHost":Z
    .end local v18    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    .end local v19    # "msgType":I
    .end local v20    # "callNum":Ljava/lang/String;
    .end local v21    # "isEcc":Z
    .end local v22    # "isVideo":Z
    .restart local v8    # "isEcc":Z
    .restart local v9    # "isVideo":Z
    .restart local v10    # "isConferenceHost":Z
    .restart local v11    # "isConference":Z
    .restart local v13    # "msgType":I
    .restart local v15    # "callNum":Ljava/lang/String;
    :cond_8
    move v5, v1

    move/from16 v21, v8

    move/from16 v22, v9

    move v1, v10

    move v0, v11

    move/from16 v19, v13

    move-object/from16 v20, v15

    .end local v8    # "isEcc":Z
    .end local v9    # "isVideo":Z
    .end local v10    # "isConferenceHost":Z
    .end local v11    # "isConference":Z
    .end local v13    # "msgType":I
    .end local v15    # "callNum":Ljava/lang/String;
    .restart local v0    # "isConference":Z
    .restart local v1    # "isConferenceHost":Z
    .restart local v19    # "msgType":I
    .restart local v20    # "callNum":Ljava/lang/String;
    .restart local v21    # "isEcc":Z
    .restart local v22    # "isVideo":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCallInfoIndication() : CALL_MSG_TYPE_ACTIVE_BY_REMOTE => callId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v22

    .end local v22    # "isVideo":Z
    .local v2, "isVideo":Z
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v21

    .end local v21    # "isEcc":Z
    .local v13, "isEcc":Z
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, p0

    move v11, v2

    .end local v2    # "isVideo":Z
    .local v11, "isVideo":Z
    invoke-direct {v15, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 539
    iget-object v2, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 540
    .end local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .local v2, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_9

    return-void

    .line 541
    :cond_9
    iput-boolean v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    .line 542
    iget-object v3, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v17, v2

    move/from16 v23, v11

    goto/16 :goto_5

    .line 515
    .end local v0    # "isConference":Z
    .end local v1    # "isConferenceHost":Z
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v19    # "msgType":I
    .end local v20    # "callNum":Ljava/lang/String;
    .restart local v8    # "isEcc":Z
    .restart local v9    # "isVideo":Z
    .restart local v10    # "isConferenceHost":Z
    .local v11, "isConference":Z
    .local v13, "msgType":I
    .restart local v15    # "callNum":Ljava/lang/String;
    .restart local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_a
    move v1, v10

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    move v0, v11

    move v11, v9

    .end local v8    # "isEcc":Z
    .end local v9    # "isVideo":Z
    .end local v10    # "isConferenceHost":Z
    .end local v15    # "callNum":Ljava/lang/String;
    .restart local v0    # "isConference":Z
    .restart local v1    # "isConferenceHost":Z
    .local v11, "isVideo":Z
    .local v13, "isEcc":Z
    .restart local v19    # "msgType":I
    .restart local v20    # "callNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCallInfoIndication() : CALL_MSG_TYPE_HELD_BY_REMOTE => callId = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 523
    iget-object v2, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 524
    .end local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_b

    return-void

    .line 525
    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    .line 526
    iget-object v3, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v17, v2

    move/from16 v23, v11

    goto/16 :goto_5

    .line 437
    .end local v0    # "isConference":Z
    .end local v1    # "isConferenceHost":Z
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v19    # "msgType":I
    .end local v20    # "callNum":Ljava/lang/String;
    .restart local v8    # "isEcc":Z
    .restart local v9    # "isVideo":Z
    .restart local v10    # "isConferenceHost":Z
    .local v11, "isConference":Z
    .local v13, "msgType":I
    .restart local v15    # "callNum":Ljava/lang/String;
    .restart local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_c
    move v1, v10

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    move v0, v11

    move v11, v9

    .end local v8    # "isEcc":Z
    .end local v9    # "isVideo":Z
    .end local v10    # "isConferenceHost":Z
    .end local v15    # "callNum":Ljava/lang/String;
    .restart local v0    # "isConference":Z
    .restart local v1    # "isConferenceHost":Z
    .local v11, "isVideo":Z
    .local v13, "isEcc":Z
    .restart local v19    # "msgType":I
    .restart local v20    # "callNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCallInfoIndication() : CALL_MSG_TYPE_ALERT => callId = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 445
    iget-object v2, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 446
    .end local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_d

    return-void

    .line 447
    :cond_d
    iput-boolean v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 448
    iput-boolean v1, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 449
    iput-boolean v11, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 450
    iget-object v3, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v17, v2

    move/from16 v23, v11

    goto/16 :goto_5

    .line 382
    .end local v0    # "isConference":Z
    .end local v1    # "isConferenceHost":Z
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v19    # "msgType":I
    .end local v20    # "callNum":Ljava/lang/String;
    .restart local v8    # "isEcc":Z
    .restart local v9    # "isVideo":Z
    .restart local v10    # "isConferenceHost":Z
    .local v11, "isConference":Z
    .local v13, "msgType":I
    .restart local v15    # "callNum":Ljava/lang/String;
    .restart local v17    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_e
    move v1, v10

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v0

    move v13, v8

    move v0, v11

    move v11, v9

    .end local v8    # "isEcc":Z
    .end local v9    # "isVideo":Z
    .end local v10    # "isConferenceHost":Z
    .end local v15    # "callNum":Ljava/lang/String;
    .restart local v0    # "isConference":Z
    .restart local v1    # "isConferenceHost":Z
    .local v11, "isVideo":Z
    .local v13, "isEcc":Z
    .restart local v19    # "msgType":I
    .restart local v20    # "callNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCallInfoIndication() : CALL_MSG_TYPE_MT => callId = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 390
    sget-object v18, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 391
    .restart local v18    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    iget-object v10, v15, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lcom/mediatek/ims/ImsCallInfo;

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v4, v20

    move v5, v0

    move v6, v1

    move v7, v11

    move v8, v13

    move/from16 v21, v0

    move-object v0, v9

    .end local v0    # "isConference":Z
    .local v21, "isConference":Z
    move-object/from16 v9, v18

    move/from16 v22, v1

    move-object v1, v10

    .end local v1    # "isConferenceHost":Z
    .local v22, "isConferenceHost":Z
    move/from16 v10, v16

    move/from16 v23, v11

    .end local v11    # "isVideo":Z
    .local v23, "isVideo":Z
    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/mediatek/ims/ImsCallInfo$State;ZLcom/mediatek/ims/ImsCallSessionProxy;)V

    invoke-virtual {v1, v12, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    nop

    .line 549
    .end local v18    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processCallModeChangeIndication([Ljava/lang/String;)V
    .locals 5
    .param p1, "callModeInfo"    # [Ljava/lang/String;

    .line 558
    const/4 v0, -0x1

    .line 560
    .local v0, "callMode":I
    if-nez p1, :cond_0

    .line 561
    return-void

    .line 564
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 565
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 566
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 568
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallModeChangeIndication() :callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 573
    .local v2, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_2

    return-void

    .line 575
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 576
    iget-object v3, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method public removeCallConnection(Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callSession"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 147
    .local v0, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-ne v1, p2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v0    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    return-void
.end method

.method public setEnableVolteForImsEcc(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    .line 113
    return-void
.end method
