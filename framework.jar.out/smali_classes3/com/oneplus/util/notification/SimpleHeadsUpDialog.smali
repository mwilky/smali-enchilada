.class public Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
.super Ljava/lang/Object;
.source "SimpleHeadsUpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;,
        Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final SHADOW_COLOR:I = 0x33000000

.field private static final TAG:Ljava/lang/String; = "SimpleHeadsUpDialog"


# instance fields
.field private mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

.field private final mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

.field private mShadowRadius:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-direct {v0, p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->removeWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->handleShow(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->handleHide(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->handleRemoveWindow()V

    return-void
.end method

.method private addView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
    .locals 1

    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;-><init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    if-gtz v0, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private getContentWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 10

    const v0, 0x1000008

    const/4 v1, -0x2

    const/4 v2, -0x2

    if-nez p1, :cond_0

    or-int/lit8 v0, v0, 0x10

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_0
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7d8

    const/4 v8, -0x3

    move-object v3, v9

    move v4, v1

    move v5, v2

    move v7, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private getIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "SimpleHeadsUpDialog"

    const-string v3, "Simple notification icon drawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private getText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SimpleHeadsUpDialog"

    const-string v3, "Simple notification text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private getTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SimpleHeadsUpDialog"

    const-string v3, "Simple notification title is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private handleHide(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->applyExitAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private handleRemoveWindow()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "Removing simple heads-up dialog window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    :cond_1
    return-void
.end method

.method private handleShow(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "Showing simple heads-up dialog window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getTouchAble()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getContentWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getTimeOut()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getTimeOut()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->setTimeOut(J)V

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x30

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private recreateIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v2, v2

    const/16 v3, 0x33

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object v7, v8

    new-instance v8, Landroid/graphics/BlurMaskFilter;

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v1, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v5, v7, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    invoke-virtual {v9, v8, v11, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v10
.end method

.method private removeWindow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateEntryView(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x5070022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->recreateIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->isSensitive()Z

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x5070024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x33000000

    const/4 v5, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v5, v8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x5070023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v8, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v5, v9, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x50a0000

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v5, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hide()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "hide all notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hide(Landroid/view/View;J)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide notifications, delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-virtual {v1, v0, p2, p3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public hideFromPackage(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SimpleHeadsUpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideFromPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-nez v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "hideFromPackage: mContentWindow is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    const-string v2, "SimpleHeadsUpDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide notification from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    return-void
.end method

.method public show(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget-boolean v2, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    const-string v2, "SimpleHeadsUpDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isNew: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide()V

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    const v3, 0x5090001

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-direct {v3, p1, p2, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;-><init>(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V

    iput-object v3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    iget-object v3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-virtual {v3}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->updateEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V

    :goto_2
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    iget-object v3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->updateEntryView(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;Landroid/content/Context;)V

    if-eqz v0, :cond_4

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v1, v2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-virtual {v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public showView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "showView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide()V

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->addView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-virtual {v1, v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
