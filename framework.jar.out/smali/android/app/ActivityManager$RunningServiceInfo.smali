.class public Landroid/app/ActivityManager$RunningServiceInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningServiceInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FOREGROUND:I = 0x2

.field public static final FLAG_PERSISTENT_PROCESS:I = 0x8

.field public static final FLAG_STARTED:I = 0x1

.field public static final FLAG_SYSTEM_PROCESS:I = 0x4


# instance fields
.field public activeSince:J

.field public clientCount:I

.field public clientLabel:I

.field public clientPackage:Ljava/lang/String;

.field public crashCount:I

.field public flags:I

.field public foreground:Z

.field public lastActivityTime:J

.field public pid:I

.field public process:Ljava/lang/String;

.field public restarting:J

.field public service:Landroid/content/ComponentName;

.field public started:Z

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2515
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2475
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2525
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2526
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .line 2370
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2478
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2499
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 2500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 2501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 2502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 2503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 2504
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 2505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 2506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 2507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 2508
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 2509
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2511
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 2512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 2513
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2482
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2483
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2484
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2486
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2487
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2488
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2489
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2491
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2492
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2493
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2495
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2496
    return-void
.end method
