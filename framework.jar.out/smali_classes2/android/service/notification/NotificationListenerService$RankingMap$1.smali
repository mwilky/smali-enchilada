.class Landroid/service/notification/NotificationListenerService$RankingMap$1;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService$RankingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/NotificationListenerService$RankingMap;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    new-instance v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v2, v1, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    new-array v0, p1, [Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap$1;->newArray(I)[Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    return-object p1
.end method
