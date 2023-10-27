.class public Lcom/mediatek/rcs/provisioning/AcsConfigInfo;
.super Ljava/lang/Object;
.source "AcsConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONFIGURED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/rcs/provisioning/AcsConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRE_CONFIGURATION:I


# instance fields
.field private mConfigStatus:I

.field private mVersion:I

.field private mXmlFileContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo$1;

    invoke-direct {v0}, Lcom/mediatek/rcs/provisioning/AcsConfigInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mXmlFileContent:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mConfigStatus:I

    .line 51
    iput v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mVersion:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mXmlFileContent:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mConfigStatus:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mVersion:I

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/rcs/provisioning/AcsConfigInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/rcs/provisioning/AcsConfigInfo$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "configStatus"    # I
    .param p3, "version"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mXmlFileContent:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mConfigStatus:I

    .line 51
    iput v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mVersion:I

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mXmlFileContent:Ljava/lang/String;

    .line 65
    :cond_0
    iput p2, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mConfigStatus:I

    .line 66
    iput p3, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mVersion:I

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mXmlFileContent:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mConfigStatus:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mVersion:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-object v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mXmlFileContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mConfigStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
