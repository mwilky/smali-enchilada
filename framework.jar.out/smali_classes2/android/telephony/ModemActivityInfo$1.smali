.class Landroid/telephony/ModemActivityInfo$1;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ModemActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ModemActivityInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/4 v0, 0x5

    new-array v12, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    new-instance v15, Landroid/telephony/ModemActivityInfo;

    move-object v0, v15

    move-wide v1, v8

    move v3, v10

    move v4, v11

    move-object v5, v12

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    return-object v15
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/ModemActivityInfo;
    .locals 1

    new-array v0, p1, [Landroid/telephony/ModemActivityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->newArray(I)[Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method
