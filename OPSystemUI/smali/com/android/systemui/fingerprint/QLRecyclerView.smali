.class public Lcom/android/systemui/fingerprint/QLRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

.field private mContext:Landroid/content/Context;

.field protected mDataset:[Ljava/lang/String;

.field private mInitialized:Z

.field private mLabel:Landroid/widget/TextView;

.field mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

.field private mPosition:I

.field private mScrollSpeed:F

.field private final mShrinkAmount:F

.field private final mShrinkDistance:F

.field mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

.field private misCancel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v0, "com.android.chrome"

    const-string v1, "com.android.mms"

    const-string v2, "com.android.dialer"

    const-string v3, "com.oneplus.gallery"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.android.settings"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 41
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->misCancel:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    .line 126
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mShrinkAmount:F

    .line 129
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mShrinkDistance:F

    .line 51
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 57
    new-instance v0, Landroid/support/v7/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    new-instance v0, Lcom/android/systemui/fingerprint/QLAdapter;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/fingerprint/QLAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/QLAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;->scrollToPosition(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateViewScale()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/QLRecyclerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 23
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/fingerprint/QLRecyclerView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # F

    .line 23
    iput p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/fingerprint/QLRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    return p1
.end method

.method private getAppLable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 119
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 121
    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 122
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "Unknown"

    :goto_1
    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private updateViewScale()V
    .locals 14

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 133
    .local v0, "midpoint":F
    const/4 v2, 0x0

    .line 134
    .local v2, "d0":F
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v0

    .line 135
    .local v3, "d1":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 136
    .local v4, "s0":F
    const v5, 0x3f333333    # 0.7f

    .line 138
    .local v5, "s1":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 139
    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 140
    .local v7, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    invoke-virtual {v9, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v1

    .line 141
    .local v8, "childMidpoint":F
    sub-float v9, v0, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 142
    .local v9, "d":F
    const-string v10, "test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scaletest d "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v10, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->misCancel:Z

    if-eqz v10, :cond_0

    .line 144
    move v10, v5

    goto :goto_1

    :cond_0
    sub-float v10, v5, v4

    sub-float v11, v9, v2

    mul-float/2addr v10, v11

    sub-float v11, v3, v2

    div-float/2addr v10, v11

    add-float/2addr v10, v4

    .line 145
    .local v10, "scale":F
    :goto_1
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    .line 146
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    .line 147
    const-string v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "scaletest "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const v11, 0x3f666666    # 0.9f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    .line 149
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 151
    :cond_1
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 138
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childMidpoint":F
    .end local v9    # "d":F
    .end local v10    # "scale":F
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 154
    .end local v6    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public launch()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 71
    new-instance v0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$1;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method

.method public onScrollProress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "position":I
    :goto_0
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 90
    :cond_2
    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    if-eq v1, v0, :cond_3

    .line 91
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 93
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$ZoomCenterLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getAppLable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setIsCancel(Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->misCancel:Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateViewScale()V

    .line 113
    return-void
.end method

.method public setLabelView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "label"    # Landroid/widget/TextView;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    .line 108
    return-void
.end method
