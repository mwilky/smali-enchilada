.class public final Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mDescriptors:[B

.field private final mName:Ljava/lang/String;

.field private final mProvider:Ljava/lang/String;

.field private final mSubclass:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    iput-byte p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptors()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSubclass()B
    .locals 1

    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
