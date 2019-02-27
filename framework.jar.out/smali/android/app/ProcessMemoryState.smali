.class public Landroid/app/ProcessMemoryState;
.super Ljava/lang/Object;
.source "ProcessMemoryState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheInBytes:J

.field public oomScore:I

.field public pgfault:J

.field public pgmajfault:J

.field public processName:Ljava/lang/String;

.field public rssInBytes:J

.field public swapInBytes:J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ProcessMemoryState$1;

    invoke-direct {v0}, Landroid/app/ProcessMemoryState$1;-><init>()V

    sput-object v0, Landroid/app/ProcessMemoryState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ProcessMemoryState;->uid:I

    iput-object p2, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iput p3, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    iput-wide p4, p0, Landroid/app/ProcessMemoryState;->pgfault:J

    iput-wide p6, p0, Landroid/app/ProcessMemoryState;->pgmajfault:J

    iput-wide p8, p0, Landroid/app/ProcessMemoryState;->rssInBytes:J

    iput-wide p10, p0, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    iput-wide p12, p0, Landroid/app/ProcessMemoryState;->swapInBytes:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->pgfault:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->pgmajfault:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->rssInBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProcessMemoryState;->swapInBytes:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProcessMemoryState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ProcessMemoryState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->pgfault:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->pgmajfault:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->rssInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ProcessMemoryState;->swapInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
