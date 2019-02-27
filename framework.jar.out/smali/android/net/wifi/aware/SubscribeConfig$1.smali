.class Landroid/net/wifi/aware/SubscribeConfig$1;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/SubscribeConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;
    .locals 19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v1

    :goto_2
    new-instance v18, Landroid/net/wifi/aware/SubscribeConfig;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v8, v16

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZZIZI)V

    return-object v18
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/aware/SubscribeConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object p1

    return-object p1
.end method
