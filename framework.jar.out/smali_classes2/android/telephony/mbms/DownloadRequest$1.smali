.class Landroid/telephony/mbms/DownloadRequest$1;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/mbms/DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/DownloadRequest;
    .locals 2

    new-instance v0, Landroid/telephony/mbms/DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/os/Parcel;Landroid/telephony/mbms/DownloadRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/mbms/DownloadRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/mbms/DownloadRequest;
    .locals 1

    new-array v0, p1, [Landroid/telephony/mbms/DownloadRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/mbms/DownloadRequest$1;->newArray(I)[Landroid/telephony/mbms/DownloadRequest;

    move-result-object p1

    return-object p1
.end method
