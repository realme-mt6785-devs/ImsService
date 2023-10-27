.class Lcom/mediatek/ims/rcsua/Capability$1;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/ims/rcsua/Capability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 172
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/Capability$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "size"    # I

    .line 177
    new-array v0, p1, [Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/Capability$1;->newArray(I)[Lcom/mediatek/ims/rcsua/Capability;

    move-result-object p1

    return-object p1
.end method
