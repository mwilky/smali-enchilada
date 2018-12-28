.class public Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusTouchWinJudge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;,
        Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge; = null

.field private static final TAG:Ljava/lang/String; = "OnePlusTouchWinJudge"

.field private static mLastTouchWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mTouchWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private touchWindowListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private canSkipNotifyLocked(IIIII)Z
    .locals 4

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v0, p2, :cond_1

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    if-ne v0, p3, :cond_1

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    if-ne v0, p4, :cond_1

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    if-ne v0, p5, :cond_1

    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canSkipLocked true. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final getInstance()Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-direct {v0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTANCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    return-object v0
.end method

.method private notifyAddTouchWindows(IILjava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;->addTouchWindow(IILjava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyIfWindowRemovedLocked()Z
    .locals 10

    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyIfWindowRemovedLocked: mLastTouchWindow->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTouchWindow->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v5, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    iget v6, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    iget-object v7, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    iget v9, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->notifyRemoveTouchWindows(IILjava/lang/String;II)V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    const-string v5, "OnePlusTouchWinJudge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyIfWindowRemovedLocked: win added-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x1

    return v4

    :cond_4
    goto :goto_1

    :cond_5
    return v0
.end method

.method private notifyRemoveTouchWindows(IILjava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;->removeTouchWindow(IILjava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addUidtoTouchWindowUids(IILjava/lang/String;III)V
    .locals 17

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUidtoTouchWindowUids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " w*h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v13, p1

    move-object/from16 v12, p3

    :goto_0
    if-eqz v9, :cond_8

    if-nez v10, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x7db

    if-eq v11, v0, :cond_6

    const/16 v0, 0x7dc

    if-ne v11, v0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v14, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v0, v8, :cond_4

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    if-ne v0, v9, :cond_4

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    if-ne v0, v10, :cond_4

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    if-ne v0, v11, :cond_4

    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has already put in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v14

    return-void

    :cond_4
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v7, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    move-object v1, v7

    move v2, v13

    move v3, v8

    move-object v4, v12

    move v5, v9

    move v6, v10

    move-object v12, v7

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;-><init>(IILjava/lang/String;III)V

    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move v2, v13

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->canSkipNotifyLocked(IIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    monitor-exit v14

    return-void

    :cond_5
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->notifyAddTouchWindows(IILjava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_1
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "OnePlusTouchWinJudge"

    const-string/jumbo v1, "window type is input method!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public getTouchWindow()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isContainPid(I)Z
    .locals 7

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OnePlusTouchWinJudge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isContainPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v3, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v3, p1, :cond_2

    monitor-exit v0

    return v4

    :cond_3
    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v5, v5, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v5, p1, :cond_4

    monitor-exit v0

    return v4

    :cond_5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isContainUid(I)Z
    .locals 5

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusTouchWinJudge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isContainUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mLastTouchWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mLastTouchWindow.contains(uid):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|mTouchWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mTouchWindow.contains(uid):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFindFocusedWindow()V
    .locals 2

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->notifyIfWindowRemovedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerTouchWindowListener(Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterTouchWindowListener(Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
