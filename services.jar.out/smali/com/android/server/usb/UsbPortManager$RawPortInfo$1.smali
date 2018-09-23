.class Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    new-instance v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-object v0, v14

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v5, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIZIZIZ)V

    return-object v14
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .locals 1

    new-array v0, p1, [Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method
