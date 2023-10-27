.class public interface abstract Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
.super Ljava/lang/Object;
.source "IAcsEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;,
        Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.rcsua.service.IAcsEventCallback"


# virtual methods
.method public abstract onConfigChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectionChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
