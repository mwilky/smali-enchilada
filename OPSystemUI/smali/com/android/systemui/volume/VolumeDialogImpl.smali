.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveAlpha:I

.field private mActiveStream:I

.field private mActiveTint:Landroid/content/res/ColorStateList;

.field private mAutomute:Z

.field private mBackgroundSliderTint:Landroid/content/res/ColorStateList;

.field private final mClickOutputChooser:Landroid/view/View$OnClickListener;

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private mConnectedDevice:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogRowContainer:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHovering:Z

.field private mInactiveAlpha:I

.field private mInactiveTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mOutputChooser:Landroid/widget/ImageButton;

.field private mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

.field private final mOutputChooserLock:Ljava/lang/Object;

.field private mPendingInit:Z

.field private mPrevActiveStream:I

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsView:Landroid/view/View;

.field private mShowA11yStream:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mSinglePress:Ljava/lang/Runnable;

.field private mSingleUnpress:Ljava/lang/Runnable;

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mThemeButtonBg:I

.field private mThemeColorDialogBackground:I

.field private mThemeColorDialogRowContainerBackground:I

.field private mThemeColorIcon:I

.field private mThemeColorMode:I

.field private mThemeColorSeekbar:I

.field private mThemeColorSeekbarBackgroundDrawable:I

.field private mThemeColorSeekbarThumb:I

.field private mThemeColorText:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSinglePress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSingleUnpress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120548

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const v0, 0x7f0603f7

    const v1, 0x42ffffff    # 127.99999f

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/systemui/volume/OutputChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSingleUnpress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showOutputChooserH()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    return-object v0
.end method

