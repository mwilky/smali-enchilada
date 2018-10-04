.class Landroid/net/wifi/aware/PublishConfig$1;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/PublishConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/PublishConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/PublishConfig;
    .locals 14

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    new-instance v13, Landroid/net/wifi/aware/PublishConfig;

    move-object v0, v13

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/aware/PublishConfig;-><init>([B[B[BIIZZ)V

    return-object v13
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/PublishConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/PublishConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/aware/PublishConfig;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/aware/PublishConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/PublishConfig$1;->newArray(I)[Landroid/net/wifi/aware/PublishConfig;

    move-result-object p1

    return-object p1
.end method
