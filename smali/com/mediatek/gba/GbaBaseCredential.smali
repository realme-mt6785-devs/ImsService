.class public abstract Lcom/mediatek/gba/GbaBaseCredential;
.super Ljava/lang/Object;
.source "GbaBaseCredential.java"


# static fields
.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field protected static final HEX_ARRAY:[C

.field static final NAFFQDN_PREFER:Ljava/lang/String; = "original.naf.prefer"

.field private static final TAG:Ljava/lang/String; = "GbaBaseCredential"

.field protected static sService:Lcom/mediatek/gba/IGbaService;


# instance fields
.field protected mIsTlsEnabled:Z

.field protected mNafAddress:Ljava/lang/String;

.field protected mNetwork:Landroid/net/Network;

.field protected mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 23
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 25
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->HEX_ARRAY:[C

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p3, p0, Lcom/mediatek/gba/GbaBaseCredential;->mSubId:I

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 54
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/gba/GbaBaseCredential;->mIsTlsEnabled:Z

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    .line 57
    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 58
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaBaseCredential;->mIsTlsEnabled:Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 61
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/mediatek/gba/GbaBaseCredential;->mIsTlsEnabled:Z

    .line 65
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nafAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaBaseCredential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method public getNafSessionKey()Lcom/mediatek/gba/NafSessionKey;
    .locals 13

    .line 107
    const-string v0, "gba.auth"

    const-string v1, "GbaBaseCredential"

    const/4 v2, 0x0

    .line 110
    .local v2, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GbaService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 112
    .local v4, "b":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 113
    const-string v5, "debug"

    const-string v6, "The binder is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v3

    .line 117
    :cond_0
    invoke-static {v4}, Lcom/mediatek/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;

    move-result-object v5

    sput-object v5, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v4    # "b":Landroid/os/IBinder;
    goto :goto_0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 123
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_0
    :try_start_1
    sget-object v4, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 125
    .local v4, "uaId":[B
    iget-boolean v5, p0, Lcom/mediatek/gba/GbaBaseCredential;->mIsTlsEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v5, :cond_2

    .line 126
    :try_start_2
    const-string v5, "gba.ciper.suite"

    invoke-static {v5, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "gbaStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 129
    invoke-static {v5}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v9

    .line 131
    .local v9, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v9, :cond_1

    .line 132
    invoke-virtual {v9}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v10

    .line 133
    .local v10, "cipherSuiteCode":[B
    const/4 v11, 0x3

    aget-byte v12, v10, v7

    aput-byte v12, v4, v11

    .line 134
    const/4 v11, 0x4

    aget-byte v12, v10, v6

    aput-byte v12, v4, v11

    .line 137
    .end local v5    # "gbaStr":Ljava/lang/String;
    .end local v9    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    .end local v10    # "cipherSuiteCode":[B
    :cond_1
    goto :goto_1

    .line 138
    :cond_2
    sget-object v5, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    move-object v4, v5

    .line 141
    :goto_1
    iget-object v5, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_3

    .line 142
    sget-object v5, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    iget-object v9, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNetwork:Landroid/net/Network;

    invoke-interface {v5, v9}, Lcom/mediatek/gba/IGbaService;->setNetwork(Landroid/net/Network;)V

    .line 145
    :cond_3
    const-string v5, "digest.realm"

    invoke-static {v5, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "realm":Ljava/lang/String;
    const-string v9, "original.naf.prefer"

    invoke-static {v9, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "originalNafPrefer":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "realm:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NAFFQDN_PREFER:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 150
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 151
    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "segments":[Ljava/lang/String;
    aget-object v10, v3, v7

    aget-object v7, v3, v7

    const-string v11, "@"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    .line 154
    .end local v3    # "segments":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NAF FQDN:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "forceRun":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gba.auth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v6, "401"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 162
    const/4 v3, 0x1

    .line 163
    invoke-static {v0, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceRun: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v6, -0x1

    iget v7, p0, Lcom/mediatek/gba/GbaBaseCredential;->mSubId:I

    if-ne v6, v7, :cond_6

    .line 167
    sget-object v6, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    iget-object v7, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    invoke-interface {v6, v7, v4, v3}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v6

    move-object v2, v6

    goto :goto_2

    .line 170
    :cond_6
    sget-object v6, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    iget-object v7, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNafAddress:Ljava/lang/String;

    iget v8, p0, Lcom/mediatek/gba/GbaBaseCredential;->mSubId:I

    invoke-interface {v6, v7, v4, v3, v8}, Lcom/mediatek/gba/IGbaService;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v6

    move-object v2, v6

    .line 174
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 175
    invoke-virtual {v2}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/IllegalStateException;

    if-eqz v6, :cond_8

    .line 176
    invoke-virtual {v2}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v6

    check-cast v6, Ljava/lang/IllegalStateException;

    .line 177
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "msg":Ljava/lang/String;
    const-string v7, "HTTP 403 Forbidden"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 180
    const-string v7, "GBA hit 403"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v1, "403"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 182
    :cond_7
    const-string v0, "HTTP 400 Bad Request"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    const-string v0, "GBA hit 400"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    .end local v3    # "forceRun":Z
    .end local v4    # "uaId":[B
    .end local v5    # "realm":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v9    # "originalNafPrefer":Ljava/lang/String;
    :cond_8
    :goto_3
    goto :goto_4

    .line 156
    .restart local v4    # "uaId":[B
    .restart local v5    # "realm":Ljava/lang/String;
    .restart local v9    # "originalNafPrefer":Ljava/lang/String;
    :cond_9
    return-object v3

    .line 186
    .end local v4    # "uaId":[B
    .end local v5    # "realm":Ljava/lang/String;
    .end local v9    # "originalNafPrefer":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_4
    return-object v2
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBA dedicated network netid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaBaseCredential"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p1, p0, Lcom/mediatek/gba/GbaBaseCredential;->mNetwork:Landroid/net/Network;

    .line 99
    :cond_0
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 85
    iput p1, p0, Lcom/mediatek/gba/GbaBaseCredential;->mSubId:I

    .line 86
    return-void
.end method

.method public setTlsEnabled(Z)V
    .locals 0
    .param p1, "tlsEnabled"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/mediatek/gba/GbaBaseCredential;->mIsTlsEnabled:Z

    .line 76
    return-void
.end method
