.class Landroid/telephony/PhysicalChannelConfig$1;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhysicalChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/PhysicalChannelConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/PhysicalChannelConfig;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 139
    new-instance v0, Landroid/telephony/PhysicalChannelConfig;

    invoke-direct {v0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/telephony/PhysicalChannelConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/PhysicalChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/PhysicalChannelConfig;
    .locals 1
    .param p1, "size"    # I

    .line 143
    new-array v0, p1, [Landroid/telephony/PhysicalChannelConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/telephony/PhysicalChannelConfig$1;->newArray(I)[Landroid/telephony/PhysicalChannelConfig;

    move-result-object p1

    return-object p1
.end method
