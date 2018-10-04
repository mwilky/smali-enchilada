.class public Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field private mPlaceholderCount:I

.field private mResolverListController:Lcom/android/internal/app/ResolverListController;

.field mUnfilteredResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ",
            "Lcom/android/internal/app/ResolverListController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    iput p6, p1, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    iput-object p8, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    return-void
.end method

.method private addParallelResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, v11

    move-object v4, v9

    move-object v5, v1

    move-object v6, p3

    move-object v7, p2

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setPinned(Z)V

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    if-ne v10, v9, :cond_0

    const/4 v3, 0x1

    move v4, v3

    move v3, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    if-nez p2, :cond_0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v3, 0x1080712

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v6, p2

    check-cast v6, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v2, v5, v6}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v5, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private postListReadyRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;-><init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$902(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p4, v1, p5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v4, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_5

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, p2, 0x1

    :goto_0
    if-gt v6, p3, :cond_4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v7, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v9, v9, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    nop

    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    :cond_5
    move v5, p2

    :goto_2
    if-gt v5, p3, :cond_7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v1, :cond_6

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v9, v9, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_3
    invoke-direct {p0, v6, v8, p5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method private processSortedList(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/16 v0, 0x1c

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    move v11, v1

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_5

    move v1, v10

    :goto_0
    iget-object v2, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    instance-of v6, v2, Landroid/content/pm/LabeledIntent;

    if-eqz v6, :cond_2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v12

    iput v12, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v12

    iput v12, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iget v12, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iput v12, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    new-array v12, v9, [I

    aput v0, v12, v10

    invoke-static {v12}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x3e7

    if-eq v6, v12, :cond_4

    invoke-virtual {v5}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v12

    if-eqz v12, :cond_4

    iput-boolean v9, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v10, v4, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v12

    if-eqz v12, :cond_4

    iput-boolean v9, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v10, v4, Landroid/content/pm/ResolveInfo;->icon:I

    :cond_4
    :goto_1
    new-instance v15, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v13, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v12, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v12}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    move-object v12, v15

    move-object v14, v2

    move-object v0, v15

    move-object v15, v4

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-direct {v7, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_5
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v0, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-boolean v10, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    move-object v14, v0

    move-object v15, v1

    move v13, v2

    move-object v12, v3

    move v0, v9

    :goto_3
    if-ge v0, v11, :cond_9

    if-nez v12, :cond_6

    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v12, v1

    :cond_6
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v1, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_7
    move-object v4, v1

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v16, v0, -0x1

    move-object v1, v7

    move-object v2, v8

    move v3, v13

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v18, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    move-object/from16 v14, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move v13, v0

    move-object v15, v1

    move-object v12, v2

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v11, -0x1

    move-object v1, v7

    move-object v2, v8

    move v3, v13

    move-object v5, v14

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    :cond_a
    new-array v0, v9, [I

    const/16 v1, 0x1c

    aput v1, v0, v10

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v8, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_c

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_0
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v3, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0xc0000

    sget-object v5, Landroid/os/UserHandle;->PARALLEL:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v12, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v6, v7, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    move-object v11, v5

    move-object v13, v0

    move-object v14, v4

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-virtual {v5, v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setParallelApp(Z)V

    const-string v6, "ResolverActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addResolveInfo with: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addParallelResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->postListReadyRunnable()V

    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    :goto_1
    nop

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayResolveInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getPlaceholderCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    move-object v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected rebuildList()Z
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    move-object v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/16 v6, 0x3e7

    if-eq v5, v6, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v6, v6, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v6, v6, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v3, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling getLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    if-lez v1, :cond_a

    const-string v1, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rebuildList currentResolveList.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-ne v5, v0, :cond_6

    move v5, v2

    goto :goto_4

    :cond_6
    nop

    move v5, v4

    :goto_4
    invoke-virtual {v1, v0, v5}, Lcom/android/internal/app/ResolverListController;->filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v5, v5, -0x1

    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->setPlaceholderCount(I)V

    new-instance v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;-><init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    new-array v2, v2, [Ljava/util/List;

    aput-object v0, v2, v4

    invoke-virtual {v6, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->postListReadyRunnable()V

    return v4

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    return v2

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processSortedList(Ljava/util/List;)V

    return v2
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setPlaceholderCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mPlaceholderCount:I

    return-void
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0

    :cond_2
    return-object v0
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverListController;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->updateModel(Landroid/content/ComponentName;)V

    return-void
.end method
