.class public interface abstract Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
.super Ljava/lang/Object;
.source "IMtkImsRegistrationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;,
        Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRedirectIncomingCallIndication(I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRegistrationErrorCodeIndication(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
