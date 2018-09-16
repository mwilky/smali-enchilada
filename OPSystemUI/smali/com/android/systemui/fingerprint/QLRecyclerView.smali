.class public Lcom/android/systemui/fingerprint/QLRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;
    }
.end annotation


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field protected mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

.field private mBarPosition:F

.field private mCheckScrollNext:Ljava/lang/Runnable;

.field private mCheckScrollPrev:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field protected mDataset:[Ljava/lang/String;

.field private mInitialized:Z

.field private mIsCancel:Z

.field private mLabel:Landroid/widget/TextView;

.field mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

.field private mPosition:I

.field private mScrollSpeed:F

.field mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

.field private mView:Landroid/support/v7/widget/RecyclerView;

.field private final mZoomAmount:F

.field private final mZoomDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 292
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 293
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 294
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fingerprint/QLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "com.android.chrome"

    const-string v1, "com.android.mms"

    const-string v2, "com.android.dialer"

    const-string v3, "com.oneplus.gallery"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.android.settings"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 49
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    .line 53
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    .line 99
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$2;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckScrollNext:Ljava/lang/Runnable;

    .line 113
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$3;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckScrollPrev:Ljava/lang/Runnable;

    .line 213
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mZoomAmount:F

    .line 216
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mZoomDistance:F

    .line 62
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    .line 64
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    new-instance v0, Landroid/support/v7/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 71
    new-instance v0, Lcom/android/systemui/fingerprint/QLAdapter;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/fingerprint/QLAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->scrollToPosition(I)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateViewScale()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/QLRecyclerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/fingerprint/QLRecyclerView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # F

    .line 26
    iput p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/fingerprint/QLRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    return v0
.end method

.method static synthetic access$312(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # I

    .line 26
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    return v0
.end method

.method static synthetic access$320(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # I

    .line 26
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/QLRecyclerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getAppLable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/QLRecyclerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/QLRecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckScrollNext:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/QLRecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckScrollPrev:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getAppLable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 204
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 206
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 208
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 209
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
    .locals 15

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 220
    .local v0, "midpoint":F
    const/4 v2, 0x0

    .line 221
    .local v2, "d0":F
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v0

    .line 222
    .local v3, "d1":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 223
    .local v4, "s0":F
    const/high16 v5, 0x3f000000    # 0.5f

    .line 225
    .local v5, "s1":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 226
    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 227
    .local v7, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {v9, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v1

    .line 228
    .local v8, "childMidpoint":F
    sub-float v9, v0, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 229
    .local v9, "d":F
    iget-boolean v10, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v10, :cond_0

    .line 230
    move v10, v12

    goto :goto_1

    :cond_0
    add-float v10, v11, v4

    sub-float v13, v5, v4

    sub-float v14, v9, v2

    mul-float/2addr v13, v14

    sub-float v14, v3, v2

    div-float/2addr v13, v14

    add-float/2addr v10, v13

    .line 231
    .local v10, "scale":F
    :goto_1
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    .line 232
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    .line 234
    cmpl-float v13, v10, v12

    if-lez v13, :cond_1

    iget-boolean v13, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    if-nez v13, :cond_1

    .line 235
    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 237
    :cond_1
    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 225
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childMidpoint":F
    .end local v9    # "d":F
    .end local v10    # "scale":F
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 240
    .end local v6    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public launch()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mSnapHelper:Landroid/support/v7/widget/LinearSnapHelper;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public onEnterCancelView()V
    .locals 4

    .line 308
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 312
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 313
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 314
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 82
    iput-object p0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mView:Landroid/support/v7/widget/RecyclerView;

    .line 84
    new-instance v0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$1;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method public onLeaveCancelView()V
    .locals 4

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/QLAdapter;->getIconPadding()I

    move-result v2

    .line 324
    .local v2, "padding":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 325
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 326
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 327
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "padding":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onScrollProress(F)V
    .locals 9
    .param p1, "progress"    # F

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "position":I
    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    sub-float v1, p1, v1

    .line 133
    .local v1, "diffBarPosition":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    const-wide/16 v3, 0x12c

    if-ltz v2, :cond_4

    .line 135
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    float-to-double v5, v2

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v2, v5

    iput v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    .line 136
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v5, v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    .line 138
    :cond_1
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int/2addr v2, v5

    .line 139
    .end local v0    # "position":I
    .local v2, "position":I
    if-gez v2, :cond_2

    const/4 v0, 0x0

    .end local v2    # "position":I
    .restart local v0    # "position":I
    goto :goto_0

    .line 141
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_2
    move v0, v2

    .end local v2    # "position":I
    .restart local v0    # "position":I
    :goto_0
    const-string v2, "QLRecyclerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScrollProress mBarPosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    if-eq v2, v0, :cond_3

    .line 145
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    new-instance v5, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v5}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    invoke-virtual {v2, p0, v5, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 146
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 148
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getAppLable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v5, v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    if-lez v2, :cond_8

    .line 153
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckScrollNext:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 156
    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_8

    .line 158
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    float-to-double v5, v2

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v2, v5

    iput v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    .line 159
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    iput v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    .line 161
    :cond_5
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int/2addr v2, v6

    .line 162
    .end local v0    # "position":I
    .local v2, "position":I
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v0, v0

    if-lt v2, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .end local v2    # "position":I
    .restart local v0    # "position":I
    goto :goto_1

    .line 164
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_6
    move v0, v2

    .end local v2    # "position":I
    .restart local v0    # "position":I
    :goto_1
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    if-eq v2, v0, :cond_7

    .line 165
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    new-instance v6, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    invoke-virtual {v2, p0, v6, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 166
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 168
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    aget-object v2, v2, v6

    invoke-direct {p0, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getAppLable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_8

    .line 173
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckScrollPrev:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :cond_8
    :goto_2
    return-void

    .line 129
    .end local v0    # "position":I
    .end local v1    # "diffBarPosition":F
    :cond_9
    :goto_3
    return-void
.end method

.method public setIsCancel(Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateViewScale()V

    .line 200
    return-void
.end method

.method public setLabelView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "label"    # Landroid/widget/TextView;

    .line 194
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    .line 195
    return-void
.end method

.method public setScrollSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .line 243
    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 244
    const-string v0, "QLRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrollSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 246
    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    goto :goto_0

    .line 247
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 248
    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 250
    :cond_1
    :goto_0
    return-void
.end method

.method vibrate(I)V
    .locals 4
    .param p1, "ms"    # I

    .line 298
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 300
    .local v0, "vib":Landroid/os/Vibrator;
    int-to-long v1, p1

    sget-object v3, Lcom/android/systemui/fingerprint/QLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 301
    return-void
.end method
