.class public Lcom/android/internal/app/procstats/SparseMappingTable;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/SparseMappingTable$Table;
    }
.end annotation


# static fields
.field private static final ARRAY_MASK:I = 0xff

.field private static final ARRAY_SHIFT:I = 0x8

.field public static final ARRAY_SIZE:I = 0x1000

.field private static final ID_MASK:I = 0xff

.field private static final ID_SHIFT:I = 0x0

.field private static final INDEX_MASK:I = 0xffff

.field private static final INDEX_SHIFT:I = 0x10

.field public static final INVALID_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SparseMappingTable"


# instance fields
.field private final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[J>;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mSequence:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/procstats/SparseMappingTable;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return p1
.end method

.method static synthetic access$212(Lcom/android/internal/app/procstats/SparseMappingTable;I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    return-void
.end method

.method public static getArrayFromKey(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getIdFromKey(I)B
    .locals 1

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static getIndexFromKey(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static logOrThrow(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "SparseMappingTable"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 8

    array-length v0, p1

    if-le p2, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad array lengths: got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " array is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_1

    int-to-long v3, v2

    aput-wide v3, p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p1, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-string v3, "SparseMappingTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time val negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    long-to-int v3, v1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dumpInternalState(Z)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SparseMappingTable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNextIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLongs.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move v5, v2

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_0

    iget v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, " %4d %d 0x%016x %-19d\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aget-wide v9, v4, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aget-wide v9, v4, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [J

    invoke-static {p1, v4, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->readCompactedLongArray(Landroid/os/Parcel;[JI)V

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "73252178"

    aput-object v4, v3, v1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected array of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    array-length v3, v2

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    return-void
.end method
