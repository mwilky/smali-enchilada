.class Landroid/location/GpsClock$1;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsClock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 400
    new-instance v0, Landroid/location/GpsClock;

    invoke-direct {v0}, Landroid/location/GpsClock;-><init>()V

    .line 402
    .local v0, "gpsClock":Landroid/location/GpsClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->access$002(Landroid/location/GpsClock;S)S

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->access$102(Landroid/location/GpsClock;S)S

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->access$202(Landroid/location/GpsClock;B)B

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$302(Landroid/location/GpsClock;J)J

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$402(Landroid/location/GpsClock;D)D

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$502(Landroid/location/GpsClock;J)J

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$602(Landroid/location/GpsClock;D)D

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$702(Landroid/location/GpsClock;D)D

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$802(Landroid/location/GpsClock;D)D

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->access$902(Landroid/location/GpsClock;D)D

    .line 413
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GpsClock;
    .locals 1
    .param p1, "size"    # I

    .line 418
    new-array v0, p1, [Landroid/location/GpsClock;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->newArray(I)[Landroid/location/GpsClock;

    move-result-object p1

    return-object p1
.end method
