.class Landroid/telephony/data/DataProfile$1;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/data/DataProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/DataProfile;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 273
    new-instance v0, Landroid/telephony/data/DataProfile;

    invoke-direct {v0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/data/DataProfile;
    .locals 1
    .param p1, "size"    # I

    .line 278
    new-array v0, p1, [Landroid/telephony/data/DataProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile$1;->newArray(I)[Landroid/telephony/data/DataProfile;

    move-result-object p1

    return-object p1
.end method
