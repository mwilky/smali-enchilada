.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1439
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 1440
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/ContentService$ObserverNode;

    .line 1387
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 1504
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne v9, v0, :cond_2

    .line 1508
    iget-object v0, v8, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    :goto_0
    move-object v10, v0

    .line 1509
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1511
    .local v0, "next":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1512
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return-void

    .line 1515
    .end local v0    # "next":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_0
    move-object/from16 v15, p3

    .line 1508
    move-object v0, v10

    goto :goto_0

    .line 1517
    :cond_1
    move-object/from16 v15, p3

    iget-object v11, v8, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v12

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    return-void

    .line 1529
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    :cond_2
    move-object/from16 v15, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, "segment":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1533
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1534
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 1535
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1536
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1537
    add-int/lit8 v13, v9, 0x1

    move-object v11, v3

    move-object/from16 v12, p1

    move-object v14, v15

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1539
    return-void

    .line 1534
    .end local v3    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, p3

    goto :goto_1

    .line 1544
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v2, v0}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    add-int/lit8 v13, v9, 0x1

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1548
    return-void

    .line 1531
    .end local v1    # "N":I
    .end local v2    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") used for observer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .locals 16
    .param p1, "leaf"    # Z
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .local p6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v6, p0

    move/from16 v7, p5

    .line 1582
    iget-object v0, v6, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1583
    .local v8, "N":I
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 1584
    .local v9, "observerBinder":Landroid/os/IBinder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v8, :cond_7

    .line 1585
    iget-object v0, v6, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1589
    .local v12, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v9, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    move v13, v0

    .line 1590
    .local v13, "selfChange":Z
    if-eqz v13, :cond_3

    if-nez p3, :cond_3

    .line 1591
    nop

    .line 1584
    .end local v12    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v13    # "selfChange":Z
    :cond_2
    :goto_3
    move-object/from16 v0, p6

    goto :goto_4

    .line 1595
    .restart local v12    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v13    # "selfChange":Z
    :cond_3
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    .line 1596
    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$300(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1597
    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$300(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v0

    if-ne v7, v0, :cond_2

    .line 1599
    :cond_4
    if-eqz p1, :cond_5

    .line 1603
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_6

    iget-boolean v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v0, :cond_6

    .line 1607
    goto :goto_3

    .line 1612
    :cond_5
    iget-boolean v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v0, :cond_6

    .line 1615
    goto :goto_3

    .line 1621
    :cond_6
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v2, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1624
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v3, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    move-object v0, v5

    move-object v1, v6

    move v14, v3

    move v3, v13

    move-object v10, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZII)V

    .line 1621
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    .end local v12    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v13    # "selfChange":Z
    :goto_4
    add-int/lit8 v1, v11, 0x1

    .end local v11    # "i":I
    .local v1, "i":I
    move v0, v1

    goto :goto_1

    .line 1630
    .end local v1    # "i":I
    :cond_7
    move-object/from16 v0, p6

    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1486
    if-nez p1, :cond_0

    .line 1487
    const/4 v0, 0x0

    return v0

    .line 1489
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I

    .line 1474
    if-eqz p1, :cond_1

    .line 1475
    if-nez p2, :cond_0

    .line 1476
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1478
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1481
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    .line 1496
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1498
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .local p7, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1638
    const/4 v9, 0x0

    .line 1639
    .local v9, "segment":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v10

    .line 1640
    .local v10, "segmentCount":I
    if-lt v8, v10, :cond_0

    .line 1643
    const/4 v1, 0x1

    move-object v0, v7

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    goto :goto_0

    .line 1645
    :cond_0
    if-ge v8, v10, :cond_1

    .line 1646
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1650
    const/4 v1, 0x0

    move-object v0, v7

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1654
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1655
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1656
    iget-object v2, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1657
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v9, :cond_2

    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1659
    :cond_2
    add-int/lit8 v13, v8, 0x1

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1661
    if-eqz v9, :cond_3

    .line 1662
    goto :goto_2

    .line 1655
    .end local v2    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1666
    .end local v1    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    move-object v0, p0

    move-object/from16 v1, p4

    .line 1444
    const/4 v2, 0x0

    .line 1445
    .local v2, "innerName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v3, :cond_1

    .line 1446
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1447
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1449
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1451
    :goto_0
    move v3, v10

    .local v3, "i":I
    :goto_1
    move v12, v3

    .end local v3    # "i":I
    .local v12, "i":I
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_1

    .line 1452
    aget v3, p6, v11

    add-int/2addr v3, v11

    aput v3, p6, v11

    .line 1453
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1451
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1457
    .end local v3    # "i":I
    :cond_1
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1458
    if-nez v2, :cond_3

    .line 1459
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1460
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_2

    .line 1462
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1465
    .end local v2    # "innerName":Ljava/lang/String;
    .local v12, "innerName":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v12, v2

    move v2, v10

    .local v2, "i":I
    :goto_3
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    .line 1466
    aget v2, p6, v10

    add-int/2addr v2, v11

    aput v2, p6, v10

    .line 1467
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 1465
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 1471
    .end local v12    # "innerName":Ljava/lang/String;
    .local v2, "innerName":Ljava/lang/String;
    :cond_4
    move-object v12, v2

    .end local v2    # "innerName":Ljava/lang/String;
    .restart local v12    # "innerName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 7
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 1551
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1552
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "size":I
    :goto_0
    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 1553
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v4

    .line 1554
    .local v4, "empty":Z
    if-eqz v4, :cond_0

    .line 1555
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1556
    add-int/lit8 v0, v0, -0x1

    .line 1557
    add-int/lit8 v2, v2, -0x1

    .line 1552
    .end local v4    # "empty":Z
    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    .line 1561
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1562
    .local v0, "observerBinder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1563
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 1564
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1565
    .local v5, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_2

    .line 1566
    iget-object v6, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1568
    invoke-interface {v0, v5, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1569
    goto :goto_2

    .line 1563
    .end local v5    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1573
    .end local v4    # "i":I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1574
    return v3

    .line 1576
    :cond_4
    return v1
.end method
