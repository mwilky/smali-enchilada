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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v9, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne v9, v0, :cond_2

    iget-object v0, v8, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v10, v0

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

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

    return-void

    :cond_0
    move-object/from16 v15, p3

    move-object v0, v10

    goto :goto_0

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

    return-void

    :cond_2
    move-object/from16 v15, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

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

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, p3

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v2, v0}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    return-void

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

    move-object/from16 v6, p0

    move/from16 v7, p5

    iget-object v0, v6, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    move-object v9, v0

    const/4 v0, 0x0

    :goto_1
    move v11, v0

    if-ge v11, v8, :cond_7

    iget-object v0, v6, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

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

    if-eqz v13, :cond_3

    if-nez p3, :cond_3

    nop

    :cond_2
    :goto_3
    move-object/from16 v0, p6

    goto :goto_4

    :cond_3
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$300(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v1

    if-eq v1, v0, :cond_4

    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$300(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v0

    if-ne v7, v0, :cond_2

    :cond_4
    if-eqz p1, :cond_5

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_6

    iget-boolean v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_5
    iget-boolean v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v2, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v0, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

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

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v11, 0x1

    move v0, v1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p6

    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

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

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 9

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

    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .locals 19
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

    move-object/from16 v7, p0

    move/from16 v8, p2

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v10

    if-lt v8, v10, :cond_0

    const/4 v1, 0x1

    move-object v0, v7

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    if-ge v8, v10, :cond_1

    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, v7

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    if-eqz v9, :cond_2

    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

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

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_0

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

    :goto_0
    move v3, v10

    :goto_1
    move v12, v3

    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_1

    aget v3, p6, v11

    add-int/2addr v3, v11

    aput v3, p6, v11

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

    add-int/lit8 v3, v12, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    if-nez v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_2

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

    :cond_3
    :goto_2
    move-object v12, v2

    move v2, v10

    :goto_3
    move v13, v2

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    aget v2, p6, v10

    add-int/2addr v2, v11

    aput v2, p6, v10

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

    add-int/lit8 v2, v13, 0x1

    goto :goto_3

    :cond_4
    move-object v12, v2

    :cond_5
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, v5, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

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

    return v3

    :cond_4
    return v1
.end method
