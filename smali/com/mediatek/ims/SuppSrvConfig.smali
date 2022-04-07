.class public Lcom/mediatek/ims/SuppSrvConfig;
.super Ljava/lang/Object;
.source "SuppSrvConfig.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SuppSrvConfig"

.field public static final MEDIA_TYPE_ONLY_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_SEPERATE:I = 0x2

.field public static final MEDIA_TYPE_STANDARD:I = 0x0

.field public static final MEDIA_TYPE_VIDEO_WITH_AUDIO:I = 0x3

.field private static final PROP_BOOL_IDX_APPEND_COUNTRY_CODE:I = 0x6

.field private static final PROP_BOOL_IDX_ATTR_NEED_QUAOTATION_MARK:I = 0x14

.field private static final PROP_BOOL_IDX_DISABLE_ETAG:I = 0xa

.field private static final PROP_BOOL_IDX_FILL_FORWARD_TO:I = 0x3

.field private static final PROP_BOOL_IDX_FWD_NUM_USE_SIP_URI:I = 0x15

.field private static final PROP_BOOL_IDX_HANDLE_409:I = 0x2

.field private static final PROP_BOOL_IDX_HTTP_ERR_TO_UNKNOWN_HOST:I = 0xb

.field private static final PROP_BOOL_IDX_IMS_DEREG:I = 0x5

.field private static final PROP_BOOL_IDX_INTERNET_APN:I = 0xd

.field private static final PROP_BOOL_IDX_MEDIA_TAG:I = 0x7

.field private static final PROP_BOOL_IDX_NOREPLYTIMER_INSIDE_CFACTION:I = 0xe

.field private static final PROP_BOOL_IDX_NOT_SUPPORT_CFNL:I = 0x12

.field private static final PROP_BOOL_IDX_NOT_SUPPORT_XCAP:I = 0x0

.field private static final PROP_BOOL_IDX_PUT_WHOLE_CLIR:I = 0x8

.field private static final PROP_BOOL_IDX_QUERY_WHOLE_SIMSERV:I = 0x9

.field private static final PROP_BOOL_IDX_SAVE_WHOLE_NODE:I = 0x10

.field private static final PROP_BOOL_IDX_SET_CFNRC_WITH_CFNL:I = 0x11

.field private static final PROP_BOOL_IDX_SUPPORT_NON_URI_NUMBER:I = 0x17

.field private static final PROP_BOOL_IDX_SUPPORT_PLUS_TO_URL:I = 0x16

.field private static final PROP_BOOL_IDX_SUPPORT_PUT_CF_ROOT:I = 0x13

.field private static final PROP_BOOL_IDX_SUPPORT_TIME_SLOT:I = 0xf

.field private static final PROP_BOOL_IDX_USE_HTTP_PROTOCOL:I = 0x1

.field private static final PROP_BOOL_IDX_XCAP_APN:I = 0xc

.field private static final PROP_BOOL_IDX_XCAP_PREFIX_SS:I = 0x4

.field private static final PROP_INT_IDX_DATA_COOL_DOWN_TIMER:I = 0x4

.field private static final PROP_INT_IDX_DATA_KEEP_ALIVE_TIMER:I = 0x2

.field private static final PROP_INT_IDX_MEDIA_TYPE:I = 0x1

.field private static final PROP_INT_IDX_REQUEST_DATA_TIMER:I = 0x3

.field private static final PROP_INT_IDX_XCAP_PORT:I = 0x0

.field private static final PROP_LONG_IDX_CACHE_VALID_TIME:I = 0x0

.field private static final PROP_STR_IDX_AUID:I = 0x1

.field private static final PROP_STR_IDX_DIGEST_ID:I = 0x8

.field private static final PROP_STR_IDX_DIGEST_PWD:I = 0x9

.field private static final PROP_STR_IDX_ELEMENT_CONTENT_TYPE:I = 0x0

.field private static final PROP_STR_IDX_PHONE_CONTEXT:I = 0xa

.field private static final PROP_STR_IDX_RULEID_CFB:I = 0x4

.field private static final PROP_STR_IDX_RULEID_CFNL:I = 0x7

