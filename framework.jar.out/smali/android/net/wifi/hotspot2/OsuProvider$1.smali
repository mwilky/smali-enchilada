.class Landroid/net/wifi/hotspot2/OsuProvider$1;
.super Ljava/lang/Object;
.source "OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/OsuProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/OsuProvider;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiSsid;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    invoke-virtual {v0, v15, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    new-instance v16, Landroid/net/wifi/hotspot2/OsuProvider;

    move-object/from16 v3, v16

    move-object v4, v2

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Landroid/net/wifi/hotspot2/OsuProvider;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Icon;)V

    return-object v16
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/hotspot2/OsuProvider;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object p1

    return-object p1
.end method
