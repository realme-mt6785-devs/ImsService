.class public final Lcom/mediatek/gba/GbaManager;
.super Ljava/lang/Object;
.source "GbaManager.java"


# static fields
.field public static final DBGLOG:Z

.field public static final DEFAULT_UA_SECURITY_PROTOCOL_ID0:[B

.field public static final DEFAULT_UA_SECURITY_PROTOCOL_ID1:[B

.field public static final DEFAULT_UA_SECURITY_PROTOCOL_ID2:[B

.field public static final DEFAULT_UA_SECURITY_PROTOCOL_ID3:[B

.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field public static final IMS_GBA_KS_EXT_NAF:Ljava/lang/String; = "Ks_ext_NAF"

.field public static final IMS_GBA_KS_NAF:Ljava/lang/String; = "Ks_NAF"

.field public static final IMS_GBA_ME:I = 0x1

.field public static final IMS_GBA_NONE:I = 0x0

.field public static final IMS_GBA_U:I = 0x2

.field public static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field public static final MTK_IMS_SERVICE:Ljava/lang/String; = "mtkIms"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field public static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "GbaManager"

.field private static mGbaManager:Lcom/mediatek/gba/GbaManager;

.field private static mNetId:I

.field private static mService:Lcom/mediatek/gba/IGbaService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gba/GbaManager;->SENLOG:Z

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/mediatek/gba/GbaManager;->DBGLOG:Z

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    .line 43
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID0:[B

    .line 45
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID1:[B

    .line 47
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID2:[B

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID3:[B

    .line 52
    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 54
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/mediatek/gba/GbaManager;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public static getDefaultGbaManager(Landroid/content/Context;)Lcom/mediatek/gba/GbaManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    if-eqz p0, :cond_3

    .line 65
    const-class v0, Lcom/mediatek/gba/GbaManager;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    if-nez v1, :cond_2

    .line 67
    invoke-static {}, Lcom/mediatek/gba/GbaManager;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const-string v1, "GbaService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 70
    .local v1, "b":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 71
    const-string v2, "debug"

    const-string v3, "The binder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 75
    :cond_0
    invoke-static {v1}, Lcom/mediatek/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    .line 78
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1
    new-instance v1, Lcom/mediatek/gba/GbaManager;

    invoke-direct {v1, p0}, Lcom/mediatek/gba/GbaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    .line 81
    :cond_2
    sget-object v1, Lcom/mediatek/gba/GbaManager;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runNativeGba(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .locals 12
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I

    .line 205
    const/4 v1, 0x0

    .line 208
    .local v1, "nafkey":Lcom/mediatek/gba/NafSessionKey;
    const-string v0, "mtkIms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 209
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    const-string v4, "GbaManager"

    if-nez v2, :cond_0

    .line 210
    const-string v0, "Service is unavailable binder is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v3

    .line 214
    :cond_0
    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v11

    .line 215
    .local v11, "mMtkImsService":Lcom/mediatek/ims/internal/IMtkImsService;
    if-nez v11, :cond_1

    .line 216
    const-string v0, "Service is unavailable mImsService is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v3

    .line 221
    :cond_1
    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    :try_start_0
    invoke-interface/range {v5 .. v10}, Lcom/mediatek/ims/internal/IMtkImsService;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "nafkey":Lcom/mediatek/gba/NafSessionKey;
    .local v0, "nafkey":Lcom/mediatek/gba/NafSessionKey;
    nop

    .line 228
    return-object v0

    .line 223
    .end local v0    # "nafkey":Lcom/mediatek/gba/NafSessionKey;
    .restart local v1    # "nafkey":Lcom/mediatek/gba/NafSessionKey;
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "RemotaException mImsService.runGbaAuthentication()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object v3
.end method

.method private static supportMdAutoSetupIms()Z
    .locals 3

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 323
    :cond_0
    return v0
.end method


# virtual methods
.method public getCachedKey(Ljava/lang/String;[BI)Lcom/mediatek/gba/NafSessionKey;
    .locals 3
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "subId"    # I

    .line 292
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/gba/IGbaService;->getCachedKey(Ljava/lang/String;[BI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GbaManager"

    const-string v2, "remote expcetion for getCachedKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGbaSupported()I
    .locals 2

    .line 96
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0}, Lcom/mediatek/gba/IGbaService;->getGbaSupported()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getGbaSupported(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 111
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0}, Lcom/mediatek/gba/IGbaService;->getGbaSupported()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getNafSecureProtocolId(ZLjava/lang/String;)[B
    .locals 10
    .param p1, "isTls"    # Z
    .param p2, "cipher"    # Ljava/lang/String;

    .line 241
    sget-boolean v0, Lcom/mediatek/gba/GbaManager;->DBGLOG:Z

    const-string v1, "GbaManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNafSecureProtocolId isTls = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cipher = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 244
    .local v0, "uaId":[B
    if-eqz p1, :cond_4

    .line 245
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 246
    invoke-static {p2}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v2

    .line 247
    .local v2, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v2, :cond_3

    .line 248
    sget-boolean v3, Lcom/mediatek/gba/GbaManager;->DBGLOG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuite name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/gba/GbaCipherSuite;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v3

    .line 250
    .local v3, "cipherSuiteCode":[B
    sget-boolean v4, Lcom/mediatek/gba/GbaManager;->DBGLOG:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uaId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v5, [Ljava/lang/Object;

    aget-byte v8, v3, v6

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "0x%2x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v5, [Ljava/lang/Object;

    aget-byte v9, v3, v5

    .line 252
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    const/4 v1, 0x3

    aget-byte v4, v3, v6

    aput-byte v4, v0, v1

    .line 255
    const/4 v1, 0x4

    aget-byte v4, v3, v5

    aput-byte v4, v0, v1

    .line 257
    .end local v2    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    .end local v3    # "cipherSuiteCode":[B
    :cond_3
    goto :goto_0

    .line 259
    :cond_4
    sget-boolean v2, Lcom/mediatek/gba/GbaManager;->DBGLOG:Z

    if-eqz v2, :cond_5

    const-string v2, "Default cipherSuite"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_5
    sget-object v0, Lcom/mediatek/gba/GbaManager;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 263
    :cond_6
    :goto_0
    return-object v0
.end method

.method public isGbaKeyExpired(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B

    .line 127
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/gba/IGbaService;->isGbaKeyExpired(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public isGbaKeyExpired(Ljava/lang/String;[BI)Z
    .locals 2
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .param p3, "subId"    # I

    .line 144
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/gba/IGbaService;->isGbaKeyExpiredForSubscriber(Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;
    .locals 7
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z

    .line 163
    :try_start_0
    invoke-static {}, Lcom/mediatek/gba/GbaManager;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 165
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    .line 167
    .local v6, "phoneId":I
    sget v5, Lcom/mediatek/gba/GbaManager;->mNetId:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/gba/GbaManager;->runNativeGba(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0    # "subId":I
    .end local v6    # "phoneId":I
    :cond_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;
    .locals 7
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "subId"    # I

    .line 190
    :try_start_0
    invoke-static {}, Lcom/mediatek/gba/GbaManager;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {p4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    .line 193
    .local v6, "phoneId":I
    sget v5, Lcom/mediatek/gba/GbaManager;->mNetId:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/gba/GbaManager;->runNativeGba(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    return-object v0

    .line 195
    .end local v6    # "phoneId":I
    :cond_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/gba/IGbaService;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 274
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1}, Lcom/mediatek/gba/IGbaService;->setNetwork(Landroid/net/Network;)V

    .line 275
    iget v0, p1, Landroid/net/Network;->netId:I

    sput v0, Lcom/mediatek/gba/GbaManager;->mNetId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GbaManager"

    const-string v2, "remote expcetion for setNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public updateCachedKey(Ljava/lang/String;[BILcom/mediatek/gba/NafSessionKey;)V
    .locals 3
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "subId"    # I
    .param p4, "nafSessionKey"    # Lcom/mediatek/gba/NafSessionKey;

    .line 312
    :try_start_0
    sget-object v0, Lcom/mediatek/gba/GbaManager;->mService:Lcom/mediatek/gba/IGbaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/gba/IGbaService;->updateCachedKey(Ljava/lang/String;[BILcom/mediatek/gba/NafSessionKey;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GbaManager"

    const-string v2, "remote expcetion for updateCachedKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
