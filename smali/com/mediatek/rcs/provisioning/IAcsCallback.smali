.class public interface abstract Lcom/mediatek/rcs/provisioning/IAcsCallback;
.super Ljava/lang/Object;
.source "IAcsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;,
        Lcom/mediatek/rcs/provisioning/IAcsCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.rcs.provisioning.IAcsCallback"


# virtual methods
.method public abstract onAcsConfigChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAcsConnectionStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
