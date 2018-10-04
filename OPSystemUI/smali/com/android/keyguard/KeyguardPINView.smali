.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;
.source "KeyguardPINView.java"


# static fields
.field private static sNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# static fields
.field private static sNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mFingerprintIcon:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    const v8, 0x10c000f

    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0x7d

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3ee66666    # 0.45f

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0xbb

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPINView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFirstUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11033c

    goto :goto_0

    :cond_0
    const v0, 0x7f11034a

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private enableClipping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->setClipChildren(Z)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardPINView;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a0300

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    rem-int/lit8 v1, v0, 0x5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v1, 0x7f110368

    return v1

    :cond_0
    rem-int/lit8 v1, v0, 0x5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const v1, 0x7f110369

    return v1

    :cond_1
    const v1, 0x7f110367

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 15
    
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onFinishInflate()V

    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    const v0, 0x7f0a0363

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    const/4 v0, 0x7

    new-array v0, v0, [[Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v5, 0x7f0a01da

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v7, v2, v4

    aput-object v3, v2, v6

    aput-object v3, v2, v5

    aput-object v2, v0, v6

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a01c1

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01c2

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const v7, 0x7f0a01c3

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a01c4

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01c5

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const v7, 0x7f0a01c6

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a01c7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01c8

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const v7, 0x7f0a01c9

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a00f7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01c0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const v7, 0x7f0a01ca

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v1, v1, [Landroid/view/View;

    aput-object v3, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardPINView$32q9EwjCzWlJ6lNiw9pw0PSsPxs;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardPINView$32q9EwjCzWlJ6lNiw9pw0PSsPxs;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a0152

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mFingerprintIcon:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPINView;->displayDefaultSecurityMessage()V
    
    :goto_0
    const/4 v11, 0x1
    
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mScrambleKeypad:Z

    if-ne v0, v9, :cond_1

    move v5, v9

    :goto_1
    if-eqz v11, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    sget v0, Lcom/android/systemui/plugins/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v14, v0, :cond_3

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v9, Lcom/android/keyguard/NumPadKey;

    if-ne v0, v9, :cond_mw

    check-cast v6, Lcom/android/keyguard/NumPadKey;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_mw
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v11, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_4
    sget-object v0, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_4

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/NumPadKey;

    sget-object v0, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/keyguard/NumPadKey;->setDigit(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    return-void
    
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/PasswordTextView;->setQuickUnlockListener(Lcom/android/keyguard/PasswordTextView$QuickUnlockListener;)V

    goto/16 :goto_0

    return-void
.end method

.method protected resetState()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->resetState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPINView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPINView$2;-><init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mFingerprintIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mFingerprintIcon:Landroid/view/View;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v1, v1

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
