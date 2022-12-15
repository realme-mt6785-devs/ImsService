.class Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;
.super Ljava/net/Authenticator;
.source "GbaHttpUrlCredential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/GbaHttpUrlCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaAuthenticator"
.end annotation


# instance fields
.field private mPasswordAuthentication:Ljava/net/PasswordAuthentication;

.field final synthetic this$0:Lcom/mediatek/gba/GbaHttpUrlCredential;


# direct methods
.method private constructor <init>(Lcom/mediatek/gba/GbaHttpUrlCredential;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->this$0:Lcom/mediatek/gba/GbaHttpUrlCredential;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gba/GbaHttpUrlCredential;Lcom/mediatek/gba/GbaHttpUrlCredential$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/gba/GbaHttpUrlCredential;
    .param p2, "x1"    # Lcom/mediatek/gba/GbaHttpUrlCredential$1;

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;-><init>(Lcom/mediatek/gba/GbaHttpUrlCredential;)V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 5

    .line 63
    const-string v0, "GbaCredentials"

    const-string v1, "getPasswordAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v1, "Run GBA procedure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->this$0:Lcom/mediatek/gba/GbaHttpUrlCredential;

    invoke-virtual {v0}, Lcom/mediatek/gba/GbaHttpUrlCredential;->getNafSessionKey()Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 67
    .local v0, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Ljava/net/PasswordAuthentication;

    .line 73
    invoke-virtual {v0}, Lcom/mediatek/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    iput-object v2, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->mPasswordAuthentication:Ljava/net/PasswordAuthentication;

    .line 76
    return-object v2

    .line 69
    .end local v1    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
