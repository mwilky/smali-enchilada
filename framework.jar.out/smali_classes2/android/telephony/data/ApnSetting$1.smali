.class Landroid/telephony/data/ApnSetting$1;
.super Ljava/lang/Object;
.source "ApnSetting.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/data/ApnSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1043
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->access$2600(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1040
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/data/ApnSetting;
    .locals 1
    .param p1, "size"    # I

    .line 1048
    new-array v0, p1, [Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1040
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$1;->newArray(I)[Landroid/telephony/data/ApnSetting;

    move-result-object p1

    return-object p1
.end method