.method private addExistingRows()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v8

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v9

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding row for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyAndroidTheme()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08087d

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    const v1, 0x7f080881

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    const v1, 0x7f060398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    const v1, 0x7f08087f

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    const v1, 0x7f060349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method private applyBlackTheme()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08087c

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    const v1, 0x7f080880

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    const v1, 0x7f06032e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    const v1, 0x7f060397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    const v1, 0x7f08087e

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    const v1, 0x7f060348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method private applyColorTheme(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAccentColorChanged(IZ)Z

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyWhiteTheme()V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyAndroidTheme()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyBlackTheme()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyWhiteTheme()V

    nop

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColors()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyColors()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v1, v2, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyWhiteTheme()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08087d

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    const v1, 0x7f080881

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    const v1, 0x7f060398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    const v1, 0x7f08087f

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    const v1, 0x7f060349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    return v0

    :cond_2
    const/16 v0, 0xbb8

    return v0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object v0
.end method

.method private getAlphaAttr(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    div-int/lit8 v2, v0, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    :goto_0
    return v2
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1
.end method

.method private initDialog()V
    .locals 15

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f0603f7

    const v3, 0x42ffffff    # 127.99999f

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d0155

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setContentView(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$eeWNm-10SD-dSjYhBX_A44Q0NUE;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$eeWNm-10SD-dSjYhBX_A44Q0NUE;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a047b

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a047c

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveAlpha:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1010030

    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveTint:Landroid/content/res/ColorStateList;

    const v1, 0x1010553

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAlphaAttr(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveAlpha:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a047d

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a03b3

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a03b0

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0a02ea

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0480

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v4, 0xa

    const v5, 0x7f080401

    const v6, 0x7f080401

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :cond_1
    const/4 v10, 0x3

    const v11, 0x7f08040e

    const v12, 0x7f080411

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v4, 0x2

    const v5, 0x7f080415

    const v6, 0x7f080416

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v10, 0x4

    const v11, 0x7f080402

    const v12, 0x7f080403

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v4, 0x0

    const v5, 0x7f08041b

    const v6, 0x7f08041b

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v10, 0x6

    const v11, 0x7f080404

    const v12, 0x7f080404

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v4, 0x1

    const v5, 0x7f080419

    const v6, 0x7f08041a

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColorTheme(Z)V

    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0156

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0481

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/16 v3, 0x14

    mul-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0118

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0483

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0482

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private isAccentColorChanged(IZ)Z
    .locals 2

    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isLandscape()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dismissH$5(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$dismissH$6(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$dafhVt2G4QzbFkVcNfwc2qWSrdM;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$dafhVt2G4QzbFkVcNfwc2qWSrdM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$initDialog$0(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/DialogInterface;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$initDialog$1(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return v1
.end method

.method public static synthetic lambda$initRow$2(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x7

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v0, v5, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    nop

    :cond_1
    invoke-interface {v1, p2, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v0, v5

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    nop

    :cond_4
    invoke-interface {v1, p2, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :goto_1
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    return-void
.end method

.method public static synthetic lambda$initSettingsH$3(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private loadColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    and-int/2addr v0, p2

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "recheckH ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setStreamImportantH stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " important:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 6
    
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mExtendedVolumePanel:Z
    
    if-nez v0, :cond_extended

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v1

    :cond_1
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v1, v5, :cond_2

    return v3

    :cond_2
    if-eqz v0, :cond_3

    return v3

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_5

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    return v2

    :cond_6
    return v2
    
    :cond_extended
    const/4 v2, 0x1
    
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3 #media

    if-ne v0, v1, :cond_ringer

    return v2
    
    :cond_ringer
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x2 #ringer

    if-ne v0, v1, :cond_alarm
    
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mExtendedVolumePanelRinger:Z
    
    if-eqz v1, :cond_alarm

    return v2
    
    :cond_alarm
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x4 #alarm

    if-ne v0, v1, :cond_call
    
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mExtendedVolumePanelAlarm:Z
    
    if-eqz v1, :cond_call

    return v2
    
    :cond_call
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mHideCallSlider:Z
    
    if-eqz v0, :cond_call2
    
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isInCall()Z
    
    move-result v0
    
    if-eqz v0, :cond_bcall
    
    :cond_call2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x0 #call

    if-ne v0, v1, :cond_bcall
    
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mExtendedVolumePanelCall:Z
    
    if-eqz v1, :cond_bcall

    return v2
    
    :cond_bcall
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mHideCallSlider:Z
    
    if-eqz v0, :cond_bcall2
    
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isInCall()Z
    
    move-result v0
    
    if-eqz v0, :cond_remove

    :cond_bcall2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x6 #bluetooth call

    if-ne v0, v1, :cond_remove
    
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mExtendedVolumePanelBCall:Z
    
    if-eqz v1, :cond_remove

    return v2 
    
    :cond_remove
    const/4 v0, 0x0
    
    return v0  
.end method

.method private showH(I)V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColorTheme(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method private showOutputChooserH()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/volume/MediaRouterWrapper;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/volume/MediaRouterWrapper;-><init>(Landroid/support/v7/media/MediaRouter;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/OutputChooserDialog;->show()V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserDialog;->setTheme(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showSafetyWarningH(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSafetyWarningH flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private trimObsoleteH()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateOutputChooserLayout()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    instance-of v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_5

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    :cond_5
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v6

    :goto_3
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070503

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070502

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v2

    :goto_5
    if-eqz v1, :cond_8

    move v8, v2

    goto :goto_6

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070501

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    :goto_6
    if-eqz v3, :cond_9

    const/4 v9, -0x1

    goto :goto_7

    :cond_9
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070504

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    :goto_7
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRowsH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    :cond_3
    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateOutputChooserLayout()V

    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolumeRowH s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v4, 0x2

    if-lez v3, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-eq v3, v4, :cond_3

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    :cond_3
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    if-ne v3, v5, :cond_4

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    if-ne v3, v5, :cond_5

    move v3, v7

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    if-ne v5, v4, :cond_6

    move v5, v7

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    if-ne v8, v7, :cond_7

    move v8, v7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    move v9, v7

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    move v10, v7

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-eqz v5, :cond_a

    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v12, v7, :cond_a

    move v12, v7

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    if-eqz v5, :cond_b

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v13, :cond_b

    move v13, v7

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    :goto_6
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v14, v7, :cond_c

    move v14, v7

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    :goto_7
    iget-object v15, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v15, v11, :cond_d

    move v15, v7

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    :goto_8
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v11, v4, :cond_e

    move v11, v7

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    :goto_9
    if-eqz v15, :cond_11

    if-nez v5, :cond_10

    if-eqz v8, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v4, 0x0

    goto :goto_e

    :cond_10
    :goto_b
    nop

    :goto_c
    move v4, v7

    goto :goto_e

    :cond_11
    if-eqz v11, :cond_14

    if-nez v5, :cond_13

    if-nez v8, :cond_13

    if-nez v9, :cond_13

    if-eqz v10, :cond_12

    goto :goto_d

    :cond_12
    goto :goto_a

    :cond_13
    :goto_d
    goto :goto_c

    :cond_14
    if-eqz v14, :cond_1a

    if-eqz v9, :cond_15

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v4, :cond_18

    :cond_15
    if-eqz v10, :cond_16

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v4, :cond_18

    :cond_16
    if-eqz v5, :cond_17

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v4, :cond_18

    :cond_17
    if-eqz v8, :cond_19

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v4, :cond_19

    :cond_18
    goto :goto_c

    :cond_19
    goto :goto_a

    :cond_1a
    goto :goto_a

    :goto_e
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-le v6, v7, :cond_1b

    if-eqz v5, :cond_1b

    if-nez v4, :cond_1b

    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {v1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    :cond_1b
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v6, v7, :cond_1c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_1c
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    sget-boolean v17, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v17, :cond_1d

    move/from16 v18, v6

    sget-object v6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    move/from16 v19, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    const-string/jumbo v8, "updateVolumeRowH s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " min:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1d
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v6, :cond_1e

    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v6, :cond_1f

    :cond_1e
    if-nez v4, :cond_1f

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v6, :cond_20

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_20
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_11
    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz v12, :cond_21

    const v8, 0x7f080417

    goto :goto_13

    :cond_21
    if-nez v13, :cond_27

    if-eqz v4, :cond_22

    goto :goto_12

    :cond_22
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v8, :cond_24

    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v8, :cond_23

    const v8, 0x7f080410

    goto :goto_13

    :cond_23
    nop

    const v8, 0x7f08040f

    goto :goto_13

    :cond_24
    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v8, :cond_25

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v8, :cond_25

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    goto :goto_13

    :cond_25
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v8, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    goto :goto_13

    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    goto :goto_13

    :cond_27
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    :goto_13
    nop

    if-eqz v5, :cond_28

    sget-object v7, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    move/from16 v21, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v9

    const-string v9, " isRingSilent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isRingVibrate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_28
    move/from16 v21, v8

    move/from16 v22, v9

    :goto_14
    if-eqz v5, :cond_2a

    if-eqz v13, :cond_2a

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportSOCThreekey()Z

    move-result v7

    if-eqz v7, :cond_29

    const v8, 0x7f080416

    :goto_15
    goto :goto_16

    :cond_29
    const v8, 0x7f080415

    goto :goto_15

    :cond_2a
    move/from16 v8, v21

    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-eq v8, v7, :cond_2b

    invoke-static {v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2b
    nop

    const v7, 0x7f080417

    if-ne v8, v7, :cond_2c

    const/4 v7, 0x3

    goto :goto_19

    :cond_2c
    const v7, 0x7f080410

    if-eq v8, v7, :cond_30

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-ne v8, v7, :cond_2d

    goto :goto_18

    :cond_2d
    const v7, 0x7f08040f

    if-eq v8, v7, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-ne v8, v7, :cond_2e

    goto :goto_17

    :cond_2e
    nop

    const/4 v7, 0x0

    goto :goto_19

    :cond_2f
    :goto_17
    nop

    const/4 v7, 0x1

    goto :goto_19

    :cond_30
    :goto_18
    nop

    const/4 v7, 0x2

    :goto_19
    invoke-static {v1, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    if-eqz v6, :cond_3a

    const v9, 0x7f11068d

    if-eqz v5, :cond_35

    if-eqz v12, :cond_31

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v9

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move/from16 v23, v6

    move/from16 v24, v8

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v8, v16

    const v6, 0x7f11068e

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    move/from16 v25, v10

    :goto_1a
    const/4 v8, 0x1

    goto/16 :goto_1f

    :cond_31
    move/from16 v23, v6

    move/from16 v24, v8

    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v6}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_32

    const v8, 0x7f110690

    goto :goto_1b

    :cond_32
    const v8, 0x7f11068f

    :goto_1b
    move/from16 v25, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v10, v16

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_33
    move/from16 v25, v10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_34

    goto :goto_1c

    :cond_34
    const v9, 0x7f11068c

    :goto_1c
    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v10, v16

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_35
    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v10

    if-eqz v3, :cond_36

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_36
    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v6, :cond_39

    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v6, :cond_37

    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v6, :cond_37

    goto :goto_1e

    :cond_37
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_38

    goto :goto_1d

    :cond_38
    const v9, 0x7f11068c

    :goto_1d
    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v10, v16

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    :cond_39
    :goto_1e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v9, v16

    const v10, 0x7f11068e

    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_3a
    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v10

    const/4 v8, 0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1f
    if-eqz v4, :cond_3b

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    goto :goto_20

    :cond_3b
    const/4 v6, 0x0

    :goto_20
    if-nez v4, :cond_3c

    goto :goto_21

    :cond_3c
    move v8, v6

    :goto_21
    move v7, v8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v8, :cond_3d

    if-nez v5, :cond_3d

    if-nez v4, :cond_3d

    goto :goto_22

    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    :goto_22
    if-eqz v5, :cond_3f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v8, :cond_3e

    if-eqz v15, :cond_3f

    :cond_3e
    const/4 v6, 0x0

    :cond_3f
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_40

    if-eqz v5, :cond_40

    sget-object v8, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateVolumeRowSliderH zenMuted:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isZenAlarms:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    invoke-direct {v0, v1, v7, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    iget v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v6, v8, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-direct {v0, v1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v4

    :goto_3
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v14, 0x3

    invoke-virtual {v11, v14, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v11, :cond_6

    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v4, "inGracePeriod"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v4, v14, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v14

    add-long/2addr v14, v12

    invoke-virtual {v3, v4, v14, v15}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_6
    move/from16 v11, p3

    if-ne v11, v6, :cond_8

    iget-boolean v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v12, :cond_8

    if-eqz v9, :cond_8

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "don\'t clamp if visible and vlevel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    move v12, v11

    if-eq v6, v12, :cond_e

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_9

    if-eqz v2, :cond_9

    sget-object v13, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateVolumeRowSliderH newProgress:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v13, :cond_c

    if-eqz v9, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v13

    if-ne v13, v12, :cond_a

    return-void

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    if-nez v13, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v13

    const-string v14, "progress"

    new-array v3, v3, [I

    aput v6, v3, v4

    aput v12, v3, v5

    invoke-static {v13, v14, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v3, v3, [I

    aput v6, v3, v4

    aput v12, v3, v5

    invoke-virtual {v13, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    :goto_4
    invoke-static {v1, v12}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v12, v5}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_e
    :goto_5
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZZ)V

    return-void
.end method

.method private updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZZ)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveAlpha:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveAlpha:I

    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-ne v1, v3, :cond_3

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_3

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    invoke-static {p1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110680

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_0
    div-int/2addr v4, v1

    int-to-float v1, v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v3}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$TeBm8mGAiDkt4iXRVJq9pjcoyzA;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$TeBm8mGAiDkt4iXRVJq9pjcoyzA;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v2, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v3, "SafetyWarning dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    return-void
.end method

.method public initSettingsH()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$G6oAxqHiJ7iCW_k2cALq2uiPnig;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$G6oAxqHiJ7iCW_k2cALq2uiPnig;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v3, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onStateChangedH stream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v3

    if-nez v3, :cond_2

    const v5, 0x7f080413

    const v6, 0x7f080414

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    move v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public show(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected updateConnectedDeviceH(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateOutputChooserLayout()V

    return-void
.end method

.method public isInCall()Z
	.locals 2

	iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z
    
    move-result v0
    
    return v0
.end method
