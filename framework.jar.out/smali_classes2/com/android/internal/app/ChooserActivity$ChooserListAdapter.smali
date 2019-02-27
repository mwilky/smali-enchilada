.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_SERVICE_TARGETS:I = 0x4

.field private static final MAX_TARGETS_PER_SERVICE:I = 0x2

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLateFee:F

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowServiceTargets:Z

.field private mTargetsNeedPruning:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V
    .locals 20
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

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    iput-object v11, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    const/4 v8, 0x0

    iput-boolean v8, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mTargetsNeedPruning:Z

    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move v0, v8

    :goto_0
    move v13, v0

    array-length v0, v12

    if-ge v13, v0, :cond_8

    aget-object v14, v12, v13

    if-nez v14, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_1

    :try_start_0
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v9, v0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v1, v0

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    const/high16 v0, 0x10000

    invoke-virtual {v9, v14, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v2, v1

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    move-object v0, v2

    if-nez v0, :cond_4

    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_4
    const-string/jumbo v1, "user"

    invoke-virtual {v11, v1}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/UserManager;

    instance-of v1, v14, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_5

    move-object v1, v14

    check-cast v1, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v7, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iget v2, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v7, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x1c

    aput v3, v2, v8

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x3e7

    if-eq v5, v2, :cond_7

    invoke-virtual {v6}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v1, v7, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v8, v7, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v1, v7, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v8, v7, Landroid/content/pm/ResolveInfo;->icon:I

    :cond_7
    :goto_4
    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    move-object v1, v3

    move-object v2, v11

    move-object v8, v3

    move-object v3, v14

    move-object/from16 v18, v4

    move-object v4, v7

    move/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v1, v18

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v13, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mTargetsNeedPruning:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mTargetsNeedPruning:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    const v4, 0x3f733333    # 0.95f

    if-ge v2, v3, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v6

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v6, v7

    if-lez v2, :cond_1

    cmpl-float v7, v6, v1

    if-ltz v7, :cond_1

    mul-float v6, v1, v4

    :cond_1
    new-instance v4, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v4, v7, p1, v5, v6}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V

    move v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCallerTargetCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPositionTargetType(I)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    sub-int v3, p1, v0

    if-ge v3, v2, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/2addr v0, v2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    sub-int v4, p1, v0

    if-ge v4, v3, :cond_2

    const/4 v4, 0x2

    return v4

    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public getServiceTargetCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mShowServiceTargets:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getStandardTargetCount()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayInfoCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mTargetsNeedPruning:Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    return-void
.end method

.method public setShowServiceTargets(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mShowServiceTargets:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mShowServiceTargets:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v2

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    sub-int v3, p1, v0

    if-ge v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v3

    :cond_1
    add-int/2addr v0, v2

    if-eqz p2, :cond_2

    sub-int v3, p1, v0

    invoke-super {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    goto :goto_0

    :cond_2
    sub-int v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    :goto_0
    return-object v3
.end method
