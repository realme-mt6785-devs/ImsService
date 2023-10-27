.class public abstract Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7043
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 7046
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7059
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 7096
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 7097
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 7098
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 7099
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 7100
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 7071
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x7et
        -0x17t
        -0x1ft
        -0x3t
        0x14t
        0x52t
        -0x4t
        -0x65t
        -0x2et
        -0x3ct
        -0xat
        -0x63t
        -0x70t
        0x0t
        -0x5at
        0x17t
        -0x25t
        0x3ct
        0x54t
        0x1ct
        -0x42t
        -0x3et
        0x44t
        0x34t
        -0x8t
        0x1at
        -0xat
        0x4et
        -0x51t
        -0x75t
        0x7t
        0x27t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7051
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 7065
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 7084
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 7106
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 7108
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 24
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7136
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 9780
    :sswitch_0
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9782
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 9783
    goto/16 :goto_1

    .line 9769
    :sswitch_1
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9771
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 9772
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9773
    invoke-virtual {v0, v13}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 9774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9775
    goto/16 :goto_1

    .line 9759
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9761
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->ping()V

    .line 9762
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9764
    goto/16 :goto_1

    .line 9754
    :sswitch_3
    goto/16 :goto_1

    .line 9746
    :sswitch_4
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9748
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 9749
    goto/16 :goto_1

    .line 9712
    :sswitch_5
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9714
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 9715
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9717
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 9719
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9720
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 9721
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 9722
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 9723
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 9725
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 9726
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 9728
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 9732
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 9733
    nop

    .line 9723
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9729
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 9736
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 9738
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 9740
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9741
    goto/16 :goto_1

    .line 9701
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9703
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 9704
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9705
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 9706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9707
    goto/16 :goto_1

    .line 9689
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 9692
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9693
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 9694
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9695
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9696
    goto/16 :goto_1

    .line 9678
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9680
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 9681
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9682
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 9683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9684
    goto/16 :goto_1

    .line 9665
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 9668
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v7

    .line 9669
    .local v7, "saEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v8

    .line 9670
    .local v8, "saDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 9671
    .local v9, "nsaEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 9672
    .local v10, "nsaDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNrBandMode(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9673
    goto/16 :goto_1

    .line 9656
    .end local v6    # "serial":I
    .end local v7    # "saEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "saDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "nsaEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "nsaDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9659
    .local v0, "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getAllBandMode(I)V

    .line 9660
    goto/16 :goto_1

    .line 9647
    .end local v0    # "serial":I
    :sswitch_b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9649
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9650
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getIWlanRegistrationState(I)V

    .line 9651
    goto/16 :goto_1

    .line 9637
    .end local v0    # "serial":I
    :sswitch_c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9640
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9641
    .local v1, "index":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getEngineeringModeInfo(II)V

    .line 9642
    goto/16 :goto_1

    .line 9628
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9631
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDisable2G(I)V

    .line 9632
    goto/16 :goto_1

    .line 9618
    .end local v0    # "serial":I
    :sswitch_e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9621
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9622
    .local v1, "mode":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setDisable2G(IZ)V

    .line 9623
    goto/16 :goto_1

    .line 9609
    .end local v0    # "serial":I
    .end local v1    # "mode":Z
    :sswitch_f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9612
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteScanDuration(I)V

    .line 9613
    goto/16 :goto_1

    .line 9599
    .end local v0    # "serial":I
    :sswitch_10
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9602
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9603
    .local v1, "duration":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteScanDuration(II)V

    .line 9604
    goto/16 :goto_1

    .line 9589
    .end local v0    # "serial":I
    .end local v1    # "duration":I
    :sswitch_11
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9592
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9593
    .local v1, "fddOrTdd":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getTm9Enabled(IZ)V

    .line 9594
    goto/16 :goto_1

    .line 9578
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    :sswitch_12
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9580
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9581
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9582
    .restart local v1    # "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9583
    .local v2, "enabled":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTm9Enabled(IZZ)V

    .line 9584
    goto/16 :goto_1

    .line 9568
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_13
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9571
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9572
    .local v1, "ulOrDl":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getQamEnabled(IZ)V

    .line 9573
    goto/16 :goto_1

    .line 9557
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    :sswitch_14
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9560
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9561
    .restart local v1    # "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9562
    .restart local v2    # "enabled":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setQamEnabled(IZZ)V

    .line 9563
    goto/16 :goto_1

    .line 9548
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_15
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9551
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCampedFemtoCellInfo(I)V

    .line 9552
    goto/16 :goto_1

    .line 9538
    .end local v0    # "serial":I
    :sswitch_16
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9541
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9542
    .local v1, "primaryBandId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCaBandMode(II)V

    .line 9543
    goto/16 :goto_1

    .line 9529
    .end local v0    # "serial":I
    .end local v1    # "primaryBandId":I
    :sswitch_17
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9532
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getBandMode(I)V

    .line 9533
    goto/16 :goto_1

    .line 9520
    .end local v0    # "serial":I
    :sswitch_18
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9523
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->clearLteAvailableFile(I)V

    .line 9524
    goto/16 :goto_1

    .line 9510
    .end local v0    # "serial":I
    :sswitch_19
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9513
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9514
    .local v1, "available":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLte1xRttCellList(IZ)V

    .line 9515
    goto/16 :goto_1

    .line 9501
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_1a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9504
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteBsrTimer(I)V

    .line 9505
    goto/16 :goto_1

    .line 9491
    .end local v0    # "serial":I
    :sswitch_1b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9494
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9495
    .local v1, "timer":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteBsrTimer(II)V

    .line 9496
    goto/16 :goto_1

    .line 9482
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_1c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9485
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->get4x4MimoEnabled(I)V

    .line 9486
    goto/16 :goto_1

    .line 9472
    .end local v0    # "serial":I
    :sswitch_1d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9475
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9476
    .local v1, "enabled_bitmask":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->set4x4MimoEnabled(II)V

    .line 9477
    goto/16 :goto_1

    .line 9462
    .end local v0    # "serial":I
    .end local v1    # "enabled_bitmask":I
    :sswitch_1e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9465
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9466
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setBandPriorityList(ILjava/util/ArrayList;)V

    .line 9467
    goto/16 :goto_1

    .line 9453
    .end local v0    # "serial":I
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9456
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getBandPriorityList(I)V

    .line 9457
    goto/16 :goto_1

    .line 9442
    .end local v0    # "serial":I
    :sswitch_20
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9445
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9446
    .local v1, "bandId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9447
    .local v2, "status":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteBandEnableStatus(IIZ)V

    .line 9448
    goto/16 :goto_1

    .line 9433
    .end local v0    # "serial":I
    .end local v1    # "bandId":I
    .end local v2    # "status":Z
    :sswitch_21
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9436
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteRRCState(I)V

    .line 9437
    goto/16 :goto_1

    .line 9424
    .end local v0    # "serial":I
    :sswitch_22
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9427
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteData(I)V

    .line 9428
    goto/16 :goto_1

    .line 9414
    .end local v0    # "serial":I
    :sswitch_23
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9417
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9418
    .local v1, "linkType":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCALinkCapabilityList(II)V

    .line 9419
    goto/16 :goto_1

    .line 9402
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_24
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9405
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9406
    .local v1, "status":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9407
    .local v2, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9408
    .local v3, "linkType":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCALinkEnableStatus(IZLjava/lang/String;I)V

    .line 9409
    goto/16 :goto_1

    .line 9391
    .end local v0    # "serial":I
    .end local v1    # "status":Z
    .end local v2    # "bandsCombo":Ljava/lang/String;
    .end local v3    # "linkType":I
    :sswitch_25
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9394
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9395
    .local v1, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9396
    .local v2, "linkType":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCALinkEnableStatus(ILjava/lang/String;I)V

    .line 9397
    goto/16 :goto_1

    .line 9381
    .end local v0    # "serial":I
    .end local v1    # "bandsCombo":Ljava/lang/String;
    .end local v2    # "linkType":I
    :sswitch_26
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9384
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9385
    .local v1, "linkType":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->disableAllCALinks(II)V

    .line 9386
    goto/16 :goto_1

    .line 9372
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_27
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9375
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getTOEInfo(I)V

    .line 9376
    goto/16 :goto_1

    .line 9362
    .end local v0    # "serial":I
    :sswitch_28
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9365
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9366
    .local v1, "option":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNROption(II)V

    .line 9367
    goto/16 :goto_1

    .line 9352
    .end local v0    # "serial":I
    .end local v1    # "option":I
    :sswitch_29
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9355
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9356
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 9357
    goto/16 :goto_1

    .line 9334
    .end local v0    # "serial":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9336
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 9337
    .local v14, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 9338
    .local v15, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9339
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9340
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9341
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 9342
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 9343
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 9344
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 9345
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 9346
    .local v23, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 9347
    goto/16 :goto_1

    .line 9320
    .end local v14    # "serial":I
    .end local v15    # "ifName":Ljava/lang/String;
    .end local v16    # "ipv4Addr":Ljava/lang/String;
    .end local v17    # "ipv6Addr":Ljava/lang/String;
    .end local v18    # "ipv4PrefixLen":I
    .end local v19    # "ipv6PrefixLen":I
    .end local v20    # "ipv4Gateway":Ljava/lang/String;
    .end local v21    # "ipv6Gateway":Ljava/lang/String;
    .end local v22    # "dnsCount":I
    .end local v23    # "dnsServers":Ljava/lang/String;
    :sswitch_2b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9323
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9324
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9325
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 9326
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 9327
    .local v14, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 9328
    .local v15, "mtuSize":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 9329
    goto/16 :goto_1

    .line 9309
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v14    # "apMac":Ljava/lang/String;
    .end local v15    # "mtuSize":I
    :sswitch_2c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9312
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9313
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9314
    .local v2, "isWifiEnabled":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendWifiEnabled(ILjava/lang/String;I)V

    .line 9315
    goto/16 :goto_1

    .line 9298
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    :sswitch_2d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9301
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;-><init>()V

    .line 9302
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9303
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;)V

    .line 9304
    goto/16 :goto_1

    .line 9288
    .end local v0    # "serial":I
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;
    :sswitch_2e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9291
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9292
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 9293
    goto/16 :goto_1

    .line 9277
    .end local v0    # "serial":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9280
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9281
    .local v1, "sar_cmd_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9282
    .local v2, "sar_parameter":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendSarIndicator(IILjava/lang/String;)V

    .line 9283
    goto/16 :goto_1

    .line 9265
    .end local v0    # "serial":I
    .end local v1    # "sar_cmd_type":I
    .end local v2    # "sar_parameter":Ljava/lang/String;
    :sswitch_30
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9268
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9269
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9270
    .local v2, "tGear":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9271
    .local v3, "lGear":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSmartSceneSwitch(IIII)V

    .line 9272
    goto/16 :goto_1

    .line 9255
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "tGear":I
    .end local v3    # "lGear":I
    :sswitch_31
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9258
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9259
    .restart local v1    # "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmartRatSwitch(II)V

    .line 9260
    goto/16 :goto_1

    .line 9244
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_32
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9247
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9248
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9249
    .local v2, "rat":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->smartRatSwitch(III)V

    .line 9250
    goto/16 :goto_1

    .line 9232
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "rat":I
    :sswitch_33
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;

    move-result-object v0

    .line 9235
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;

    move-result-object v2

    .line 9236
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;)V

    .line 9237
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9239
    goto/16 :goto_1

    .line 9222
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;
    :sswitch_34
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9225
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9226
    .local v1, "ulSpeed":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setMaxUlSpeed(II)V

    .line 9227
    goto/16 :goto_1

    .line 9213
    .end local v0    # "serial":I
    .end local v1    # "ulSpeed":I
    :sswitch_35
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9216
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDeactivateNrScgCommunication(I)V

    .line 9217
    goto/16 :goto_1

    .line 9202
    .end local v0    # "serial":I
    :sswitch_36
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9205
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9206
    .local v1, "deactivate":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9207
    .local v2, "allowSCGAdd":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->deactivateNrScgCommunication(IZZ)V

    .line 9208
    goto/16 :goto_1

    .line 9191
    .end local v0    # "serial":I
    .end local v1    # "deactivate":Z
    .end local v2    # "allowSCGAdd":Z
    :sswitch_37
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9194
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9195
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9196
    .local v2, "callId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 9197
    goto/16 :goto_1

    .line 9181
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "callId":I
    :sswitch_38
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9184
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9185
    .local v1, "uid":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 9186
    goto/16 :goto_1

    .line 9169
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    :sswitch_39
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9172
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9173
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9174
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9175
    .local v3, "toActive":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 9176
    goto/16 :goto_1

    .line 9158
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "toActive":I
    :sswitch_3a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9161
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9162
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9163
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 9164
    goto/16 :goto_1

    .line 9146
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9149
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9150
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9151
    .local v2, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9152
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9153
    goto/16 :goto_1

    .line 9134
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9137
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9138
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9139
    .local v2, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9140
    .local v3, "timer":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 9141
    goto/16 :goto_1

    .line 9121
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "num":I
    .end local v3    # "timer":I
    :sswitch_3d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 9124
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 9125
    .local v7, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9126
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 9127
    .local v9, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 9128
    .local v10, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9129
    goto/16 :goto_1

    .line 9112
    .end local v6    # "serial":I
    .end local v7    # "registerQuality":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "thresholdValues":Ljava/lang/String;
    .end local v10    # "triggerTime":Ljava/lang/String;
    :sswitch_3e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9115
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 9116
    goto/16 :goto_1

    .line 9102
    .end local v0    # "serial":I
    :sswitch_3f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9105
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9106
    .local v1, "enable":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 9107
    goto/16 :goto_1

    .line 9092
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_40
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9095
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9096
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 9097
    goto/16 :goto_1

    .line 9082
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_41
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9085
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9086
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 9087
    goto/16 :goto_1

    .line 9072
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_42
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9075
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9076
    .local v1, "interval":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 9077
    goto/16 :goto_1

    .line 9062
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    :sswitch_43
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9065
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9066
    .local v1, "timer":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 9067
    goto/16 :goto_1

    .line 9052
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_44
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9056
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 9057
    goto/16 :goto_1

    .line 9042
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_45
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9045
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9046
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 9047
    goto/16 :goto_1

    .line 9032
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_46
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9035
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9036
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 9037
    goto/16 :goto_1

    .line 9022
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_47
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9025
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9026
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 9027
    goto/16 :goto_1

    .line 9013
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_48
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9016
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 9017
    goto/16 :goto_1

    .line 9003
    .end local v0    # "serial":I
    :sswitch_49
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9006
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9007
    .local v1, "enable":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 9008
    goto/16 :goto_1

    .line 8992
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_4a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8995
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8996
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8997
    .local v2, "mnc":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 8998
    goto/16 :goto_1

    .line 8984
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :sswitch_4b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8986
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 8987
    goto/16 :goto_1

    .line 8975
    :sswitch_4c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8978
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 8979
    goto/16 :goto_1

    .line 8964
    .end local v0    # "serial":I
    :sswitch_4d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8967
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8968
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8969
    .local v2, "audio":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 8970
    goto/16 :goto_1

    .line 8953
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_4e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8956
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8957
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8958
    .local v2, "result":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 8959
    goto/16 :goto_1

    .line 8941
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_4f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8944
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8945
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8946
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8947
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 8948
    goto/16 :goto_1

    .line 8930
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_50
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8933
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8934
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8935
    .local v2, "newMode":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 8936
    goto/16 :goto_1

    .line 8920
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "newMode":I
    :sswitch_51
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8923
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8924
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 8925
    goto/16 :goto_1

    .line 8909
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_52
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8912
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8913
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8914
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 8915
    goto/16 :goto_1

    .line 8898
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_53
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8901
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8902
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8903
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 8904
    goto/16 :goto_1

    .line 8888
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_54
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;

    move-result-object v0

    .line 8891
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;

    move-result-object v1

    .line 8892
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;)V

    .line 8893
    goto/16 :goto_1

    .line 8878
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;
    :sswitch_55
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;

    move-result-object v0

    .line 8881
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;

    move-result-object v1

    .line 8882
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;)V

    .line 8883
    goto/16 :goto_1

    .line 8867
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;
    :sswitch_56
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8870
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8871
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8872
    .local v2, "reason":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 8873
    goto/16 :goto_1

    .line 8857
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "reason":I
    :sswitch_57
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8860
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8861
    .local v1, "state":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 8862
    goto/16 :goto_1

    .line 8847
    .end local v0    # "serial":I
    .end local v1    # "state":I
    :sswitch_58
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8850
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8851
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 8852
    goto/16 :goto_1

    .line 8836
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    :sswitch_59
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8839
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8840
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8841
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 8842
    goto/16 :goto_1

    .line 8826
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_5a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8829
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8830
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 8831
    goto/16 :goto_1

    .line 8817
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8820
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 8821
    goto/16 :goto_1

    .line 8807
    .end local v0    # "serial":I
    :sswitch_5c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8810
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8811
    .restart local v1    # "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 8812
    goto/16 :goto_1

    .line 8798
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8801
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 8802
    goto/16 :goto_1

    .line 8788
    .end local v0    # "serial":I
    :sswitch_5e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8791
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8792
    .local v1, "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 8793
    goto/16 :goto_1

    .line 8778
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_5f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8781
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8782
    .restart local v1    # "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 8783
    goto/16 :goto_1

    .line 8768
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_60
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8771
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8772
    .local v1, "featureId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 8773
    goto/16 :goto_1

    .line 8758
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    :sswitch_61
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8761
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8762
    .local v1, "configId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 8763
    goto/16 :goto_1

    .line 8747
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    :sswitch_62
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8750
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8751
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8752
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 8753
    goto/16 :goto_1

    .line 8736
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_63
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8739
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8740
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8741
    .local v2, "network":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 8742
    goto/16 :goto_1

    .line 8723
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "network":I
    :sswitch_64
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8726
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8727
    .local v7, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8728
    .local v8, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8729
    .local v9, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8730
    .local v10, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 8731
    goto/16 :goto_1

    .line 8713
    .end local v6    # "serial":I
    .end local v7    # "featureId":I
    .end local v8    # "network":I
    .end local v9    # "value":I
    .end local v10    # "isLast":I
    :sswitch_65
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8716
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8717
    .local v1, "enable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 8718
    goto/16 :goto_1

    .line 8704
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    :sswitch_66
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8707
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 8708
    goto/16 :goto_1

    .line 8692
    .end local v0    # "serial":I
    :sswitch_67
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8695
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8696
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8697
    .local v2, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8698
    .local v3, "interval":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 8699
    goto/16 :goto_1

    .line 8680
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "reportMode":I
    .end local v3    # "interval":I
    :sswitch_68
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8683
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8684
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8685
    .local v2, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8686
    .local v3, "pktloss":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 8687
    goto/16 :goto_1

    .line 8665
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "latency":I
    .end local v3    # "pktloss":I
    :sswitch_69
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8668
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8669
    .local v9, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8670
    .local v10, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 8671
    .local v14, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 8672
    .local v15, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8673
    .local v16, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 8674
    .local v17, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 8675
    goto/16 :goto_1

    .line 8655
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "enable":Z
    .end local v14    # "srcIp":Ljava/lang/String;
    .end local v15    # "srcPort":I
    .end local v16    # "dstIp":Ljava/lang/String;
    .end local v17    # "dstPort":I
    :sswitch_6a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8658
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8659
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 8660
    goto/16 :goto_1

    .line 8645
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_6b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8648
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8649
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLocationInfo(ILjava/util/ArrayList;)V

    .line 8650
    goto/16 :goto_1

    .line 8636
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_6c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8639
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 8640
    goto/16 :goto_1

    .line 8626
    .end local v0    # "serial":I
    :sswitch_6d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8629
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8630
    .local v1, "setting":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getWfcConfig(II)V

    .line 8631
    goto/16 :goto_1

    .line 8614
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    :sswitch_6e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8617
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8618
    .restart local v1    # "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8619
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8620
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 8621
    goto/16 :goto_1

    .line 8604
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_6f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8607
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8608
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/util/ArrayList;)V

    .line 8609
    goto/16 :goto_1

    .line 8593
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_70
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8596
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8597
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8598
    .local v2, "snr":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 8599
    goto/16 :goto_1

    .line 8583
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "snr":I
    :sswitch_71
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8586
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8587
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/util/ArrayList;)V

    .line 8588
    goto/16 :goto_1

    .line 8571
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_72
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8574
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8575
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8576
    .local v2, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8577
    .local v3, "isFlightModeOn":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 8578
    goto/16 :goto_1

    .line 8561
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    .end local v3    # "isFlightModeOn":I
    :sswitch_73
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8564
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8565
    .local v1, "vdp":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 8566
    goto/16 :goto_1

    .line 8551
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    :sswitch_74
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8554
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8555
    .local v1, "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 8556
    goto/16 :goto_1

    .line 8541
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_75
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8544
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8545
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 8546
    goto/16 :goto_1

    .line 8531
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_76
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8534
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8535
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 8536
    goto/16 :goto_1

    .line 8522
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_77
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8525
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 8526
    goto/16 :goto_1

    .line 8512
    .end local v0    # "serial":I
    :sswitch_78
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8515
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8516
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 8517
    goto/16 :goto_1

    .line 8502
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_79
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;

    move-result-object v0

    .line 8505
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;

    move-result-object v1

    .line 8506
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;)V

    .line 8507
    goto/16 :goto_1

    .line 8492
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;
    :sswitch_7a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8495
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8496
    .local v1, "resultCode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 8497
    goto/16 :goto_1

    .line 8482
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    :sswitch_7b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8485
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8486
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTrm(II)V

    .line 8487
    goto/16 :goto_1

    .line 8470
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_7c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8473
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8474
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8475
    .local v2, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8476
    .local v3, "param2":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 8477
    goto/16 :goto_1

    .line 8458
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "param1":I
    .end local v3    # "param2":I
    :sswitch_7d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8461
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8462
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8463
    .local v2, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8464
    .local v3, "nAct":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 8465
    goto/16 :goto_1

    .line 8449
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "nAct":I
    :sswitch_7e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8452
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 8453
    goto/16 :goto_1

    .line 8440
    .end local v0    # "serial":I
    :sswitch_7f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8443
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 8444
    goto/16 :goto_1

    .line 8430
    .end local v0    # "serial":I
    :sswitch_80
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8433
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8434
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 8435
    goto/16 :goto_1

    .line 8420
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_81
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8423
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8424
    .local v1, "antType":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 8425
    goto/16 :goto_1

    .line 8410
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    :sswitch_82
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8413
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8414
    .local v1, "sleepDuration":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 8415
    goto/16 :goto_1

    .line 8400
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    :sswitch_83
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8403
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8404
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 8405
    goto/16 :goto_1

    .line 8387
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_84
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8390
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8391
    .local v7, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8392
    .local v8, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8393
    .local v9, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8394
    .local v10, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 8395
    goto/16 :goto_1

    .line 8377
    .end local v6    # "serial":I
    .end local v7    # "operation":I
    .end local v8    # "plmn_id":I
    .end local v9    # "rat":I
    .end local v10    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_85
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8380
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8381
    .local v1, "limitpower":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 8382
    goto/16 :goto_1

    .line 8364
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    :sswitch_86
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8367
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 8368
    .local v7, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8369
    .local v8, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8370
    .local v9, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8371
    .local v10, "T2":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 8372
    goto/16 :goto_1

    .line 8353
    .end local v6    # "serial":I
    .end local v7    # "enable":Z
    .end local v8    # "T1":I
    .end local v9    # "P1":I
    .end local v10    # "T2":I
    :sswitch_87
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8356
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8357
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8358
    .local v2, "threshBound":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 8359
    goto/16 :goto_1

    .line 8342
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_88
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8345
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8346
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8347
    .restart local v2    # "threshBound":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 8348
    goto/16 :goto_1

    .line 8327
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_89
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8330
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8331
    .local v9, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8332
    .local v10, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 8333
    .local v14, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 8334
    .local v15, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 8335
    .local v16, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 8336
    .local v17, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 8337
    goto/16 :goto_1

    .line 8317
    .end local v8    # "serial":I
    .end local v9    # "voiceRegState":I
    .end local v10    # "dataRegState":I
    .end local v14    # "voiceRoamingType":I
    .end local v15    # "dataRoamingType":I
    .end local v16    # "rilVoiceRegState":I
    .end local v17    # "rilDataRegState":I
    :sswitch_8a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8320
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8321
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 8322
    goto/16 :goto_1

    .line 8308
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_8b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8311
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 8312
    goto/16 :goto_1

    .line 8296
    .end local v0    # "serial":I
    :sswitch_8c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8299
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8300
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8301
    .local v2, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8302
    .local v3, "csgId":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8303
    goto/16 :goto_1

    .line 8287
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "csgId":Ljava/lang/String;
    :sswitch_8d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8289
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8290
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 8291
    goto/16 :goto_1

    .line 8278
    .end local v0    # "serial":I
    :sswitch_8e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8281
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 8282
    goto/16 :goto_1

    .line 8269
    .end local v0    # "serial":I
    :sswitch_8f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8272
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 8273
    goto/16 :goto_1

    .line 8260
    .end local v0    # "serial":I
    :sswitch_90
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8263
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 8264
    goto/16 :goto_1

    .line 8251
    .end local v0    # "serial":I
    :sswitch_91
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8254
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 8255
    goto/16 :goto_1

    .line 8239
    .end local v0    # "serial":I
    :sswitch_92
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8242
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8243
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8244
    .restart local v2    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8245
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8246
    goto/16 :goto_1

    .line 8230
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :sswitch_93
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8233
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 8234
    goto/16 :goto_1

    .line 8219
    .end local v0    # "serial":I
    :sswitch_94
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8222
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8223
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8224
    .local v2, "modemType":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 8225
    goto/16 :goto_1

    .line 8209
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "modemType":I
    :sswitch_95
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8212
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8213
    .local v1, "sessionId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 8214
    goto/16 :goto_1

    .line 8199
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    :sswitch_96
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8202
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8203
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 8204
    goto/16 :goto_1

    .line 8189
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_97
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8192
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8193
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 8194
    goto/16 :goto_1

    .line 8178
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_98
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8181
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 8182
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v12}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8183
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 8184
    goto/16 :goto_1

    .line 8167
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_99
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8170
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8171
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8172
    .local v2, "cause":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 8173
    goto/16 :goto_1

    .line 8156
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_9a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8159
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 8160
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v12}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8161
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 8162
    goto/16 :goto_1

    .line 8147
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_9b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8150
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 8151
    goto/16 :goto_1

    .line 8138
    .end local v0    # "serial":I
    :sswitch_9c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8141
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 8142
    goto/16 :goto_1

    .line 8128
    .end local v0    # "serial":I
    :sswitch_9d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8131
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8132
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 8133
    goto/16 :goto_1

    .line 8117
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_9e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8120
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8121
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8122
    .local v2, "serialId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 8123
    goto/16 :goto_1

    .line 8107
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "serialId":I
    :sswitch_9f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8110
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8111
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEtws(II)V

    .line 8112
    goto/16 :goto_1

    .line 8098
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_a0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8101
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 8102
    goto/16 :goto_1

    .line 8087
    .end local v0    # "serial":I
    :sswitch_a1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8090
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;-><init>()V

    .line 8091
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8092
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V

    .line 8093
    goto/16 :goto_1

    .line 8078
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;
    :sswitch_a2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8081
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 8082
    goto/16 :goto_1

    .line 8064
    .end local v0    # "serial":I
    :sswitch_a3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8067
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8068
    .local v8, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8069
    .local v9, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8070
    .local v10, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 8071
    .local v14, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 8072
    .local v15, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 8073
    goto/16 :goto_1

    .line 8052
    .end local v7    # "serial":I
    .end local v8    # "transactionId":I
    .end local v9    # "eventId":I
    .end local v10    # "result":I
    .end local v14    # "dataLength":I
    .end local v15    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_a4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8056
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8057
    .local v2, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8058
    .local v3, "simType":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 8059
    goto/16 :goto_1

    .line 8041
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "eventId":I
    .end local v3    # "simType":I
    :sswitch_a5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8044
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8045
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8046
    .local v2, "type":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 8047
    goto/16 :goto_1

    .line 8026
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_a6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8029
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8030
    .local v9, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8031
    .local v10, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 8032
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 8033
    .local v15, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8034
    .local v16, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 8035
    .local v17, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8036
    goto/16 :goto_1

    .line 8016
    .end local v8    # "serial":I
    .end local v9    # "category":I
    .end local v10    # "lockop":I
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "data_imsi":Ljava/lang/String;
    .end local v16    # "gid1":Ljava/lang/String;
    .end local v17    # "gid2":Ljava/lang/String;
    :sswitch_a7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8019
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8020
    .local v1, "category":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 8021
    goto/16 :goto_1

    .line 8005
    .end local v0    # "serial":I
    .end local v1    # "category":I
    :sswitch_a8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8008
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;-><init>()V

    .line 8009
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8010
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;)V

    .line 8011
    goto/16 :goto_1

    .line 7996
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;
    :sswitch_a9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7999
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 8000
    goto/16 :goto_1

    .line 7987
    .end local v0    # "serial":I
    :sswitch_aa
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7990
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 7991
    goto/16 :goto_1

    .line 7978
    .end local v0    # "serial":I
    :sswitch_ab
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7981
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 7982
    goto/16 :goto_1

    .line 7968
    .end local v0    # "serial":I
    :sswitch_ac
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7971
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7972
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 7973
    goto/16 :goto_1

    .line 7959
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_ad
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7962
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getIccid(I)V

    .line 7963
    goto/16 :goto_1

    .line 7950
    .end local v0    # "serial":I
    :sswitch_ae
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7953
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getATR(I)V

    .line 7954
    goto/16 :goto_1

    .line 7940
    .end local v0    # "serial":I
    :sswitch_af
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7943
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7944
    .restart local v1    # "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 7945
    goto/16 :goto_1

    .line 7930
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_b0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7933
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7934
    .local v1, "isOn":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 7935
    goto/16 :goto_1

    .line 7920
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_b1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7923
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7924
    .local v1, "ready":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 7925
    goto/16 :goto_1

    .line 7909
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    :sswitch_b2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7912
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7913
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7914
    .local v2, "endIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 7915
    goto/16 :goto_1

    .line 7898
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_b3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7901
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7902
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7903
    .local v2, "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 7904
    goto/16 :goto_1

    .line 7887
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_b4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7890
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7891
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7892
    .restart local v2    # "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 7893
    goto/16 :goto_1

    .line 7876
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_b5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7879
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7880
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7881
    .restart local v2    # "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 7882
    goto/16 :goto_1

    .line 7865
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_b6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7868
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7869
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7870
    .restart local v2    # "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 7871
    goto/16 :goto_1

    .line 7854
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "fileIndex":I
    :sswitch_b7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7857
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;-><init>()V

    .line 7858
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7859
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;)V

    .line 7860
    goto/16 :goto_1

    .line 7843
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;
    :sswitch_b8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7846
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7847
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7848
    .local v2, "index2":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 7849
    goto/16 :goto_1

    .line 7832
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :sswitch_b9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7835
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7836
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7837
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 7838
    goto/16 :goto_1

    .line 7823
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :sswitch_ba
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7826
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 7827
    goto/16 :goto_1

    .line 7814
    .end local v0    # "serial":I
    :sswitch_bb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7817
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 7818
    goto/16 :goto_1

    .line 7803
    .end local v0    # "serial":I
    :sswitch_bc
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7806
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7807
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7808
    .local v2, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 7809
    goto/16 :goto_1

    .line 7793
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7796
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7797
    .restart local v1    # "adnIndex":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 7798
    goto/16 :goto_1

    .line 7782
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    :sswitch_be
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7785
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7786
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7787
    .local v2, "endIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 7788
    goto/16 :goto_1

    .line 7770
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_bf
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7773
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7774
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7775
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7776
    .local v3, "entryIndex":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 7777
    goto/16 :goto_1

    .line 7760
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "adnIndex":I
    .end local v3    # "entryIndex":I
    :sswitch_c0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7763
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7764
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 7765
    goto/16 :goto_1

    .line 7751
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7754
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 7755
    goto/16 :goto_1

    .line 7739
    .end local v0    # "serial":I
    :sswitch_c2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7742
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7743
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7744
    .local v2, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7745
    .local v3, "eIndex":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 7746
    goto/16 :goto_1

    .line 7728
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "bIndex":I
    .end local v3    # "eIndex":I
    :sswitch_c3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7731
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;-><init>()V

    .line 7732
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7733
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;)V

    .line 7734
    goto/16 :goto_1

    .line 7718
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;
    :sswitch_c4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7721
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7722
    .local v1, "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 7723
    goto/16 :goto_1

    .line 7709
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_c5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7712
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCallSubAddress(I)V

    .line 7713
    goto/16 :goto_1

    .line 7699
    .end local v0    # "serial":I
    :sswitch_c6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7702
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7703
    .local v1, "enable":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallSubAddress(IZ)V

    .line 7704
    goto/16 :goto_1

    .line 7690
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_c7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7693
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 7694
    goto/16 :goto_1

    .line 7679
    .end local v0    # "serial":I
    :sswitch_c8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7682
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7683
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7684
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 7685
    goto/16 :goto_1

    .line 7666
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_c9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7669
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 7670
    .local v7, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7671
    .local v8, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7672
    .local v9, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7673
    .local v10, "imsReg":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 7674
    goto/16 :goto_1

    .line 7653
    .end local v6    # "serial":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "enable":I
    .end local v9    # "airplaneMode":I
    .end local v10    # "imsReg":I
    :sswitch_ca
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7656
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7657
    .local v7, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7658
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7659
    .local v9, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7660
    .local v10, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 7661
    goto/16 :goto_1

    .line 7644
    .end local v6    # "serial":I
    .end local v7    # "mode":I
    .end local v8    # "callId":I
    .end local v9    # "seqNumber":I
    .end local v10    # "cause":I
    :sswitch_cb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7647
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 7648
    goto/16 :goto_1

    .line 7634
    .end local v0    # "serial":I
    :sswitch_cc
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7637
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7638
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 7639
    goto/16 :goto_1

    .line 7625
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    :sswitch_cd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7628
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 7629
    goto/16 :goto_1

    .line 7616
    .end local v0    # "serial":I
    :sswitch_ce
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7619
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 7620
    goto/16 :goto_1

    .line 7607
    .end local v0    # "serial":I
    :sswitch_cf
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7610
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 7611
    goto/16 :goto_1

    .line 7597
    .end local v0    # "serial":I
    :sswitch_d0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7600
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7601
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 7602
    goto/16 :goto_1

    .line 7584
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    :sswitch_d1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7586
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7587
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 7588
    .local v7, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7589
    .local v8, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 7590
    .local v9, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7591
    .local v10, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 7592
    goto/16 :goto_1

    .line 7573
    .end local v6    # "serial":I
    .end local v7    # "nafFqdn":Ljava/lang/String;
    .end local v8    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v9    # "forceRun":Z
    .end local v10    # "netId":I
    :sswitch_d2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7576
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 7577
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7578
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 7579
    goto/16 :goto_1

    .line 7562
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    :sswitch_d3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7565
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 7566
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7567
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 7568
    goto/16 :goto_1

    .line 7552
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    :sswitch_d4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7555
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7556
    .local v1, "colrEnable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setColr(II)V

    .line 7557
    goto/16 :goto_1

    .line 7542
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    :sswitch_d5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7545
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7546
    .local v1, "colpEnable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setColp(II)V

    .line 7547
    goto/16 :goto_1

    .line 7532
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    :sswitch_d6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7535
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7536
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 7537
    goto/16 :goto_1

    .line 7523
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    :sswitch_d7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7526
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getColr(I)V

    .line 7527
    goto/16 :goto_1

    .line 7514
    .end local v0    # "serial":I
    :sswitch_d8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7517
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getColp(I)V

    .line 7518
    goto/16 :goto_1

    .line 7504
    .end local v0    # "serial":I
    :sswitch_d9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7507
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7508
    .local v1, "clipEnable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setClip(II)V

    .line 7509
    goto/16 :goto_1

    .line 7491
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    :sswitch_da
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7494
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 7495
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7496
    .local v8, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7497
    .local v9, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 7498
    .local v10, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7499
    goto/16 :goto_1

    .line 7481
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "oldPassword":Ljava/lang/String;
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "cfmPassword":Ljava/lang/String;
    :sswitch_db
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7484
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7485
    .local v1, "phoneId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 7486
    goto/16 :goto_1

    .line 7471
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    :sswitch_dc
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7474
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7475
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 7476
    goto/16 :goto_1

    .line 7461
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_dd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7464
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7465
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 7466
    goto/16 :goto_1

    .line 7452
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    :sswitch_de
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7455
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 7456
    goto/16 :goto_1

    .line 7441
    .end local v0    # "serial":I
    :sswitch_df
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7444
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7445
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7446
    .local v2, "isVideoCall":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 7447
    goto/16 :goto_1

    .line 7429
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :sswitch_e0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7431
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7432
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7433
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7434
    .local v2, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7435
    .local v3, "timer":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 7436
    goto/16 :goto_1

    .line 7417
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "networkId":I
    .end local v3    # "timer":I
    :sswitch_e1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7420
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7421
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7422
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7423
    .local v3, "status":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 7424
    goto/16 :goto_1

    .line 7407
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "status":I
    :sswitch_e2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7410
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7411
    .local v1, "callId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 7412
    goto/16 :goto_1

    .line 7396
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    :sswitch_e3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7399
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 7400
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v12}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7401
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 7402
    goto/16 :goto_1

    .line 7386
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_e4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7389
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7390
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 7391
    goto/16 :goto_1

    .line 7376
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_e5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7379
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7380
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 7381
    goto/16 :goto_1

    .line 7364
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_e6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7367
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7368
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7369
    .local v2, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7370
    .local v3, "type":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 7371
    goto/16 :goto_1

    .line 7353
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    .end local v3    # "type":I
    :sswitch_e7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7356
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;-><init>()V

    .line 7357
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7358
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;)V

    .line 7359
    goto/16 :goto_1

    .line 7343
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    :sswitch_e8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7346
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7347
    .local v1, "wfcPreference":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 7348
    goto/16 :goto_1

    .line 7330
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    :sswitch_e9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7333
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7334
    .local v7, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7335
    .local v8, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7336
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7337
    .local v10, "callId":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 7338
    goto/16 :goto_1

    .line 7319
    .end local v6    # "serial":I
    .end local v7    # "controlType":I
    .end local v8    # "confCallId":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "callId":I
    :sswitch_ea
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7322
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7323
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7324
    .local v2, "provisionValue":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 7325
    goto/16 :goto_1

    .line 7309
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "provisionValue":Ljava/lang/String;
    :sswitch_eb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7312
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7313
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 7314
    goto/16 :goto_1

    .line 7294
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    :sswitch_ec
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7297
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 7298
    .local v9, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 7299
    .local v10, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 7300
    .local v14, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 7301
    .local v15, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 7302
    .local v16, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 7303
    .local v17, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 7304
    goto/16 :goto_1

    .line 7284
    .end local v8    # "serial":I
    .end local v9    # "volteEnable":Z
    .end local v10    # "vilteEnable":Z
    .end local v14    # "vowifiEnable":Z
    .end local v15    # "viwifiEnable":Z
    .end local v16    # "smsEnable":Z
    .end local v17    # "eimsEnable":Z
    :sswitch_ed
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7287
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7288
    .local v1, "isOn":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 7289
    goto/16 :goto_1

    .line 7274
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_ee
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7277
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7278
    .local v1, "cause":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 7279
    goto/16 :goto_1

    .line 7263
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    :sswitch_ef
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7266
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7267
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7268
    .local v2, "callId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->controlCall(III)V

    .line 7269
    goto/16 :goto_1

    .line 7252
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "callId":I
    :sswitch_f0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7255
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7256
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7257
    .local v2, "type":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 7258
    goto/16 :goto_1

    .line 7241
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_f1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7244
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7245
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7246
    .local v2, "callId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 7247
    goto/16 :goto_1

    .line 7229
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "callId":I
    :sswitch_f2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;

    move-result-object v0

    .line 7232
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;

    move-result-object v2

    .line 7233
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;)V

    .line 7234
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7236
    goto/16 :goto_1

    .line 7218
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;
    :sswitch_f3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;

    move-result-object v0

    .line 7221
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;)V

    .line 7222
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7224
    goto/16 :goto_1

    .line 7207
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;
    :sswitch_f4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;

    move-result-object v0

    .line 7210
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;)V

    .line 7211
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7212
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7213
    goto/16 :goto_1

    .line 7195
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;
    :sswitch_f5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;

    move-result-object v0

    .line 7198
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;

    move-result-object v2

    .line 7199
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;)V

    .line 7200
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7202
    goto/16 :goto_1

    .line 7183
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;
    :sswitch_f6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;

    move-result-object v0

    .line 7186
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;

    move-result-object v2

    .line 7187
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;)V

    .line 7188
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7190
    goto :goto_1

    .line 7171
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;
    :sswitch_f7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 7174
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 7175
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;)V

    .line 7176
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7178
    goto :goto_1

    .line 7159
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;
    :sswitch_f8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 7162
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 7163
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;)V

    .line 7164
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7166
    goto :goto_1

    .line 7147
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;
    :sswitch_f9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;

    move-result-object v0

    .line 7150
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;

    move-result-object v2

    .line 7151
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;)V

    .line 7152
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7154
    goto :goto_1

    .line 7139
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;
    :sswitch_fa
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7141
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 7142
    nop

    .line 9792
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_fa
        0x2 -> :sswitch_f9
        0x3 -> :sswitch_f8
        0x4 -> :sswitch_f7
        0x5 -> :sswitch_f6
        0x6 -> :sswitch_f5
        0x7 -> :sswitch_f4
        0x8 -> :sswitch_f3
        0x9 -> :sswitch_f2
        0xa -> :sswitch_f1
        0xb -> :sswitch_f0
        0xc -> :sswitch_ef
        0xd -> :sswitch_ee
        0xe -> :sswitch_ed
        0xf -> :sswitch_ec
        0x10 -> :sswitch_eb
        0x11 -> :sswitch_ea
        0x12 -> :sswitch_e9
        0x13 -> :sswitch_e8
        0x14 -> :sswitch_e7
        0x15 -> :sswitch_e6
        0x16 -> :sswitch_e5
        0x17 -> :sswitch_e4
        0x18 -> :sswitch_e3
        0x19 -> :sswitch_e2
        0x1a -> :sswitch_e1
        0x1b -> :sswitch_e0
        0x1c -> :sswitch_df
        0x1d -> :sswitch_de
        0x1e -> :sswitch_dd
        0x1f -> :sswitch_dc
        0x20 -> :sswitch_db
        0x21 -> :sswitch_da
        0x22 -> :sswitch_d9
        0x23 -> :sswitch_d8
        0x24 -> :sswitch_d7
        0x25 -> :sswitch_d6
        0x26 -> :sswitch_d5
        0x27 -> :sswitch_d4
        0x28 -> :sswitch_d3
        0x29 -> :sswitch_d2
        0x2a -> :sswitch_d1
        0x2b -> :sswitch_d0
        0x2c -> :sswitch_cf
        0x2d -> :sswitch_ce
        0x2e -> :sswitch_cd
        0x2f -> :sswitch_cc
        0x30 -> :sswitch_cb
        0x31 -> :sswitch_ca
        0x32 -> :sswitch_c9
        0x33 -> :sswitch_c8
        0x34 -> :sswitch_c7
        0x35 -> :sswitch_c6
        0x36 -> :sswitch_c5
        0x37 -> :sswitch_c4
        0x38 -> :sswitch_c3
        0x39 -> :sswitch_c2
        0x3a -> :sswitch_c1
        0x3b -> :sswitch_c0
        0x3c -> :sswitch_bf
        0x3d -> :sswitch_be
        0x3e -> :sswitch_bd
        0x3f -> :sswitch_bc
        0x40 -> :sswitch_bb
        0x41 -> :sswitch_ba
        0x42 -> :sswitch_b9
        0x43 -> :sswitch_b8
        0x44 -> :sswitch_b7
        0x45 -> :sswitch_b6
        0x46 -> :sswitch_b5
        0x47 -> :sswitch_b4
        0x48 -> :sswitch_b3
        0x49 -> :sswitch_b2
        0x4a -> :sswitch_b1
        0x4b -> :sswitch_b0
        0x4c -> :sswitch_af
        0x4d -> :sswitch_ae
        0x4e -> :sswitch_ad
        0x4f -> :sswitch_ac
        0x50 -> :sswitch_ab
        0x51 -> :sswitch_aa
        0x52 -> :sswitch_a9
        0x53 -> :sswitch_a8
        0x54 -> :sswitch_a7
        0x55 -> :sswitch_a6
        0x56 -> :sswitch_a5
        0x57 -> :sswitch_a4
        0x58 -> :sswitch_a3
        0x59 -> :sswitch_a2
        0x5a -> :sswitch_a1
        0x5b -> :sswitch_a0
        0x5c -> :sswitch_9f
        0x5d -> :sswitch_9e
        0x5e -> :sswitch_9d
        0x5f -> :sswitch_9c
        0x60 -> :sswitch_9b
        0x61 -> :sswitch_9a
        0x62 -> :sswitch_99
        0x63 -> :sswitch_98
        0x64 -> :sswitch_97
        0x65 -> :sswitch_96
        0x66 -> :sswitch_95
        0x67 -> :sswitch_94
        0x68 -> :sswitch_93
        0x69 -> :sswitch_92
        0x6a -> :sswitch_91
        0x6b -> :sswitch_90
        0x6c -> :sswitch_8f
        0x6d -> :sswitch_8e
        0x6e -> :sswitch_8d
        0x6f -> :sswitch_8c
        0x70 -> :sswitch_8b
        0x71 -> :sswitch_8a
        0x72 -> :sswitch_89
        0x73 -> :sswitch_88
        0x74 -> :sswitch_87
        0x75 -> :sswitch_86
        0x76 -> :sswitch_85
        0x77 -> :sswitch_84
        0x78 -> :sswitch_83
        0x79 -> :sswitch_82
        0x7a -> :sswitch_81
        0x7b -> :sswitch_80
        0x7c -> :sswitch_7f
        0x7d -> :sswitch_7e
        0x7e -> :sswitch_7d
        0x7f -> :sswitch_7c
        0x80 -> :sswitch_7b
        0x81 -> :sswitch_7a
        0x82 -> :sswitch_79
        0x83 -> :sswitch_78
        0x84 -> :sswitch_77
        0x85 -> :sswitch_76
        0x86 -> :sswitch_75
        0x87 -> :sswitch_74
        0x88 -> :sswitch_73
        0x89 -> :sswitch_72
        0x8a -> :sswitch_71
        0x8b -> :sswitch_70
        0x8c -> :sswitch_6f
        0x8d -> :sswitch_6e
        0x8e -> :sswitch_6d
        0x8f -> :sswitch_6c
        0x90 -> :sswitch_6b
        0x91 -> :sswitch_6a
        0x92 -> :sswitch_69
        0x93 -> :sswitch_68
        0x94 -> :sswitch_67
        0x95 -> :sswitch_66
        0x96 -> :sswitch_65
        0x97 -> :sswitch_64
        0x98 -> :sswitch_63
        0x99 -> :sswitch_62
        0x9a -> :sswitch_61
        0x9b -> :sswitch_60
        0x9c -> :sswitch_5f
        0x9d -> :sswitch_5e
        0x9e -> :sswitch_5d
        0x9f -> :sswitch_5c
        0xa0 -> :sswitch_5b
        0xa1 -> :sswitch_5a
        0xa2 -> :sswitch_59
        0xa3 -> :sswitch_58
        0xa4 -> :sswitch_57
        0xa5 -> :sswitch_56
        0xa6 -> :sswitch_55
        0xa7 -> :sswitch_54
        0xa8 -> :sswitch_53
        0xa9 -> :sswitch_52
        0xaa -> :sswitch_51
        0xab -> :sswitch_50
        0xac -> :sswitch_4f
        0xad -> :sswitch_4e
        0xae -> :sswitch_4d
        0xaf -> :sswitch_4c
        0xb0 -> :sswitch_4b
        0xb1 -> :sswitch_4a
        0xb2 -> :sswitch_49
        0xb3 -> :sswitch_48
        0xb4 -> :sswitch_47
        0xb5 -> :sswitch_46
        0xb6 -> :sswitch_45
        0xb7 -> :sswitch_44
        0xb8 -> :sswitch_43
        0xb9 -> :sswitch_42
        0xba -> :sswitch_41
        0xbb -> :sswitch_40
        0xbc -> :sswitch_3f
        0xbd -> :sswitch_3e
        0xbe -> :sswitch_3d
        0xbf -> :sswitch_3c
        0xc0 -> :sswitch_3b
        0xc1 -> :sswitch_3a
        0xc2 -> :sswitch_39
        0xc3 -> :sswitch_38
        0xc4 -> :sswitch_37
        0xc5 -> :sswitch_36
        0xc6 -> :sswitch_35
        0xc7 -> :sswitch_34
        0xc8 -> :sswitch_33
        0xc9 -> :sswitch_32
        0xca -> :sswitch_31
        0xcb -> :sswitch_30
        0xcc -> :sswitch_2f
        0xcd -> :sswitch_2e
        0xce -> :sswitch_2d
        0xcf -> :sswitch_2c
        0xd0 -> :sswitch_2b
        0xd1 -> :sswitch_2a
        0xd2 -> :sswitch_29
        0xd3 -> :sswitch_28
        0xd4 -> :sswitch_27
        0xd5 -> :sswitch_26
        0xd6 -> :sswitch_25
        0xd7 -> :sswitch_24
        0xd8 -> :sswitch_23
        0xd9 -> :sswitch_22
        0xda -> :sswitch_21
        0xdb -> :sswitch_20
        0xdc -> :sswitch_1f
        0xdd -> :sswitch_1e
        0xde -> :sswitch_1d
        0xdf -> :sswitch_1c
        0xe0 -> :sswitch_1b
        0xe1 -> :sswitch_1a
        0xe2 -> :sswitch_19
        0xe3 -> :sswitch_18
        0xe4 -> :sswitch_17
        0xe5 -> :sswitch_16
        0xe6 -> :sswitch_15
        0xe7 -> :sswitch_14
        0xe8 -> :sswitch_13
        0xe9 -> :sswitch_12
        0xea -> :sswitch_11
        0xeb -> :sswitch_10
        0xec -> :sswitch_f
        0xed -> :sswitch_e
        0xee -> :sswitch_d
        0xef -> :sswitch_c
        0xf0 -> :sswitch_b
        0xf1 -> :sswitch_a
        0xf2 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 7090
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 7118
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7119
    return-object p0

    .line 7121
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7125
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 7126
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 7080
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 7112
    const/4 v0, 0x1

    return v0
.end method
