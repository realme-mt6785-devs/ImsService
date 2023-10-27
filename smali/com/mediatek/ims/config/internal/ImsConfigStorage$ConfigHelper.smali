.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

.field private mHandler:Landroid/os/Handler;

.field private mInitDone:Z

.field private mOpCode:I

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    .line 967
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 968
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 969
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    .line 970
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .line 971
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mHandler:Landroid/os/Handler;

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z

    .line 975
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    .line 976
    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mHandler:Landroid/os/Handler;

    .line 977
    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 978
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 980
    const/4 v2, 0x0

    .line 982
    .local v2, "opCode":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigSetting(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 983
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse SETTING_ID_OPCODE error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigStorage"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    goto :goto_1

    .line 984
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 985
    .local v0, "e":Lcom/android/ims/ImsException;
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .line 989
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    nop

    .line 990
    :goto_1
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigStringValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfig(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->updateConfig(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfig(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->updateConfig(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    .line 965
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->clear()V

    return-void
.end method

.method private addConfig(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1316
    const-string v0, "ImsConfigStorage"

    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1317
    const/4 v1, 0x0

    .line 1319
    .local v1, "result":Landroid/net/Uri;
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(III)Landroid/content/ContentValues;

    move-result-object v2

    .line 1321
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 1328
    :goto_0
    goto :goto_1

    .line 1326
    :catch_0
    move-exception v3

    .line 1327
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "addConfig int Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1324
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1325
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "addConfig int SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1322
    :catch_2
    move-exception v3

    .line 1323
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "addConfig int IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1329
    :goto_1
    return-object v1
.end method

.method private addConfig(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1334
    const-string v0, "ImsConfigStorage"

    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1335
    const/4 v1, 0x0

    .line 1337
    .local v1, "result":Landroid/net/Uri;
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1339
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 1346
    :goto_0
    goto :goto_1

    .line 1344
    :catch_0
    move-exception v3

    .line 1345
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "addConfig string Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1342
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1343
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "addConfig string SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1340
    :catch_2
    move-exception v3

    .line 1341
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "addConfig string IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1347
    :goto_1
    return-object v1
.end method

.method private addConfigSetting(ILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1075
    const-string v0, "ImsConfigStorage"

    const/4 v1, 0x0

    .line 1076
    .local v1, "result":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1077
    .local v2, "cv":Landroid/content/ContentValues;
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "phone_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "setting_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    .line 1083
    if-eqz v1, :cond_0

    .line 1093
    goto :goto_0

    .line 1084
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addConfigSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "result":Landroid/net/Uri;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .restart local v1    # "result":Landroid/net/Uri;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "id":I
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1092
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "addConfigSetting Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1089
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1090
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "addConfigSetting SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1087
    :catch_2
    move-exception v3

    .line 1088
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "addConfigSetting IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 1094
    :goto_1
    return-void
.end method

.method private clear()V
    .locals 5

    .line 1281
    const-string v0, "ImsConfigStorage"

    const-string v1, "phone_id = ?"

    .line 1282
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1284
    .local v2, "args":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1285
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1286
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1292
    :catch_0
    move-exception v3

    .line 1293
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ConfigHelper.clear Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1290
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1291
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "ConfigHelper.clear SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1288
    :catch_2
    move-exception v3

    .line 1289
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ConfigHelper.clear IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 1295
    :goto_1
    return-void
.end method

.method private enforceConfigId(I)V
    .locals 3
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1510
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    return-void

    .line 1511
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deafult value for config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private enforceDefaultValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "configId"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1503
    const-string v0, "n/a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    return-void

    .line 1504
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deafult value for config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private getConfigCv(III)Landroid/content/ContentValues;
    .locals 3
    .param p1, "configId"    # I
    .param p2, "mimeType"    # I
    .param p3, "value"    # I

    .line 1297
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1298
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mimetype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1301
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1302
    return-object v0
.end method

.method private getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "configId"    # I
    .param p2, "mimeType"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 1306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1307
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mimetype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    return-object v0
.end method

.method private getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1397
    const-string v0, "ImsConfigStorage"

    const-string v1, "phone_id"

    const-string v2, "config_id"

    const-string v3, "mimetype_id"

    const-string v4, "data"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 1402
    .local v7, "projection":[Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {p1, v1, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v1

    .line 1404
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1405
    .local v2, "c":Landroid/database/Cursor;
    const/16 v3, 0x65

    if-eqz v2, :cond_2

    .line 1406
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1407
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1408
    return-object v2

    .line 1409
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Config "

    if-nez v4, :cond_1

    .line 1410
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1411
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shall exist in table: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v4

    .line 1415
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1416
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shall exist once in table: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v4

    .line 1421
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :cond_2
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null cursor with config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in table: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1429
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :catch_0
    move-exception v2

    .line 1430
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getConfigFirstCursor Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1427
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1428
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "getConfigFirstCursor SecurityException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1425
    :catch_2
    move-exception v2

    .line 1426
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "getConfigFirstCursor IllegalArgumentException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 1432
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfigSetting(I)Ljava/lang/String;
    .locals 14
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1119
    const-string v0, " for phone "

    const-string v1, "getConfigSetting "

    const-string v2, "ImsConfigStorage"

    const/4 v3, 0x0

    .line 1120
    .local v3, "c":Landroid/database/Cursor;
    const-string v4, ""

    .line 1121
    .local v4, "result":Ljava/lang/String;
    const-string v5, "phone_id"

    const-string v6, "setting_id"

    const-string v7, "value"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v10

    .line 1126
    .local v10, "projection":[Ljava/lang/String;
    const/16 v5, 0x66

    :try_start_0
    iget-object v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1127
    invoke-static {v6, p1}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1126
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 1130
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    .line 1131
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1132
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1133
    .local v6, "index":I
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 1134
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    .end local v6    # "index":I
    nop

    .line 1149
    if-eqz v3, :cond_1

    .line 1150
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1136
    :cond_0
    :try_start_1
    new-instance v6, Lcom/android/ims/ImsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "result":Ljava/lang/String;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "id":I
    throw v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "id":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1144
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Lcom/android/ims/ImsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found or something wrong with cursor"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "result":Ljava/lang/String;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "id":I
    throw v6

    .line 1142
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "id":I
    :catch_1
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "getConfigSetting SecurityException"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    nop

    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v3, :cond_1

    .line 1150
    goto :goto_0

    .line 1140
    :catch_2
    move-exception v0

    .line 1141
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "getConfigSetting IllegalArgumentException"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1149
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v3, :cond_1

    .line 1150
    goto :goto_0

    .line 1154
    :cond_1
    :goto_1
    return-object v4

    .line 1149
    :goto_2
    if-eqz v3, :cond_2

    .line 1150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_2
    throw v0
.end method

.method private getConfigStringValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1469
    const-string v0, ", but "

    const-string v1, " shall be type "

    const-string v2, "Config "

    const/4 v3, -0x1

    .line 1471
    .local v3, "mimeType":I
    const/4 v4, 0x0

    .line 1472
    .local v4, "c":Landroid/database/Cursor;
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1475
    const/16 v5, 0x65

    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1476
    const-string v7, "data"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1477
    .local v7, "dataIndex":I
    const-string v8, "mimetype_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1478
    .local v8, "mimeTypeIndex":I
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v3, v9

    .line 1480
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceDefaultValue(ILjava/lang/String;)V

    .line 1481
    if-ne v3, v6, :cond_1

    .line 1486
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    .local v0, "result":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1495
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1499
    :cond_0
    return-object v0

    .line 1482
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/ims/ImsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    .end local v7    # "dataIndex":I
    .end local v8    # "mimeTypeIndex":I
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1488
    :catch_0
    move-exception v7

    .line 1489
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Lcom/android/ims/ImsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or something wrong with cursor"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1494
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :goto_0
    if-eqz v4, :cond_2

    .line 1495
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1497
    :cond_2
    throw v0
.end method

.method private getConfigValue(Ljava/lang/String;I)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1436
    const-string v0, ", but "

    const-string v1, " shall be type "

    const-string v2, "Config "

    const/4 v3, -0x1

    .line 1437
    .local v3, "mimeType":I
    const/4 v4, 0x0

    .line 1438
    .local v4, "c":Landroid/database/Cursor;
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1441
    const/16 v5, 0x65

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1442
    const-string v7, "data"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1443
    .local v7, "dataIndex":I
    const-string v8, "mimetype_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1444
    .local v8, "mimeTypeIndex":I
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v3, v9

    .line 1446
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceDefaultValue(ILjava/lang/String;)V

    .line 1447
    if-nez v3, :cond_1

    .line 1452
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    .local v0, "result":I
    if-eqz v4, :cond_0

    .line 1461
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1465
    :cond_0
    return v0

    .line 1448
    .end local v0    # "result":I
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/ims/ImsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1460
    .end local v7    # "dataIndex":I
    .end local v8    # "mimeTypeIndex":I
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v7

    .line 1455
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Lcom/android/ims/ImsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or something wrong with cursor"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1460
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :goto_0
    if-eqz v4, :cond_2

    .line 1461
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1463
    :cond_2
    throw v0
.end method

.method private initConfigSettingStorage(I)V
    .locals 2
    .param p1, "opCode"    # I

    .line 1070
    nop

    .line 1071
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfigSetting(ILjava/lang/String;)V

    .line 1072
    return-void
.end method

.method private initDefaultStorage(I)V
    .locals 13
    .param p1, "opCode"    # I

    .line 1159
    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v0

    .line 1160
    .local v0, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1163
    .local v1, "defSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;>;"
    invoke-static {p1}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->getInstanceByOpCode(I)Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    .line 1164
    invoke-virtual {v2}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->load()Ljava/util/HashMap;

    move-result-object v1

    .line 1165
    const-string v2, "ImsConfigStorage"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1166
    const-string v3, "No default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void

    .line 1170
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1171
    .local v4, "configId":Ljava/lang/Integer;
    const-string v5, "n/a"

    .line 1172
    .local v5, "value":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1173
    .local v6, "unitId":I
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->hasDefaultValue(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1174
    goto :goto_0

    .line 1176
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 1177
    .local v7, "base":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    if-eqz v7, :cond_2

    .line 1178
    iget-object v5, v7, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 1179
    iget v6, v7, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 1181
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    .line 1183
    .local v8, "setting":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    :try_start_0
    iget v9, v8, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "unit_id"

    if-nez v9, :cond_3

    .line 1184
    nop

    .line 1185
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, v8, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1184
    invoke-direct {p0, v9, v11, v12}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(III)Landroid/content/ContentValues;

    move-result-object v9

    .line 1186
    .local v9, "cv":Landroid/content/ContentValues;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    iget-object v10, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1188
    nop

    .end local v9    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    iget v11, v8, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    if-ne v9, v11, :cond_4

    .line 1189
    nop

    .line 1190
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, v8, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    .line 1189
    invoke-direct {p0, v9, v11, v5}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 1191
    .restart local v9    # "cv":Landroid/content/ContentValues;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    iget-object v10, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1200
    .end local v9    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 1201
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "initDefaultStorage Exception"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1198
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 1199
    .local v9, "e":Ljava/lang/SecurityException;
    const-string v10, "initDefaultStorage SecurityException"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 1196
    :catch_2
    move-exception v9

    .line 1197
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "initDefaultStorage IllegalArgumentException"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_1
    nop

    .line 1203
    .end local v4    # "configId":Ljava/lang/Integer;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "unitId":I
    .end local v7    # "base":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    .end local v8    # "setting":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    :goto_2
    goto/16 :goto_0

    .line 1204
    :cond_5
    return-void
.end method

.method private initMasterStorage()V
    .locals 20

    .line 1208
    move-object/from16 v1, p0

    const-string v2, "data"

    const-string v3, "mimetype_id"

    const-string v4, "config_id"

    const-string v5, "phone_id"

    const-string v6, "ImsConfigStorage"

    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v7

    .line 1210
    .local v7, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    return-void

    .line 1210
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Integer;

    .line 1211
    .local v9, "configId":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 1212
    .local v10, "c":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v11, v0

    .line 1213
    .local v11, "cv":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 1214
    .local v12, "isFoundInNvRam":Z
    const/4 v13, 0x1

    .line 1219
    .local v13, "isFoundInAny":Z
    :try_start_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v14, "here"

    const/16 v15, 0x66

    invoke-direct {v0, v14, v15}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v9    # "configId":Ljava/lang/Integer;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "isFoundInNvRam":Z
    .end local v13    # "isFoundInAny":Z
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    throw v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .restart local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v9    # "configId":Ljava/lang/Integer;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "isFoundInNvRam":Z
    .restart local v13    # "isFoundInAny":Z
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 1223
    .local v14, "e":Lcom/android/ims/ImsException;
    :try_start_1
    const-string v0, "tb_default"

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v1, v0, v15}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 1224
    if-eqz v10, :cond_1

    .line 1225
    nop

    .line 1226
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1227
    .local v0, "phoneIdIndex":I
    nop

    .line 1228
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1229
    .local v15, "configIndex":I
    nop

    .line 1230
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    .line 1231
    .local v17, "mimeTypeIndex":I
    nop

    .line 1232
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v18, v16

    .line 1233
    .local v18, "dataIndex":I
    nop

    .line 1234
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v19, v0

    .end local v0    # "phoneIdIndex":I
    .local v19, "phoneIdIndex":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1233
    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1235
    nop

    .line 1236
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1235
    invoke-virtual {v11, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1237
    nop

    .line 1238
    move/from16 v0, v17

    .end local v17    # "mimeTypeIndex":I
    .local v0, "mimeTypeIndex":I
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v17, v0

    .end local v0    # "mimeTypeIndex":I
    .restart local v17    # "mimeTypeIndex":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1237
    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1239
    nop

    .line 1240
    move-object/from16 v16, v7

    move/from16 v0, v18

    .end local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v18    # "dataIndex":I
    .local v0, "dataIndex":I
    .local v16, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :try_start_2
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1239
    invoke-virtual {v11, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v8

    :try_start_3
    const-string v8, "Load default value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for config "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1245
    .end local v0    # "dataIndex":I
    .end local v15    # "configIndex":I
    .end local v17    # "mimeTypeIndex":I
    .end local v19    # "phoneIdIndex":I
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1248
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1245
    :catch_2
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_4

    .line 1224
    .end local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :cond_1
    move-object/from16 v16, v7

    move-object/from16 v18, v8

    .line 1248
    .end local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :goto_1
    if-eqz v10, :cond_3

    .line 1249
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 1248
    .end local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :goto_3
    if-eqz v10, :cond_2

    .line 1249
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1251
    :cond_2
    throw v0

    .line 1245
    .end local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :catch_3
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    .line 1246
    .end local v7    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .local v0, "e2":Lcom/android/ims/ImsException;
    .restart local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :goto_4
    const/4 v13, 0x0

    .line 1248
    .end local v0    # "e2":Lcom/android/ims/ImsException;
    if-eqz v10, :cond_3

    .line 1249
    goto :goto_2

    .line 1253
    .end local v14    # "e":Lcom/android/ims/ImsException;
    :cond_3
    :goto_5
    if-eqz v13, :cond_4

    if-nez v10, :cond_5

    .line 1254
    :cond_4
    iget v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1255
    invoke-virtual {v11, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    nop

    .line 1257
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigSettings;->getMimeType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1256
    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    const-string v0, "n/a"

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_5
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1267
    if-eqz v12, :cond_6

    .line 1268
    iget-object v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 1274
    :catch_4
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "initMasterStorage Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1272
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1273
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v7, "initMasterStorage SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_6

    .line 1270
    :catch_6
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "initMasterStorage IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    :goto_6
    nop

    .line 1277
    .end local v9    # "configId":Ljava/lang/Integer;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "isFoundInNvRam":Z
    .end local v13    # "isFoundInAny":Z
    :goto_7
    move-object/from16 v7, v16

    move-object/from16 v8, v18

    goto/16 :goto_0
.end method

.method static loadConfigStorage(Landroid/os/Handler;I)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "operatorCode"    # I

    .line 1056
    if-eqz p0, :cond_1

    .line 1058
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1060
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1061
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1062
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadConfigStorage() msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsConfigStorage"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1067
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateConfig(Ljava/lang/String;III)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1352
    const-string v0, "ImsConfigStorage"

    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1353
    const/4 v1, -0x1

    .line 1355
    .local v1, "result":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1356
    .local v2, "cv":Landroid/content/ContentValues;
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "phone_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1357
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "config_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1358
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mimetype_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1359
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1361
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1362
    invoke-static {p1, v4, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v4

    .line 1361
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1369
    :goto_0
    goto :goto_1

    .line 1367
    :catch_0
    move-exception v3

    .line 1368
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "updateConfig int Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1365
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1366
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "updateConfig int SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1363
    :catch_2
    move-exception v3

    .line 1364
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "updateConfig int IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1370
    :goto_1
    return v1
.end method

.method private updateConfig(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1375
    const-string v0, "ImsConfigStorage"

    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1376
    const/4 v1, -0x1

    .line 1378
    .local v1, "result":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1379
    .local v2, "cv":Landroid/content/ContentValues;
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "phone_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "config_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mimetype_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    const-string v3, "data"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1385
    invoke-static {p1, v4, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v4

    .line 1384
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1392
    :goto_0
    goto :goto_1

    .line 1390
    :catch_0
    move-exception v3

    .line 1391
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "updateConfig string Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1388
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1389
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "updateConfig string SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1386
    :catch_2
    move-exception v3

    .line 1387
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "updateConfig string IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1393
    :goto_1
    return v1
.end method

.method private updateConfigSetting(II)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 1097
    const-string v0, "ImsConfigStorage"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1098
    .local v1, "cv":Landroid/content/ContentValues;
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "phone_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "setting_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    const-string v3, "tb_config_setting"

    invoke-static {v3, v2, p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    .line 1104
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1105
    .local v3, "count":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .end local v3    # "count":I
    goto :goto_0

    .line 1106
    .restart local v3    # "count":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfigSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "id":I
    .end local p2    # "value":I
    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v3    # "count":I
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "id":I
    .restart local p2    # "value":I
    :catch_0
    move-exception v3

    .line 1114
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "updateConfigSetting Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1111
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1112
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "updateConfigSetting SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 1109
    :catch_2
    move-exception v3

    .line 1110
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "updateConfigSetting IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 1116
    :goto_1
    return-void
.end method


# virtual methods
.method declared-synchronized getOpCode()I
    .locals 1

    monitor-enter p0

    .line 997
    :try_start_0
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 997
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method init()V
    .locals 1

    .line 1014
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initDefaultStorage(I)V

    .line 1015
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initMasterStorage()V

    .line 1016
    return-void
.end method

.method init(I)V
    .locals 0
    .param p1, "opCode"    # I

    .line 1019
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initDefaultStorage(I)V

    .line 1020
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initMasterStorage()V

    .line 1022
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initConfigSettingStorage(I)V

    .line 1023
    return-void
.end method

.method declared-synchronized isInitDone()Z
    .locals 1

    monitor-enter p0

    .line 1010
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1010
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStorageInitialized()Z
    .locals 12

    .line 1026
    const-string v0, "ImsConfigStorage"

    const/4 v1, 0x0

    .line 1027
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1028
    .local v2, "initialized":Z
    const-string v3, "phone_id"

    const-string v4, "setting_id"

    const-string v5, "value"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 1033
    .local v8, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    const/4 v4, 0x0

    .line 1034
    invoke-static {v3, v4}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1033
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 1037
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1038
    const/4 v2, 0x1

    .line 1039
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    :cond_0
    if-eqz v1, :cond_1

    .line 1049
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1048
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1045
    :catch_0
    move-exception v3

    .line 1046
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "isStorageInitialized Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 1049
    goto :goto_0

    .line 1043
    :catch_1
    move-exception v3

    .line 1044
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "isStorageInitialized SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    nop

    .end local v3    # "e":Ljava/lang/SecurityException;
    if-eqz v1, :cond_1

    .line 1049
    goto :goto_0

    .line 1041
    :catch_2
    move-exception v3

    .line 1042
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "isStorageInitialized IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    nop

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v1, :cond_1

    .line 1049
    goto :goto_0

    .line 1052
    :cond_1
    :goto_1
    return v2

    .line 1048
    :goto_2
    if-eqz v1, :cond_2

    .line 1049
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1051
    :cond_2
    throw v0
.end method

.method declared-synchronized setInitDone(Z)V
    .locals 3
    .param p1, "done"    # Z

    monitor-enter p0

    .line 1001
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z

    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    monitor-exit p0

    return-void

    .line 1000
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "done":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setOpCode(I)V
    .locals 0
    .param p1, "opCode"    # I

    monitor-enter p0

    .line 993
    :try_start_0
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    monitor-exit p0

    return-void

    .line 992
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "opCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
