.class public Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
.super Ljava/lang/Object;
.source "OPThreekeyNavigationDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mAccentColor:I

.field private final mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

.field private final mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private final mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

.field private mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mParentStatus:I

.field private mSecondView:Landroid/view/View;

.field private mShowing:Z

.field private mShowingType:I

.field private mTextSize:I

.field private mThemeBgColor:I

.field private mThemeColorMode:I

.field private mThemeIconColor:I

.field private mThemeTextColor:I

.field private mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

.field private mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

.field private mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

.field mThreeKeyRowIcon:[Landroid/widget/ImageView;

.field mThreeKeyRowText:[Landroid/widget/TextView;

.field private mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

.field private mThreekeyType:I

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserId:I

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OPThreekeyNavigationDialog"

    sput-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mTextSize:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUserId:I

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$4;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$1;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$1;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->stateChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->changeH()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->rotateH()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateTheme(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->inflateView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->show()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->setAlphaH(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->change()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->setFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->showH(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->dismissH(Landroid/view/View;)V

    return-void
.end method

.method private applyTheme()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    const v1, 0x7f060312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    const v1, 0x7f060310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const v4, 0x7f0a0409

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private change()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private changeH()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->checkShowPage()I

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateThreekeyLayout()V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    :cond_0
    return-void
.end method

.method private checkShowPage()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v2, "mShowingType Invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    iput v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    :cond_5
    :goto_2
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkShowPage mShowingType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    return v1
.end method

.method private dismiss(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private dismissH(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .locals 3

    const-class v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v2, "OPThreekeyNavigationDialog getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->init()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private inflateView()V
    .locals 10

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateView mOrientationType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0149

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d014c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const v8, 0x1000128

    const/4 v9, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OPThreekeyNavigationDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init / mThreekeyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->inflateView()V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mDensity:I

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private initDialog()V
    .locals 18

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDialog / mMainView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " / mSecondView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v2, 0x7f0a040c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v2, 0x7f0a040f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v2, 0x7f0a0415

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    const v2, 0x7f0a040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v5, 0x7f0a0419

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v6, 0x7f0a041a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v7, 0x7f0a0418

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    const v4, 0x7f0a0409

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f0801e9

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f0801e5

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v7

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v9, 0x7f0801e4

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v3, v2, [Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    new-array v3, v2, [Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v10, v10, v3

    const v11, 0x7f0a0408

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    aput-object v10, v9, v3

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v10, v10, v3

    const v11, 0x7f0a0417

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    const v9, 0x7f0804fe

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    const v9, 0x7f0804ff

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    const v9, 0x7f0804fc

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    const v9, 0x7f11067a

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    const v9, 0x7f11068e

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    const v9, 0x7f110679

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v6}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateTheme(Z)V

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    const/16 v9, 0x8

    packed-switch v3, :pswitch_data_0

    const v2, 0x7f07065d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07065b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v8, 0x7f070659

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v10, 0x7f0704e7

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, -0x2

    if-ne v2, v3, :cond_5

    if-ne v3, v8, :cond_5

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    rem-int/2addr v13, v11

    aget-object v4, v4, v13

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    add-int/lit8 v14, v11, -0x2

    add-int/2addr v13, v14

    rem-int/2addr v13, v11

    aget-object v4, v4, v13

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    add-int/lit8 v14, v11, -0x1

    add-int/2addr v13, v14

    rem-int/2addr v13, v11

    aget-object v4, v4, v13

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v9, 0x7f0704e9

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v4, v5, v9, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :pswitch_0
    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_1
    goto/16 :goto_4

    :pswitch_2
    move v3, v5

    :goto_2
    if-ge v3, v2, :cond_4

    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_5
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    rem-int/2addr v13, v11

    aget-object v9, v9, v13

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v13, 0x3e8

    invoke-direct {v0, v9, v13}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->setAlpha(Landroid/view/View;I)V

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    add-int/lit8 v14, v11, -0x2

    add-int/2addr v13, v14

    rem-int/2addr v13, v11

    aget-object v9, v9, v13

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v9, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v14, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v14, v6

    add-int/lit8 v15, v11, -0x1

    add-int/2addr v14, v15

    rem-int/2addr v14, v11

    aget-object v9, v9, v14

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v9, 0x7f0704e8

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int v13, v7, v10

    sub-int/2addr v9, v13

    invoke-virtual {v4, v5, v9, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const v4, 0x105019d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    neg-int v14, v10

    sub-int v15, v2, v10

    add-int/2addr v15, v4

    invoke-virtual {v13, v14, v15, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v14, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v14, v14, v5

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    neg-int v15, v10

    sub-int v16, v3, v10

    add-int v7, v16, v4

    invoke-virtual {v14, v15, v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v6, v7, v6

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    neg-int v7, v10

    sub-int v12, v8, v10

    add-int/2addr v12, v4

    invoke-virtual {v6, v7, v12, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void

    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerOrientationListener(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOrientationListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method private rotateH()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rotateH /mOrientationType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateThreekeyLayout()V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0149

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d014b

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    if-ne v3, v1, :cond_3

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d014a

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAlpha(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAlphaH(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setFinished(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFinished / UserHandle.myUserId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUpdateMonitor.getCurrentUser():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private show()V
    .locals 5

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d014c

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_2
    :goto_0
    const v1, 0x7f0d0149

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v1, 0x7f0d014b

    goto :goto_1

    :pswitch_1
    goto :goto_1

    :pswitch_2
    const v1, 0x7f0d014a

    nop

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    nop

    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->registerOrientationListener(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showH(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH view.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->checkShowPage()I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateThreekeyLayout()V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    return-void
.end method

.method private stateChange(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    sget-object v5, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTheme change:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " force:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " theme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " accentColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0x%08X"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mThemeColorMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mAccentColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0x%08X"

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->applyTheme()V

    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v2, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateThreekeyLayout() / mShowingType == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/16 v1, 0x31

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    if-nez v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    packed-switch v3, :pswitch_data_0

    if-eqz v2, :cond_9

    const/16 v1, 0x35

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_6

    const/16 v1, 0x55

    goto :goto_0

    :cond_6
    const/16 v1, 0x35

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_7

    const/16 v1, 0x53

    goto :goto_0

    :cond_7
    const/16 v1, 0x55

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_8

    const/16 v1, 0x33

    goto :goto_0

    :cond_8
    const/16 v1, 0x53

    goto :goto_0

    :cond_9
    const/16 v1, 0x33

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void

    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged, mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / newConfig.toString():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_threekey_navigation_completed"

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThreeKeyStatus() / completed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / userId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / UserHandle.myUserId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", threekey:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mShowing:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mParentStatus:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->show()V

    :cond_4
    return-void
.end method
