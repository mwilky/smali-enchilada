.class public final Landroid/hardware/input/InputDeviceIdentifier;
.super Ljava/lang/Object;
.source "InputDeviceIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier$1;

    invoke-direct {v0}, Landroid/hardware/input/InputDeviceIdentifier$1;-><init>()V

    sput-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/InputDeviceIdentifier$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    iput p3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/hardware/input/InputDeviceIdentifier;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    iget v3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    iget v4, v2, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    iget v4, v2, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
