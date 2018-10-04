.class public Lcom/android/internal/statusbar/NotificationVisibility;
.super Ljava/lang/Object;
.source "NotificationVisibility.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "NoViz"

.field private static sNexrId:I

.field private static sPool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field id:I

.field public key:Ljava/lang/String;

.field public rank:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    sget v0, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->id:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/statusbar/NotificationVisibility;-><init>()V

    iput-object p1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iput p3, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iput-boolean p4, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method private static obtain()Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 2

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/NotificationVisibility;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    invoke-static {}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    invoke-static {}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    iput-object p0, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iput p1, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iput p2, v0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iput-boolean p3, v0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iget-boolean v3, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/statusbar/NotificationVisibility;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationVisibility(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    if-eqz v1, :cond_0

    const-string v1, " visible"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
