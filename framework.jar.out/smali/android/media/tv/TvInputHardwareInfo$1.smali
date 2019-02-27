.class Landroid/media/tv/TvInputHardwareInfo$1;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TvInputHardwareInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/tv/TvInputHardwareInfo;

    invoke-direct {v1, v0}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo$1;)V

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputHardwareInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "TvInputHardwareInfo"

    const-string v3, "Exception creating TvInputHardwareInfo from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/tv/TvInputHardwareInfo;
    .locals 1

    new-array v0, p1, [Landroid/media/tv/TvInputHardwareInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->newArray(I)[Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    return-object p1
.end method
