.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mMode:I

.field private final mOp:I

.field private final mProxyPackageName:Ljava/lang/String;

.field private final mProxyUid:I

.field private final mRejectTimes:[J

.field private final mRunning:Z

.field private final mTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJIILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v1, 0x0

    aput-wide p3, v0, v1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    aput-wide p5, v0, v1

    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v0, -0x1

    if-ne p7, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    iput-object p9, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[J[JIILjava/lang/String;)V
    .locals 11

    const/4 v0, -0x1

    move/from16 v10, p5

    if-ne v10, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v10

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II[J[JIZILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    invoke-static {p4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p5, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    iput-boolean p6, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    iput-object p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    return v0
.end method

.method public getLastAccessBackgroundTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessForegroundTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectBackgroundTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectForegroundTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectTimeFor(I)J
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getLastTimeFor(I)J
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public getOp()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyUid()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    return v0
.end method

.method public getRejectTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
