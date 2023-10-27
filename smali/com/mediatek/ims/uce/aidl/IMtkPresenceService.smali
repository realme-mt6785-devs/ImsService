.class public interface abstract Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
.super Ljava/lang/Object;
.source "IMtkPresenceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;,
        Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.uce.aidl.IMtkPresenceService"


# virtual methods
.method public abstract getContactListCap(Ljava/util/List;ILcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
