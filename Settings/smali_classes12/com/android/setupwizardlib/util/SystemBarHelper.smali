.class public Lcom/android/setupwizardlib/util/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;,
        Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;,
        Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMMERSIVE_FLAGS:I = 0x1602
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final DIALOG_IMMERSIVE_FLAGS:I = 0x1002
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final PEEK_DECOR_VIEW_RETRIES:I = 0x3

.field private static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "SystemBarHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .line 44
    invoke-static {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getBottomDistance(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private static addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "vis"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 236
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper$1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    .line 242
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flag"    # I

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 149
    .local v0, "vis":I
    or-int v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 151
    .end local v0    # "vis":I
    :cond_0
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/Window;I)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flag"    # I

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 159
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private static getBottomDistance(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 357
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "callback"    # Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

    .line 255
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$1;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;I)V

    .line 256
    return-void
.end method

.method public static hideSystemBars(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 79
    .local v0, "window":Landroid/view/Window;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->temporarilyDisableDialogFocus(Landroid/view/Window;)V

    .line 80
    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 81
    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 88
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static hideSystemBars(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 101
    const/16 v0, 0x1602

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 102
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 109
    :cond_0
    return-void
.end method

.method private static removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "vis"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 246
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$2;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    .line 252
    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flag"    # I

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 171
    .local v0, "vis":I
    not-int v1, p1

    and-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 173
    .end local v0    # "vis":I
    :cond_0
    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/Window;I)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flag"    # I

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setBackButtonVisible(Landroid/view/Window;Z)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "visible"    # Z
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.STATUS_BAR"
    .end annotation

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 200
    const/high16 v0, 0x400000

    if-eqz p1, :cond_0

    .line 201
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 202
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 205
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 208
    :cond_1
    :goto_0
    return-void
.end method

.method public static setImeInsetView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 225
    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 227
    :cond_0
    return-void
.end method

.method public static showSystemBars(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->showSystemBars(Landroid/view/Window;Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public static showSystemBars(Landroid/view/Window;Landroid/content/Context;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 127
    const/16 v0, 0x1602

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 128
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    .line 130
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 135
    .local v2, "statusBarColor":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 136
    .local v1, "navigationBarColor":I
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local v1    # "navigationBarColor":I
    .end local v2    # "statusBarColor":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1010451
        0x1010452
    .end array-data
.end method

.method private static temporarilyDisableDialogFocus(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 304
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 309
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/setupwizardlib/util/SystemBarHelper$3;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/util/SystemBarHelper$3;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method
