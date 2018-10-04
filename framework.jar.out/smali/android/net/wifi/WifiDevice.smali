.class public Landroid/net/wifi/WifiDevice;
.super Ljava/lang/Object;
.source "WifiDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BLACKLISTED:I = 0x2

.field public static final CONNECTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCONNECTED:I


# instance fields
.field public connectedTime:J

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    :goto_0
    iput-object p1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/net/wifi/WifiDevice;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    iget-object v2, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
