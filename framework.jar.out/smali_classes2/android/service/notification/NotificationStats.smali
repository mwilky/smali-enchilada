.class public final Landroid/service/notification/NotificationStats;
.super Ljava/lang/Object;
.source "NotificationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationStats$DismissalSurface;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISMISSAL_AOD:I = 0x2

.field public static final DISMISSAL_NOT_DISMISSED:I = -0x1

.field public static final DISMISSAL_OTHER:I = 0x0

.field public static final DISMISSAL_PEEK:I = 0x1

.field public static final DISMISSAL_SHADE:I = 0x3


# instance fields
.field private mDirectReplied:Z

.field private mDismissalSurface:I

.field private mExpanded:Z

.field private mInteracted:Z

.field private mSeen:Z

.field private mSnoozed:Z

.field private mViewedSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationStats$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationStats$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    nop

    :cond_5
    iput-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

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

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotificationStats;

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSeen:Z

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mExpanded:Z

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mInteracted:Z

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget v3, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    iget v4, v2, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    if-ne v3, v4, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public getDismissalSurface()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return v0
.end method

.method public hasDirectReplied()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    return v0
.end method

.method public hasExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    return v0
.end method

.method public hasInteracted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return v0
.end method

.method public hasSeen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return v0
.end method

.method public hasSnoozed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    return v0
.end method

.method public hasViewedSettings()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    add-int/2addr v1, v0

    return v1
.end method

.method public setDirectReplied()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public setDismissalSurface(I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return-void
.end method

.method public setExpanded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public setSeen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return-void
.end method

.method public setSnoozed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public setViewedSettings()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDirectReplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSnoozed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewedSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInteracted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissalSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
