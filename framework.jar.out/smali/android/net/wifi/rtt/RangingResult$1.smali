.class Landroid/net/wifi/rtt/RangingResult$1;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/RangingResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    const/4 v0, 0x0

    if-eqz v13, :cond_0

    sget-object v1, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/MacAddress;

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    :goto_0
    move-object v15, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    const/4 v0, 0x0

    if-eqz v16, :cond_1

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    move-object v0, v1

    :cond_1
    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    if-eqz v16, :cond_2

    new-instance v27, Landroid/net/wifi/rtt/RangingResult;

    move-object/from16 v0, v27

    move v1, v12

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-wide/from16 v10, v25

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BJ)V

    return-object v27

    :cond_2
    new-instance v27, Landroid/net/wifi/rtt/RangingResult;

    move-object/from16 v0, v27

    move v1, v12

    move-object v2, v15

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-wide/from16 v10, v25

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/MacAddress;IIIII[B[BJ)V

    return-object v27
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/RangingResult;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/rtt/RangingResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->newArray(I)[Landroid/net/wifi/rtt/RangingResult;

    move-result-object p1

    return-object p1
.end method
