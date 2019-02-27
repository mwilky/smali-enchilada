.class Landroid/hardware/display/WifiDisplayStatus$1;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/WifiDisplayStatus;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    :cond_0
    move-object v10, v0

    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Landroid/hardware/display/WifiDisplay;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v11

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    aput-object v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/display/WifiDisplaySessionInfo;

    new-instance v13, Landroid/hardware/display/WifiDisplayStatus;

    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    return-object v13
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplayStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    new-array v0, p1, [Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplayStatus$1;->newArray(I)[Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    return-object p1
.end method
