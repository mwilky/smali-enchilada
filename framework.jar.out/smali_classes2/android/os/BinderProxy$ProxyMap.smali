.class final Landroid/os/BinderProxy$ProxyMap;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyMap"
.end annotation


# static fields
.field private static final CRASH_AT_SIZE:I = 0x4e20

.field private static final LOG_MAIN_INDEX_SIZE:I = 0x8

.field private static final MAIN_INDEX_MASK:I = 0xff

.field private static final MAIN_INDEX_SIZE:I = 0x100

.field private static final WARN_INCREMENT:I = 0xa

.field private static isAgingVersion:Z


# instance fields
.field private final mMainIndexKeys:[[Ljava/lang/Long;

.field private final mMainIndexValues:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/BinderProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRandom:I

.field private mWarnBucketSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/BinderProxy$ProxyMap;->isAgingVersion:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    const/16 v0, 0x100

    new-array v1, v0, [[Ljava/lang/Long;

    iput-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/BinderProxy$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/BinderProxy$ProxyMap;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    return-void
.end method

.method private dumpPerUidProxyCounts()V
    .locals 7

    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Binder"

    const-string v2, "Per Uid Binder Proxy Counts:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v4, "Binder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpProxyInterfaceCounts()V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BinderProxy;

    if-nez v8, :cond_0

    const-string v9, "<cleared weak-ref>"

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v8}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v9, "<exception during getDescriptor>"

    :goto_2
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const/4 v11, 0x1

    if-nez v10, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    sget-object v2, Landroid/os/-$$Lambda$BinderProxy$ProxyMap$huB_NMtOmTDIIYkL7mXm-Otlfnw;->INSTANCE:Landroid/os/-$$Lambda$BinderProxy$ProxyMap$huB_NMtOmTDIIYkL7mXm-Otlfnw;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string v2, "Binder"

    const-string v4, "BinderProxy descriptor histogram (top ten):"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    array-length v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    :goto_4
    if-ge v3, v2, :cond_4

    const-string v4, "Binder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private static hash(J)I
    .locals 4

    const/4 v0, 0x2

    shr-long v0, p0, v0

    const/16 v2, 0xa

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static synthetic lambda$dumpProxyInterfaceCounts$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private remove(II)V
    .locals 4

    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-eq p2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    aput-object v3, v0, p2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private size()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private unclearedSize()I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method get(J)Landroid/os/BinderProxy;
    .locals 10

    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-nez v8, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BinderProxy;

    if-eqz v9, :cond_1

    return-object v9

    :cond_1
    invoke-direct {p0, v0, v5}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    return-object v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method set(JLandroid/os/BinderProxy;)V
    .locals 10

    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v0

    move-object v1, v4

    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    new-array v4, v2, [Ljava/lang/Long;

    aput-object v4, v3, v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v5, v5, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_1

    iget v7, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/2addr v7, v2

    iput v7, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/lit8 v2, v6, 0x1

    sub-int v2, v3, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v2

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v7, v2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v7, v2

    invoke-direct {p0, v0, v7}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v2, v2, v0

    array-length v6, v2

    if-ne v6, v3, :cond_4

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [Ljava/lang/Long;

    invoke-static {v2, v5, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v3

    iget-object v5, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aput-object v6, v5, v0

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    :goto_1
    iget v5, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    if-lt v3, v5, :cond_6

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result v5

    const-string v6, "Binder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BinderProxy map growth! bucket size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " total = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    sget-boolean v6, Landroid/os/BinderProxy$ProxyMap;->isAgingVersion:Z

    if-nez v6, :cond_6

    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_6

    const/16 v6, 0x4e20

    if-lt v5, v6, :cond_6

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v7

    if-ge v7, v6, :cond_5

    const/4 v6, 0x3

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_6

    const-string v6, "Binder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BinderProxy map has many cleared entries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " are cleared"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->gc()V

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Binder ProxyMap has too many entries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (total), "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (uncleared), "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (uncleared after GC). BinderProxy leak?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_6
    :goto_2
    return-void
.end method
