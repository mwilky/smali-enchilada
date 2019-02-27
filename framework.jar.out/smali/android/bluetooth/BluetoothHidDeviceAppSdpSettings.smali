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

    .line 86
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "subclass"    # B
    .param p5, "descriptors"    # [B

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    .line 57
    iput-byte p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    .line 58
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptors()[B
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSubclass()B
    .locals 1

    .line 74
    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 113
    return-void
.end method
