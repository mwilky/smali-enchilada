.class public Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.super Ljava/lang/Object;
.source "OPThreekeyDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OPThreekeyDialog;
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogPosition:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

.field private mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mShowing:Z

.field private mThemeBgColor:I

.field private mThemeColorMode:I

.field private mThemeIconColor:I

.field private mThemeTextColor:I

.field private mThreeKeyIcon:Landroid/widget/ImageView;

.field private mThreeKeyText:Landroid/widget/TextView;

.field private mThreeKeystate:I

.field private mWindow:Landroid/view/Window;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OPThreekeyDialogImpl"

    sput-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->checkOrientationType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->stateChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method private checkOrientationType()V
    .locals 5

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientype to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    :cond_1
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method private dismissH(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "dismissH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private initDialog()V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0128

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-class v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0409

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0408

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0417

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method private showH(I)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "showH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->checkOrientationType()V

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showH mOrientationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    :cond_2
    return-void
.end method

.method private stateChange(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-boolean v3, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTheme change"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " force:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->applyTheme()V

    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v5, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0804fc

    const v2, 0x7f110683

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0804ff

    const v2, 0x7f110698

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0804fe

    const v2, 0x7f110684

    nop

    :goto_0
    const v8, 0x7f0b0063

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    const/4 v9, 0x1

    :cond_3
    :goto_1
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    const v14, 0x7f070670

    const v15, 0x7f07066f

    const/4 v12, 0x2

    const v13, 0x105019d

    packed-switch v11, :pswitch_data_1

    if-eqz v9, :cond_12

    const/16 v7, 0x35

    goto/16 :goto_9

    :pswitch_3
    if-eqz v9, :cond_4

    const/16 v7, 0x55

    goto :goto_2

    :cond_4
    const/16 v7, 0x35

    :goto_2
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-nez v9, :cond_5

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v5, v11

    :cond_5
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_6

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3

    :cond_6
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_7

    const v10, 0x7f07066c

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3

    :cond_7
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    const v10, 0x7f07066a

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_8
    :goto_3
    const v3, 0x7f0801e5

    goto/16 :goto_a

    :pswitch_4
    if-eqz v9, :cond_9

    const/16 v7, 0x53

    goto :goto_4

    :cond_9
    const/16 v7, 0x55

    :goto_4
    const v11, 0x7f07066e

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_a

    const v10, 0x7f07066d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    :goto_5
    move v5, v10

    goto :goto_6

    :cond_a
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_b

    const v10, 0x7f07066b

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    :cond_b
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    const v10, 0x7f070669

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    :cond_c
    :goto_6
    const v3, 0x7f0801e5

    goto/16 :goto_a

    :pswitch_5
    if-eqz v9, :cond_d

    const/16 v7, 0x33

    goto :goto_7

    :cond_d
    const/16 v7, 0x53

    :goto_7
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-eqz v9, :cond_e

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v5, v11

    :cond_e
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_f

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_8

    :cond_f
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_10

    const v10, 0x7f07066c

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_8

    :cond_10
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_11

    const v10, 0x7f07066a

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_11
    :goto_8
    const v3, 0x7f0801e5

    goto :goto_a

    :cond_12
    const/16 v7, 0x33

    :goto_9
    const v11, 0x7f07066e

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_13

    const v10, 0x7f07066d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    const v3, 0x7f0801e9

    goto :goto_a

    :cond_13
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_14

    const v10, 0x7f07066b

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    const v3, 0x7f0801e5

    goto :goto_a

    :cond_14
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_15

    const v10, 0x7f070669

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    const v3, 0x7f0801e4

    :cond_15
    :goto_a
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_19

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_16

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    if-eqz v10, :cond_17

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v10, :cond_18

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    iput v5, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    :cond_19
    const v10, 0x7f0704ea

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v12, v5, v10

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v12, v6, v10

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v12, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    sget-boolean v11, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v11, :cond_1a

    sget-object v11, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateThreekeyLayout mThreeKeystate:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public applyTheme()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    const v1, 0x7f060312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    const v1, 0x7f060310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    return-void
.end method

.method public init(ILcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDensity:I

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "in OPThreekeyDialog init mOPThreekeyNavigationDialog.getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->getInstance(Landroid/content/Context;)Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThreeKeyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->show(I)V

    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
