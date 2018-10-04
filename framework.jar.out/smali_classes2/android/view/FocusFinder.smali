.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator;,
        Landroid/view/FocusFinder$FocusSorter;
    }
.end annotation


# static fields
.field private static final tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBestCandidateRect:Landroid/graphics/Rect;

.field private final mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

.field final mFocusedRect:Landroid/graphics/Rect;

.field final mOtherRect:Landroid/graphics/Rect;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

.field private final mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    sget-object v1, Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;->INSTANCE:Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    sget-object v1, Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;->INSTANCE:Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v0, Landroid/view/FocusFinder$FocusSorter;

    invoke-direct {v0}, Landroid/view/FocusFinder$FocusSorter;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder;->getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    if-eqz p2, :cond_0

    invoke-direct {p0, v7, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7, v8, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    throw v1
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p4

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/16 v4, 0x11

    if-eqz v8, :cond_1

    if-nez p3, :cond_0

    iget-object v0, v6, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-virtual {v8, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_1
    move-object v10, v0

    goto :goto_2

    :cond_1
    if-nez p3, :cond_6

    iget-object v0, v6, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    if-eq v9, v4, :cond_5

    if-eq v9, v3, :cond_5

    if-eq v9, v2, :cond_4

    if-eq v9, v1, :cond_4

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    invoke-direct {v6, v7, v0}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    move-object v10, p3

    :goto_2
    if-eq v9, v4, :cond_7

    if-eq v9, v3, :cond_7

    if-eq v9, v2, :cond_7

    if-eq v9, v1, :cond_7

    packed-switch v9, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move-object v0, v6

    move-object/from16 v1, p5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v0, v6

    move-object/from16 v1, p5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    nop

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch p5, :pswitch_data_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :pswitch_0
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p3, p1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    nop

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x11

    if-eq p4, v1, :cond_1

    const/16 v1, 0x21

    if-eq p4, v1, :cond_1

    const/16 v1, 0x42

    if-eq p4, v1, :cond_0

    const/16 v1, 0x82

    if-eq p4, v1, :cond_0

    packed-switch p4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :pswitch_0
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1
    :pswitch_1
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 5

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v3, v1

    move v0, v2

    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v1, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v1, :cond_0

    nop

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 2

    nop

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_1
    if-ne v1, p1, :cond_3

    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    return-object v2

    :cond_3
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    :cond_4
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    return-object p1

    :cond_5
    :goto_1
    return-object p1
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .locals 1

    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-nez p1, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_1
    return-object p0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    const/16 v0, 0x21

    if-eq p4, v0, :cond_4

    const/16 v0, 0x42

    if-eq p4, v0, :cond_2

    const/16 v0, 0x82

    if-ne p4, v0, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lt v0, p2, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lt v0, p1, :cond_3

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_3

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_5

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_5

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_7

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_7

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    move v1, v2

    nop

    :cond_7
    return v1
.end method

.method private static final isValidId(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 7

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, v0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder$FocusSorter;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    return-void
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    const/16 v3, 0x11

    if-eq p1, v3, :cond_4

    const/16 v3, 0x42

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-ge v3, v5, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v2

    :cond_4
    :goto_1
    return v4

    :cond_5
    :goto_2
    return v2
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    :cond_3
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v5

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    move v13, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v12, 0x1

    invoke-virtual {v1, v14, v11, v12, v12}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    invoke-direct {v0, v2, v3, v11, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v16

    if-nez v16, :cond_0

    goto :goto_3

    :cond_0
    const v16, 0x7fffffff

    const/16 v12, 0x21

    const/16 v0, 0x11

    if-eq v4, v0, :cond_4

    if-eq v4, v12, :cond_3

    const/16 v12, 0x42

    if-eq v4, v12, :cond_2

    const/16 v12, 0x82

    if-eq v4, v12, :cond_1

    :goto_1
    move/from16 v12, v16

    goto :goto_2

    :cond_1
    iget v12, v11, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    iget v12, v11, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_3
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v3, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v12, 0x1

    goto :goto_1

    :cond_4
    const/16 v17, 0x1

    iget v12, v11, Landroid/graphics/Rect;->right:I

    sub-int v12, v2, v12

    add-int/lit8 v16, v12, 0x1

    goto :goto_1

    :goto_2
    if-ge v12, v9, :cond_6

    if-eqz v7, :cond_5

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_6

    if-ge v12, v13, :cond_6

    :cond_5
    move v13, v12

    move-object v7, v14

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eq v4, v0, :cond_a

    const/16 v0, 0x21

    if-eq v4, v0, :cond_9

    const/16 v0, 0x42

    if-eq v4, v0, :cond_8

    const/16 v0, 0x82

    if-eq v4, v0, :cond_7

    :cond_6
    :goto_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    aput v12, p5, v0

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    aput v12, p5, v15

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    const/4 v15, 0x0

    neg-int v1, v12

    aput v1, p5, v0

    goto :goto_4

    :cond_a
    const/4 v15, 0x0

    neg-int v0, v12

    aput v0, p5, v15

    nop

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_b
    return-object v7
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v0, 0x11

    const/4 v1, 0x0

    if-eq p5, v0, :cond_3

    const/16 v0, 0x21

    if-eq p5, v0, :cond_2

    const/16 v0, 0x42

    if-eq p5, v0, :cond_1

    const/16 v0, 0x82

    if-eq p5, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    nop

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    :goto_1
    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eq v3, p3, :cond_5

    if-ne v3, p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v0, v3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v1, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, v1, p3}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    nop

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method getWeightedDistanceFor(JJ)J
    .locals 4

    const-wide/16 v0, 0xd

    mul-long/2addr v0, p1

    mul-long/2addr v0, p1

    mul-long v2, p3, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    nop

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    nop

    :goto_0
    return v1
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_9

    const/16 v0, 0x21

    if-eq p3, v0, :cond_6

    const/16 v0, 0x42

    if-eq p3, v0, :cond_3

    const/16 v0, 0x82

    if-ne p3, v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v3, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v0, v3, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v0, v3, :cond_5

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v3, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v3, :cond_8

    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_8

    move v1, v2

    nop

    :cond_8
    return v1

    :cond_9
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v0, v3, :cond_b

    :cond_a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_b

    move v1, v2

    nop

    :cond_b
    return v1
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, v3, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    :cond_4
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    :cond_6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v0, v3, :cond_7

    move v1, v2

    nop

    :cond_7
    return v1
.end method
