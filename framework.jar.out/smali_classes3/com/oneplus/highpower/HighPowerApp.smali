.class public Lcom/oneplus/highpower/HighPowerApp;
.super Ljava/lang/Object;
.source "HighPowerApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isLocked:Z

.field public isStopped:Z

.field public pkgName:Ljava/lang/String;

.field public powerLevel:I

.field public timeStamp:J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/highpower/HighPowerApp$1;

    invoke-direct {v0}, Lcom/oneplus/highpower/HighPowerApp$1;-><init>()V

    sput-object v0, Lcom/oneplus/highpower/HighPowerApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oneplus/highpower/HighPowerApp;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    iput-boolean p3, p0, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iput-boolean p4, p0, Lcom/oneplus/highpower/HighPowerApp;->isStopped:Z

    iput-wide p5, p0, Lcom/oneplus/highpower/HighPowerApp;->timeStamp:J

    iput p7, p0, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/highpower/HighPowerApp;->isStopped:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/highpower/HighPowerApp;->timeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/oneplus/highpower/HighPowerApp;->isStopped:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/oneplus/highpower/HighPowerApp;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
