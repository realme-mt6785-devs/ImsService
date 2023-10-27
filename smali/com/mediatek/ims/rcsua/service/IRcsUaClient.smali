.class public interface abstract Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
.super Ljava/lang/Object;
.source "IRcsUaClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;,
        Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.rcsua.service.IRcsUaClient"


# virtual methods
.method public abstract getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openSipChannel(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;ILcom/mediatek/ims/rcsua/service/RcsUaException;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resumeImsDeregistration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