.field private static final PROP_STR_IDX_RULEID_CFNRC:I = 0x6

.field private static final PROP_STR_IDX_RULEID_CFNRY:I = 0x5

.field private static final PROP_STR_IDX_RULEID_CFU:I = 0x3

.field private static final PROP_STR_IDX_XCAP_ROOT:I = 0x2

.field public static final RULEID_CFB:Ljava/lang/String; = "CFB"

.field public static final RULEID_CFNL:Ljava/lang/String; = "CFNL"

.field public static final RULEID_CFNRc:Ljava/lang/String; = "CFNRc"

.field public static final RULEID_CFNRy:Ljava/lang/String; = "CFNRy"

.field public static final RULEID_CFU:Ljava/lang/String; = "CFU"

.field private static final SENLOG:Z

.field private static final SYS_PROP_AUID:Ljava/lang/String; = "persist.vendor.ss.auid"

.field private static final SYS_PROP_BOOL_CONFIG:Ljava/lang/String; = "persist.vendor.ss.boolconfig"

.field private static final SYS_PROP_BOOL_VALUE:Ljava/lang/String; = "persist.vendor.ss.boolvalue"

.field private static final SYS_PROP_CACHE_VALID_TIME:Ljava/lang/String; = "persist.vendor.ss.cachetime"

.field private static final SYS_PROP_CONTENT_TYPE:Ljava/lang/String; = "persist.vendor.ss.contenttype"

.field private static final SYS_PROP_DATA_COOL_DOWN_TIMER:Ljava/lang/String; = "persist.vendor.ss.cdtimer"

.field private static final SYS_PROP_DATA_KEEP_ALIVE_TIMER:Ljava/lang/String; = "persist.vendor.ss.alivetimer"

.field private static final SYS_PROP_DIGEST_ID:Ljava/lang/String; = "persist.vendor.ss.digest.id"

.field private static final SYS_PROP_DIGEST_PWD:Ljava/lang/String; = "persist.vendor.ss.digest.pwd"

.field private static final SYS_PROP_MEDIA_TYPE:Ljava/lang/String; = "persist.vendor.ss.mediatype"

.field private static final SYS_PROP_REQUEST_DATA_TIMER:Ljava/lang/String; = "persist.vendor.ss.reqtimer"

.field private static final SYS_PROP_RULEID_CFB:Ljava/lang/String; = "persist.vendor.ss.ruleid.cfb"

.field private static final SYS_PROP_RULEID_CFNL:Ljava/lang/String; = "persist.vendor.ss.ruleid.cfnl"

.field private static final SYS_PROP_RULEID_CFNRC:Ljava/lang/String; = "persist.vendor.ss.ruleid.cfnrc"

.field private static final SYS_PROP_RULEID_CFNRY:Ljava/lang/String; = "persist.vendor.ss.ruleid.cfnry"

.field private static final SYS_PROP_RULEID_CFU:Ljava/lang/String; = "persist.vendor.ss.ruleid.cfu"

.field private static final SYS_PROP_XCAP_PORT:Ljava/lang/String; = "persist.vendor.ss.xcapport"

.field private static final SYS_PROP_XCAP_ROOT:Ljava/lang/String; = "persist.vendor.ss.xcaproot"

.field private static sInstance:Lcom/mediatek/ims/SuppSrvConfig;


# instance fields
.field private mAUID:Ljava/lang/String;

.field private mAppendCountryCode:Z

.field private mAttrNeedQuotationMark:Z

.field private mCacheValidTime:J

.field private mContext:Landroid/content/Context;

.field private mDataCoolDownTimer:I

.field private mDataKeepAliveTimer:I

.field private mDigestId:Ljava/lang/String;

.field private mDigestPwd:Ljava/lang/String;

.field private mDisableEtag:Z

.field private mElementContentType:Ljava/lang/String;

.field private mFillCompleteForwardTo:Z

.field private mFwdNumUseSipUri:Z

.field private mHandleError409:Z

.field private mHttpErrToUnknownHostErr:Z

.field private mHttpProtocolScheme:Z

