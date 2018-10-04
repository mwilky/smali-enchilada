.class public final Landroid/bluetooth/le/AdvertisingSetParameters;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERVAL_HIGH:I = 0x640

.field public static final INTERVAL_LOW:I = 0xa0

.field public static final INTERVAL_MAX:I = 0xffffff

.field public static final INTERVAL_MEDIUM:I = 0x190

.field public static final INTERVAL_MIN:I = 0xa0

.field private static final LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20

.field public static final TX_POWER_HIGH:I = 0x1

.field public static final TX_POWER_LOW:I = -0xf

.field public static final TX_POWER_MAX:I = 0x1

.field public static final TX_POWER_MEDIUM:I = -0x7

.field public static final TX_POWER_MIN:I = -0x7f

.field public static final TX_POWER_ULTRA_LOW:I = -0x15


# instance fields
.field private final mConnectable:Z

.field private final mIncludeTxPower:Z

.field private final mInterval:I

.field private final mIsAnonymous:Z

.field private final mIsLegacy:Z

.field private final mPrimaryPhy:I

.field private final mScannable:Z

.field private final mSecondaryPhy:I

.field private final mTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertisingSetParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    nop

    :cond_4
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertisingSetParameters$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZZZZZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    iput-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    iput p6, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    iput p7, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    iput p8, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    iput p9, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    return-void
.end method

.method synthetic constructor <init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIII)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    return v0
.end method

.method public getPrimaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    return v0
.end method

.method public getSecondaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    return v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    return v0
.end method

.method public includeTxPower()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    return v0
.end method

.method public isLegacy()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    return v0
.end method

.method public isScannable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingSetParameters [connectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLegacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", includeTxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
