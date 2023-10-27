.class public Lcom/mediatek/ims/rcsua/RegistrationInfo;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/RegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

.field private radioTech:I

.field private regMode:I

.field private regState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/mediatek/ims/rcsua/RegistrationInfo$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v0, v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;-><init>(III)V

    .line 57
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "regState"    # I
    .param p2, "radioTech"    # I
    .param p3, "regMode"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    .line 48
    iput p2, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->radioTech:I

    .line 49
    iput p3, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    .line 50
    new-instance v0, Lcom/mediatek/ims/rcsua/Configuration;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Configuration;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->radioTech:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    .line 63
    const-class v0, Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcsua/Configuration;

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getImsConfig()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

    return-object v0
.end method

.method public getRadioTech()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->radioTech:I

    return v0
.end method

.method public getRegMode()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    return v0
.end method

.method public getRegState()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 133
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRegistered(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 137
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mediatek/ims/rcsua/Configuration;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/rcsua/Configuration;-><init>(Lcom/mediatek/ims/rcsua/Configuration;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setImsConfiguration(Lcom/mediatek/ims/rcsua/Configuration;)V
    .locals 0
    .param p1, "imsConfig"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 154
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 155
    return-void
.end method

.method public setRadioTech(I)V
    .locals 0
    .param p1, "radioTech"    # I

    .line 146
    iput p1, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->radioTech:I

    .line 147
    return-void
.end method

.method public setRegMode(I)V
    .locals 0
    .param p1, "regMode"    # I

    .line 150
    iput p1, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    .line 151
    return-void
.end method

.method public setRegState(I)V
    .locals 0
    .param p1, "regState"    # I

    .line 142
    iput p1, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 93
    const-string v0, "RegistrationInfo: "

    .line 95
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "regState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",radioTech["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->radioTech:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",regMode["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->radioTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->regMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RegistrationInfo;->imsConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