.field private mMediaTagType:I

.field private mNeedIMSDereg:Z

.field private mNoReplyTimeInsideCFAction:Z

.field private mNotSupportCFNotRegistered:Z

.field private mNotSupportXcap:Z

.field private mPhoneContext:Ljava/lang/String;

.field private mPort:I

.field private mPutWholeCLIR:Z

.field private mQueryWholeSimServ:Z

.field private mRequestDataTimer:I

.field private mRuleId:Ljava/util/Map;

.field private mSaveWholeNode:Z

.field private mSetCFNRcWithCFNL:Z

.field private mSupportMediaTag:Z

.field private mSupportPutCfRoot:Z

.field private mSupportPutNonUriNumber:Z

.field private mTimeSlot:Z

.field private mUseInternetTypeApn:Z

.field private mUseXCAPTypeApn:Z

.field private mXcapNsPrefixSS:Z

.field private mXcapRoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/SuppSrvConfig;->SENLOG:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/SuppSrvConfig;->sInstance:Lcom/mediatek/ims/SuppSrvConfig;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNotSupportXcap:Z

    .line 139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHttpProtocolScheme:Z

    .line 140
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHandleError409:Z

    .line 141
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mFillCompleteForwardTo:Z

    .line 142
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mXcapNsPrefixSS:Z

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNeedIMSDereg:Z

    .line 144
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAppendCountryCode:Z

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportMediaTag:Z

    .line 146
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPutWholeCLIR:Z

    .line 147
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mQueryWholeSimServ:Z

    .line 148
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDisableEtag:Z

    .line 149
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHttpErrToUnknownHostErr:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mUseXCAPTypeApn:Z

    .line 151
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mUseInternetTypeApn:Z

    .line 152
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNoReplyTimeInsideCFAction:Z

    .line 153
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mTimeSlot:Z

    .line 154
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSaveWholeNode:Z

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSetCFNRcWithCFNL:Z

    .line 156
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNotSupportCFNotRegistered:Z

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportPutCfRoot:Z

    .line 158
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAttrNeedQuotationMark:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mFwdNumUseSipUri:Z

    .line 160
    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportPutNonUriNumber:Z

    .line 162
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mElementContentType:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAUID:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mXcapRoot:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    .line 166
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDigestId:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDigestPwd:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPhoneContext:Ljava/lang/String;

    .line 170
    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPort:I

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mMediaTagType:I

    .line 172
    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDataKeepAliveTimer:I

    .line 173
    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRequestDataTimer:I

    .line 174
    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDataCoolDownTimer:I

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mCacheValidTime:J

    .line 315
    iput-object p1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    .line 316
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 319
    sget-object v0, Lcom/mediatek/ims/SuppSrvConfig;->sInstance:Lcom/mediatek/ims/SuppSrvConfig;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/mediatek/ims/SuppSrvConfig;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/SuppSrvConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/ims/SuppSrvConfig;->sInstance:Lcom/mediatek/ims/SuppSrvConfig;

    .line 323
    :cond_0
    sget-object v0, Lcom/mediatek/ims/SuppSrvConfig;->sInstance:Lcom/mediatek/ims/SuppSrvConfig;

    return-object v0
.end method

