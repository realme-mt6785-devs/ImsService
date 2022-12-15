.class public Lcom/mediatek/gba/GbaHttpUrlCredential;
.super Lcom/mediatek/gba/GbaBaseCredential;
.source "GbaHttpUrlCredential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GbaCredentials"


# instance fields
.field private mAuthenticator:Ljava/net/Authenticator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/gba/GbaHttpUrlCredential;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/gba/GbaBaseCredential;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    new-instance v0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;-><init>(Lcom/mediatek/gba/GbaHttpUrlCredential;Lcom/mediatek/gba/GbaHttpUrlCredential$1;)V

    iput-object v0, p0, Lcom/mediatek/gba/GbaHttpUrlCredential;->mAuthenticator:Ljava/net/Authenticator;

    .line 47
    const-string v0, "http.digest.support"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getAuthenticator()Ljava/net/Authenticator;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mediatek/gba/GbaHttpUrlCredential;->mAuthenticator:Ljava/net/Authenticator;

    return-object v0
.end method
