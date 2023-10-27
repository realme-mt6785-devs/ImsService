.class public interface abstract Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
.super Ljava/lang/Object;
.source "IImsEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;,
        Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.rcsua.service.IImsEventCallback"


# virtual methods
.method public abstract onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVopsIndication(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