.method private getMccMnc(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 560
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSysPropForBool(I)I
    .locals 6
    .param p1, "idx"    # I

    .line 474
    const/4 v0, -0x1

    .line 475
    .local v0, "r":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    .line 476
    const-string v1, "persist.vendor.ss.boolconfig"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 477
    .local v1, "which":I
    if-lez v1, :cond_2

    const/4 v3, 0x1

    shl-int v4, v3, p1

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 478
    const-string v4, "persist.vendor.ss.boolvalue"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 479
    .local v4, "value":I
    shl-int v5, v3, p1

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSysPropForBool: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propBoolIdxToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    if-ne v0, v3, :cond_1

    const-string v3, "TRUE"

    goto :goto_0

    :cond_1
    const-string v3, "FALSE"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    const-string v3, "SuppSrvConfig"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v1    # "which":I
    .end local v4    # "value":I
    :cond_2
    return v0
.end method

.method private getSysPropForInteger(I)I
    .locals 3
    .param p1, "idx"    # I

    .line 522
    const/4 v0, -0x1

    .line 523
    .local v0, "r":I
    const/4 v1, -0x1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    const-string v2, "persist.vendor.ss.cdtimer"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 538
    goto :goto_0

    .line 534
    :cond_1
    const-string v2, "persist.vendor.ss.reqtimer"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 535
    goto :goto_0

    .line 531
    :cond_2
    const-string v2, "persist.vendor.ss.alivetimer"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 532
    goto :goto_0

    .line 528
    :cond_3
    const-string v2, "persist.vendor.ss.mediatype"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 529
    goto :goto_0

    .line 525
    :cond_4
    const-string v2, "persist.vendor.ss.xcapport"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 526
    nop

    .line 542
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSysPropForInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propIntIdxToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuppSrvConfig"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return v0
.end method

.method private getSysPropForLong(I)J
    .locals 5
    .param p1, "idx"    # I

    .line 547
    const-wide/16 v0, -0x1

    .line 548
    .local v0, "r":J
    if-eqz p1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    const-wide/16 v2, -0x1

    const-string v4, "persist.vendor.ss.cachetime"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 551
    nop

    .line 555
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysPropForInteger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propLongIdxToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuppSrvConfig"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-wide v0
.end method

.method private getSysPropForString(I)Ljava/lang/String;
    .locals 3
    .param p1, "idx"    # I

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "r":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 512
    :pswitch_0
    const-string v1, "persist.vendor.ss.ruleid.cfnl"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    goto :goto_0

    .line 509
    :pswitch_1
    const-string v1, "persist.vendor.ss.ruleid.cfnrc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    goto :goto_0

    .line 506
    :pswitch_2
    const-string v1, "persist.vendor.ss.ruleid.cfnry"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    goto :goto_0

    .line 503
    :pswitch_3
    const-string v1, "persist.vendor.ss.ruleid.cfb"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    goto :goto_0

    .line 500
    :pswitch_4
    const-string v1, "persist.vendor.ss.ruleid.cfu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    goto :goto_0

    .line 497
    :pswitch_5
    const-string v1, "persist.vendor.ss.xcaproot"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    goto :goto_0

    .line 494
    :pswitch_6
    const-string v1, "persist.vendor.ss.auid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    goto :goto_0

    .line 491
    :pswitch_7
    const-string v1, "persist.vendor.ss.contenttype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    nop

    .line 517
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSysPropForString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propStrIdxToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuppSrvConfig"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAllPara()V
    .locals 10

    .line 332
    const/4 v0, 0x0

    const v1, 0x7f02000b

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNotSupportXcap:Z

    .line 334
    const/4 v1, 0x1

    const v2, 0x7f020016

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHttpProtocolScheme:Z

    .line 336
    const/4 v2, 0x2

    const v3, 0x7f020005

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHandleError409:Z

    .line 338
    const/4 v3, 0x3

    const v4, 0x7f020003

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/ims/SuppSrvConfig;->mFillCompleteForwardTo:Z

    .line 340
    const/4 v4, 0x4

    const v5, 0x7f020017

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mXcapNsPrefixSS:Z

    .line 342
    const/4 v5, 0x5

    const v6, 0x7f020007

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNeedIMSDereg:Z

    .line 344
    const/4 v5, 0x6

    const/high16 v6, 0x7f020000

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAppendCountryCode:Z

    .line 346
    const/4 v5, 0x7

    const v6, 0x7f020008

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportMediaTag:Z

    .line 348
    const/16 v5, 0x8

    const v6, 0x7f02000c

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPutWholeCLIR:Z

    .line 350
    const/16 v6, 0x9

    const v7, 0x7f02000d

    invoke-direct {p0, v6, v7}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/ims/SuppSrvConfig;->mQueryWholeSimServ:Z

    .line 352
    const/16 v7, 0xa

    const v8, 0x7f020002

    invoke-direct {p0, v7, v8}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDisableEtag:Z

    .line 354
    const/16 v8, 0xb

    const v9, 0x7f020006

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHttpErrToUnknownHostErr:Z

    .line 356
    const/16 v8, 0xc

    const v9, 0x7f020015

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mUseXCAPTypeApn:Z

    .line 358
    const/16 v8, 0xd

    const v9, 0x7f020014

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mUseInternetTypeApn:Z

    .line 360
    const/16 v8, 0xe

    const v9, 0x7f020009

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNoReplyTimeInsideCFAction:Z

    .line 362
    const/16 v8, 0xf

    const v9, 0x7f020013

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mTimeSlot:Z

    .line 364
    const/16 v8, 0x10

    const v9, 0x7f02000e

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSaveWholeNode:Z

    .line 366
    const/16 v8, 0x11

    const v9, 0x7f02000f

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSetCFNRcWithCFNL:Z

    .line 368
    const/16 v8, 0x12

    const v9, 0x7f02000a

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNotSupportCFNotRegistered:Z

    .line 370
    const/16 v8, 0x13

    const v9, 0x7f020011

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportPutCfRoot:Z

    .line 372
    const/16 v8, 0x14

    const v9, 0x7f020001

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAttrNeedQuotationMark:Z

    .line 374
    const/16 v8, 0x15

    const v9, 0x7f020004

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mFwdNumUseSipUri:Z

    .line 376
    const/16 v8, 0x16

    const v9, 0x7f020010

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    const-string v9, "persist.vendor.mtk.xcap.rawurl"

    if-eqz v8, :cond_0

    .line 377
    const-string v8, "true"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_0
    const-string v8, "false"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_0
    const/16 v8, 0x17

    const v9, 0x7f020012

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/SuppSrvConfig;->initParaBool(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportPutNonUriNumber:Z

    .line 383
    const v8, 0x7f090004

    invoke-direct {p0, v0, v8}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mElementContentType:Ljava/lang/String;

    .line 385
    const/high16 v8, 0x7f090000

    invoke-direct {p0, v1, v8}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAUID:Ljava/lang/String;

    .line 387
    const v8, 0x7f09000b

    invoke-direct {p0, v2, v8}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/ims/SuppSrvConfig;->mXcapRoot:Ljava/lang/String;

    .line 389
    invoke-direct {p0}, Lcom/mediatek/ims/SuppSrvConfig;->initRuleId()V

    .line 390
    const v8, 0x7f090002

    invoke-direct {p0, v5, v8}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDigestId:Ljava/lang/String;

    .line 392
    const v5, 0x7f090003

    invoke-direct {p0, v6, v5}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDigestPwd:Ljava/lang/String;

    .line 394
    const v5, 0x7f090005

    invoke-direct {p0, v7, v5}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPhoneContext:Ljava/lang/String;

    .line 397
    const v5, 0x7f070004

    invoke-direct {p0, v0, v5}, Lcom/mediatek/ims/SuppSrvConfig;->initParaInteger(II)I

    move-result v5

    iput v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPort:I

    .line 399
    const v5, 0x7f070002

    invoke-direct {p0, v1, v5}, Lcom/mediatek/ims/SuppSrvConfig;->initParaInteger(II)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mMediaTagType:I

    .line 401
    const v1, 0x7f070001

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/SuppSrvConfig;->initParaInteger(II)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDataKeepAliveTimer:I

    .line 403
    const v1, 0x7f070003

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/SuppSrvConfig;->initParaInteger(II)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRequestDataTimer:I

    .line 405
    const/high16 v1, 0x7f070000

    invoke-direct {p0, v4, v1}, Lcom/mediatek/ims/SuppSrvConfig;->initParaInteger(II)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDataCoolDownTimer:I

    .line 408
    const v1, 0x7f090001

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/SuppSrvConfig;->initParaLong(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mCacheValidTime:J

    .line 410
    return-void
.end method

.method private initParaBool(II)Z
    .locals 4
    .param p1, "idx"    # I
    .param p2, "res"    # I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "r":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->getSysPropForBool(I)I

    move-result v1

    .line 415
    .local v1, "prop":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 416
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    goto :goto_1

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 420
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initParaBool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propBoolIdxToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuppSrvConfig"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v0
.end method

.method private initParaInteger(II)I
    .locals 3
    .param p1, "idx"    # I
    .param p2, "res"    # I

    .line 434
    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->getSysPropForInteger(I)I

    move-result v0

    .line 435
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 438
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParaInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propIntIdxToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuppSrvConfig"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v0
.end method

.method private initParaLong(II)J
    .locals 4
    .param p1, "idx"    # I
    .param p2, "res"    # I

    .line 443
    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->getSysPropForLong(I)J

    move-result-wide v0

    .line 444
    .local v0, "r":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "longString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 448
    .end local v2    # "longString":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initParaLong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propLongIdxToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuppSrvConfig"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-wide v0
.end method

.method private initParaString(II)Ljava/lang/String;
    .locals 3
    .param p1, "idx"    # I
    .param p2, "res"    # I

    .line 425
    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->getSysPropForString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "r":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParaString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->propStrIdxToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuppSrvConfig"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v0
.end method

.method private initRuleId()V
    .locals 7

    .line 608
    const/4 v0, 0x3

    const v1, 0x7f09000a

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "cfu":Ljava/lang/String;
    const/4 v1, 0x4

    const v2, 0x7f090006

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "cfb":Ljava/lang/String;
    const/4 v2, 0x5

    const v3, 0x7f090009

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "cfnry":Ljava/lang/String;
    const/4 v3, 0x6

    const v4, 0x7f090008

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "cfnrc":Ljava/lang/String;
    const/4 v4, 0x7

    const v5, 0x7f090007

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/SuppSrvConfig;->initParaString(II)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "cfnl":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    .line 614
    const-string v6, "CFU"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    const-string v6, "CFB"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    const-string v6, "CFNRy"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    const-string v6, "CFNRc"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v5, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    const-string v6, "CFNL"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-void
.end method

.method private propBoolIdxToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .line 208
    packed-switch p1, :pswitch_data_0

    .line 254
    :pswitch_0
    const-string v0, "NOT_FOUND"

    return-object v0

    .line 252
    :pswitch_1
    const-string v0, "PROP_BOOL_IDX_SUPPORT_NON_URI_NUMBER"

    return-object v0

    .line 250
    :pswitch_2
    const-string v0, "PROP_BOOL_IDX_FWD_NUM_USE_SIP_URI"

    return-object v0

    .line 248
    :pswitch_3
    const-string v0, "PROP_BOOL_IDX_ATTR_NEED_QUAOTATION_MARK"

    return-object v0

    .line 246
    :pswitch_4
    const-string v0, "PROP_BOOL_IDX_NOT_SUPPORT_CFNL"

    return-object v0

    .line 244
    :pswitch_5
    const-string v0, "PROP_BOOL_IDX_SET_CFNRC_WITH_CFNL"

    return-object v0

    .line 242
    :pswitch_6
    const-string v0, "PROP_BOOL_IDX_SAVE_WHOLE_NODE"

    return-object v0

    .line 240
    :pswitch_7
    const-string v0, "PROP_BOOL_IDX_SUPPORT_TIME_SLOT"

    return-object v0

    .line 238
    :pswitch_8
    const-string v0, "PROP_BOOL_IDX_NOREPLYTIMER_INSIDE_CFACTION"

    return-object v0

    .line 236
    :pswitch_9
    const-string v0, "PROP_BOOL_IDX_INTERNET_APN"

    return-object v0

    .line 234
    :pswitch_a
    const-string v0, "PROP_BOOL_IDX_XCAP_APN"

    return-object v0

    .line 232
    :pswitch_b
    const-string v0, "PROP_BOOL_IDX_HTTP_ERR_TO_UNKNOWN_HOST"

    return-object v0

    .line 230
    :pswitch_c
    const-string v0, "PROP_BOOL_IDX_DISABLE_ETAG"

    return-object v0

    .line 228
    :pswitch_d
    const-string v0, "PROP_BOOL_IDX_QUERY_WHOLE_SIMSERV"

    return-object v0

    .line 226
    :pswitch_e
    const-string v0, "PROP_BOOL_IDX_PUT_WHOLE_CLIR"

    return-object v0

    .line 224
    :pswitch_f
    const-string v0, "PROP_BOOL_IDX_MEDIA_TAG"

    return-object v0

    .line 222
    :pswitch_10
    const-string v0, "PROP_BOOL_IDX_APPEND_COUNTRY_CODE"

    return-object v0

    .line 220
    :pswitch_11
    const-string v0, "PROP_BOOL_IDX_IMS_DEREG"

    return-object v0

    .line 218
    :pswitch_12
    const-string v0, "PROP_BOOL_IDX_XCAP_PREFIX_SS"

    return-object v0

    .line 216
    :pswitch_13
    const-string v0, "PROP_BOOL_IDX_FILL_FORWARD_TO"

    return-object v0

    .line 214
    :pswitch_14
    const-string v0, "PROP_BOOL_IDX_HANDLE_409"

    return-object v0

    .line 212
    :pswitch_15
    const-string v0, "PROP_BOOL_IDX_USE_HTTP_PROTOCOL"

    return-object v0

    .line 210
    :pswitch_16
    const-string v0, "PROP_BOOL_IDX_NOT_SUPPORT_XCAP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private propIntIdxToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .line 289
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 301
    const-string v0, "NOT_FOUND"

    return-object v0

    .line 299
    :cond_0
    const-string v0, "PROP_INT_IDX_DATA_COOL_DOWN_TIMER"

    return-object v0

    .line 297
    :cond_1
    const-string v0, "PROP_INT_IDX_REQUEST_DATA_TIMER"

    return-object v0

    .line 295
    :cond_2
    const-string v0, "PROP_INT_IDX_DATA_KEEP_ALIVE_TIMER"

    return-object v0

    .line 293
    :cond_3
    const-string v0, "PROP_INT_IDX_MEDIA_TYPE"

    return-object v0

    .line 291
    :cond_4
    const-string v0, "PROP_INT_IDX_XCAP_PORT"

    return-object v0
.end method

.method private propLongIdxToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .line 306
    if-eqz p1, :cond_0

    .line 310
    const-string v0, "NOT_FOUND"

    return-object v0

    .line 308
    :cond_0
    const-string v0, "PROP_LONG_IDX_CACHE_VALID_TIME"

    return-object v0
.end method

.method private propStrIdxToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 284
    const-string v0, "NOT_FOUND"

    return-object v0

    .line 281
    :pswitch_0
    const-string v0, "PROP_STR_IDX_PHONE_CONTEXT"

    return-object v0

    .line 279
    :pswitch_1
    const-string v0, "PROP_STR_IDX_DIGEST_PWD"

    return-object v0

    .line 277
    :pswitch_2
    const-string v0, "PROP_STR_IDX_DIGEST_ID"

    return-object v0

    .line 275
    :pswitch_3
    const-string v0, "PROP_STR_IDX_RULEID_CFNL"

    return-object v0

    .line 273
    :pswitch_4
    const-string v0, "PROP_STR_IDX_RULEID_CFNRC"

    return-object v0

    .line 271
    :pswitch_5
    const-string v0, "PROP_STR_IDX_RULEID_CFNRY"

    return-object v0

    .line 269
    :pswitch_6
    const-string v0, "PROP_STR_IDX_RULEID_CFB"

    return-object v0

    .line 267
    :pswitch_7
    const-string v0, "PROP_STR_IDX_RULEID_CFU"

    return-object v0

    .line 265
    :pswitch_8
    const-string v0, "PROP_STR_IDX_XCAP_ROOT"

    return-object v0

    .line 263
    :pswitch_9
    const-string v0, "PROP_STR_IDX_AUID"

    return-object v0

    .line 261
    :pswitch_a
    const-string v0, "PROP_STR_IDX_ELEMENT_CONTENT_TYPE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateResourceBySim(Ljava/lang/String;)V
    .locals 6
    .param p1, "mncmcc"    # Ljava/lang/String;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateResourceBySim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppSrvConfig"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 456
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 457
    .local v2, "mcc":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 458
    .local v3, "mnc":I
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 459
    if-nez v3, :cond_0

    const v4, 0xffff

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 464
    sget-boolean v4, Lcom/mediatek/ims/SuppSrvConfig;->SENLOG:Z

    if-nez v4, :cond_1

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config mcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/ims/SuppSrvConfig;->mContext:Landroid/content/Context;

    .line 469
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 468
    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 471
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getAUID()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheValidTime()J
    .locals 2

    .line 679
    iget-wide v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mCacheValidTime:J

    return-wide v0
.end method

.method public getDataCoolDownTimer()I
    .locals 1

    .line 675
    iget v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDataCoolDownTimer:I

    return v0
.end method

.method public getDataKeepAliveTimer()I
    .locals 1

    .line 667
    iget v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDataKeepAliveTimer:I

    return v0
.end method

.method public getDigestId()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDigestId:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestPwd()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDigestPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getElementContentType()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mElementContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTagType()I
    .locals 1

    .line 639
    iget v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mMediaTagType:I

    return v0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPhoneContext:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPort:I

    return v0
.end method

.method public getRequestDataTimer()I
    .locals 1

    .line 671
    iget v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRequestDataTimer:I

    return v0
.end method

.method public getRuleId()Ljava/util/Map;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mRuleId:Ljava/util/Map;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public isAppendCountryCode()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAppendCountryCode:Z

    return v0
.end method

.method public isAttrNeedQuotationMark()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mAttrNeedQuotationMark:Z

    return v0
.end method

.method public isDisableEtag()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mDisableEtag:Z

    return v0
.end method

.method public isFillCompleteForwardTo()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mFillCompleteForwardTo:Z

    return v0
.end method

.method public isFwdNumUseSipUri()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mFwdNumUseSipUri:Z

    return v0
.end method

.method public isHandleError409()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHandleError409:Z

    return v0
.end method

.method public isHttpErrToUnknownHostErr()Z
    .locals 1

    .line 683
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHttpErrToUnknownHostErr:Z

    return v0
.end method

.method public isNeedIMSDereg()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNeedIMSDereg:Z

    return v0
.end method

.method public isNoReplyTimeInsideCFAction()Z
    .locals 1

    .line 695
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNoReplyTimeInsideCFAction:Z

    return v0
.end method

.method public isNotSupportCFNotRegistered()Z
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNotSupportCFNotRegistered:Z

    return v0
.end method

.method public isNotSupportXcap()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mNotSupportXcap:Z

    return v0
.end method

.method public isPutWholeCLIR()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mPutWholeCLIR:Z

    return v0
.end method

.method public isQueryWholeSimServ()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mQueryWholeSimServ:Z

    return v0
.end method

.method public isSaveWholeNode()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSaveWholeNode:Z

    return v0
.end method

.method public isSetCFNRcWithCFNL()Z
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSetCFNRcWithCFNL:Z

    return v0
.end method

.method public isSupportMediaTag()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportMediaTag:Z

    return v0
.end method

.method public isSupportPutCfRoot()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportPutCfRoot:Z

    return v0
.end method

.method public isSupportPutNonUriNumber()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mSupportPutNonUriNumber:Z

    return v0
.end method

.method public isSupportTimeSlot()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mTimeSlot:Z

    return v0
.end method

.method public isUseHttpProtocolScheme()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mHttpProtocolScheme:Z

    return v0
.end method

.method public isUseInternetTypeApn()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mUseInternetTypeApn:Z

    return v0
.end method

.method public isUseXCAPTypeApn()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mUseXCAPTypeApn:Z

    return v0
.end method

.method public isXcapNsPrefixSS()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/mediatek/ims/SuppSrvConfig;->mXcapNsPrefixSS:Z

    return v0
.end method

.method public update(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 327
    invoke-direct {p0, p1}, Lcom/mediatek/ims/SuppSrvConfig;->getMccMnc(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/SuppSrvConfig;->updateResourceBySim(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/mediatek/ims/SuppSrvConfig;->initAllPara()V

    .line 329
    return-void
.end method
