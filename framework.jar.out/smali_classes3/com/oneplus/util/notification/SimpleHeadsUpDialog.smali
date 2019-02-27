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

    .line 49
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-direct {v0, p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    .line 63
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    .line 70
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
    .param p1, "x1"    # Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    .line 46
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    .line 46
    invoke-direct {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->removeWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    .line 46
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
    .param p1, "x1"    # Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->handleShow(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
    .param p1, "x1"    # Landroid/view/View;

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->handleHide(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    .line 46
    invoke-direct {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->handleRemoveWindow()V

    return-void
.end method

.method private addView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "timeOut"    # J

    .line 342
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;-><init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 387
    .local v0, "width":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 391
    .local v1, "height":I
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

    .line 393
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 394
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    return-object v2
.end method

.method private getContentWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 10
    .param p1, "isTouchAble"    # Z

    .line 220
    const v0, 0x1000008

    .line 221
    .local v0, "flag":I
    const/4 v1, -0x2

    .line 222
    .local v1, "layout_width":I
    const/4 v2, -0x2

    .line 224
    .local v2, "layout_height":I
    if-nez p1, :cond_0

    .line 225
    or-int/lit8 v0, v0, 0x10

    .line 226
    const/4 v1, -0x1

    .line 227
    const/4 v2, -0x1

    .line 230
    :cond_0
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7d8

    const/4 v8, -0x3

    move-object v3, v9

    move v4, v1

    move v5, v2

    move v7, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 236
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 239
    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 240
    iget-object v4, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 241
    return-object v3
.end method

.method private getIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 276
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_0

    .line 277
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 280
    const-string v2, "SimpleHeadsUpDialog"

    const-string v3, "Simple notification icon drawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    return-object v0
.end method

.method private getText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 295
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 296
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 297
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 298
    const-string v2, "SimpleHeadsUpDialog"

    const-string v3, "Simple notification text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    return-object v1
.end method

.method private getTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 286
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 287
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 288
    .local v1, "title":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 289
    const-string v2, "SimpleHeadsUpDialog"

    const-string v3, "Simple notification title is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-object v1
.end method

.method private handleHide(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->applyExitAnimation(Landroid/view/View;)V

    .line 209
    :cond_0
    return-void
.end method

.method private handleRemoveWindow()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_1

    .line 213
    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "Removing simple heads-up dialog window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    .line 217
    :cond_1
    return-void
.end method

.method private handleShow(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    .line 183
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-nez v0, :cond_1

    .line 184
    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "Showing simple heads-up dialog window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    .line 188
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getTouchAble()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getContentWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 189
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getTimeOut()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getTimeOut()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->setTimeOut(J)V

    .line 194
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x30

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :goto_0
    return-void
.end method

.method private recreateIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 353
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 354
    return-object v0

    .line 356
    :cond_0
    iget v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v1, v1

    .line 357
    .local v1, "blurRadius":F
    iget v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v2, v2

    .line 358
    .local v2, "shadowDistance":F
    const/16 v3, 0x33

    .line 359
    .local v3, "shadowAlpha":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 360
    .local v4, "offset":[I
    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 361
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 362
    .local v6, "drawPaint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object v7, v8

    .line 363
    .local v7, "blurPaint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v1, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 364
    invoke-virtual {v5, v7, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 366
    .local v8, "shadow":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 367
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 368
    .local v10, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 372
    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    invoke-virtual {v9, v8, v11, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 375
    const/16 v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 376
    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    return-object v10
.end method

.method private removeWindow()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    return-void
.end method

.method private updateEntryView(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;Landroid/content/Context;)V
    .locals 12
    .param p1, "entry"    # Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
    .param p2, "context"    # Landroid/content/Context;

    .line 305
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x5070022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 307
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 308
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 309
    invoke-direct {p0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->recreateIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->isSensitive()Z

    move-result v2

    .line 313
    .local v2, "hidden":Z
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x5070024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    .local v3, "t":Landroid/widget/TextView;
    const/high16 v4, 0x33000000

    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 316
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 317
    .local v6, "title":Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget v7, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v5, v8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x5070023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Landroid/widget/TextView;

    .line 322
    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 323
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    .line 324
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget v8, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v5, v9, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 328
    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 329
    const/4 v2, 0x1

    .line 333
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 334
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x50a0000

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 335
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 334
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget v6, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v5, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 339
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "hidden":Z
    .end local v3    # "t":Landroid/widget/TextView;
    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .line 479
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

    .line 448
    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "hide all notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildCount()I

    move-result v0

    .line 451
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 452
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    .line 451
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 455
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public hide(Landroid/view/View;J)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 439
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

    .line 440
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 441
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-virtual {v1, v0, p2, p3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 444
    return-void
.end method

.method public hideFromPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 459
    const-string v0, "SimpleHeadsUpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideFromPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-nez v0, :cond_0

    .line 461
    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "hideFromPackage: mContentWindow is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 464
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildCount()I

    move-result v0

    .line 465
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 466
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
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

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContentWindow:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    .line 465
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mShadowRadius:I

    .line 476
    return-void
.end method

.method public show(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sensitive"    # Z

    .line 404
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    .line 405
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    .line 407
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    .line 408
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

    .line 409
    .local v0, "isNew":Z
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

    .line 410
    :cond_2
    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide()V

    .line 412
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    const v3, 0x5090001

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-direct {v3, p1, p2, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;-><init>(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V

    iput-object v3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    .line 414
    .end local v2    # "view":Landroid/view/View;
    goto :goto_2

    .line 415
    :cond_3
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    iget-object v3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-virtual {v3}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->updateEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V

    .line 417
    :goto_2
    iget-object v2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    iget-object v3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->updateEntryView(Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;Landroid/content/Context;)V

    .line 419
    if-eqz v0, :cond_4

    .line 420
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 421
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->what:I

    .line 422
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mCurrentEntry:Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-virtual {v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendMessage(Landroid/os/Message;)Z

    .line 425
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public showView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "timeOut"    # J

    .line 428
    sget-boolean v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SimpleHeadsUpDialog"

    const-string v1, "showView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide()V

    .line 430
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    .line 431
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->removeMessages(I)V

    .line 432
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 433
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->addView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->mHandler:Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;

    invoke-virtual {v1, v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method
