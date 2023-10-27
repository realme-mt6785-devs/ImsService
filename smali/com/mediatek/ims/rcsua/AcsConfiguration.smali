.class public Lcom/mediatek/ims/rcsua/AcsConfiguration;
.super Ljava/lang/Object;
.source "AcsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/AcsConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private version:I

.field private xmlData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/mediatek/ims/rcsua/AcsConfiguration$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/AcsConfiguration$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->xmlData:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->version:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "xmlData"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->xmlData:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->version:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->version:I

    return v0
.end method

.method public readXmlData()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->xmlData:Ljava/lang/String;

    return-object v0
.end method

.method setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 43
    iput p1, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->version:I

    .line 44
    return-void
.end method

.method setXmlData(Ljava/lang/String;)V
    .locals 0
    .param p1, "xml"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->xmlData:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->xmlData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/mediatek/ims/rcsua/AcsConfiguration;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
