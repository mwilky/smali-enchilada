.class Landroid/hardware/radio/Announcement$1;
.super Ljava/lang/Object;
.source "Announcement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/Announcement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/Announcement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/Announcement;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Landroid/hardware/radio/Announcement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/Announcement;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/Announcement$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/hardware/radio/Announcement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/Announcement;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/Announcement;
    .locals 1
    .param p1, "size"    # I

    .line 118
    new-array v0, p1, [Landroid/hardware/radio/Announcement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/hardware/radio/Announcement$1;->newArray(I)[Landroid/hardware/radio/Announcement;

    move-result-object p1

    return-object p1
.end method
