.class public Landroid/net/wifi/RttManager$ParcelableRttParams;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$ParcelableRttParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mParams:[Landroid/net/wifi/RttManager$RttParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/RttManager$RttParams;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->interval:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
