.class Landroid/net/wifi/rtt/ResponderConfig$1;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/ResponderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/ResponderConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v3, p1

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/net/MacAddress;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v5, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    move-object v4, v5

    :cond_1
    move-object/from16 v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v7, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-nez v17, :cond_3

    new-instance v13, Landroid/net/wifi/rtt/ResponderConfig;

    move-object v4, v13

    move-object v5, v1

    move/from16 v6, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    invoke-direct/range {v4 .. v12}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v13

    :cond_3
    new-instance v4, Landroid/net/wifi/rtt/ResponderConfig;

    move-object v8, v4

    move-object/from16 v9, v17

    move/from16 v10, v18

    move v11, v7

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v16, v23

    invoke-direct/range {v8 .. v16}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/ResponderConfig;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/rtt/ResponderConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderConfig$1;->newArray(I)[Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object p1

    return-object p1
.end method
