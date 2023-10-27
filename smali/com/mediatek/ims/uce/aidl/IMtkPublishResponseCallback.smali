.class public interface abstract Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;
.super Ljava/lang/Object;
.source "IMtkPublishResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;,
        Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"


# virtual methods
.method public abstract onCommandError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetworkResponse(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
