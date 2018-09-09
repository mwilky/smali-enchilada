.class public Lcom/android/server/policy/ScreenDecor;
.super Ljava/lang/Object;
.source "ScreenDecor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ScreenDecor$ScreenHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field static final EXPAND_SCREEN_DECOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScreenDecor"

.field static final UPDATE_SCREEN_DECOR:I = 0x1

.field private static mProductName:Ljava/lang/String;


# instance fields
.field mAlreadyExpand:Z

.field mContext:Landroid/content/Context;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mExpandAllowed:Z

.field mExpandOffset:I

.field private mExpandOverlay:Landroid/view/View;

.field protected mExpandView:Landroid/widget/ImageView;

.field mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

.field mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mRotation:I

.field mUpExpand:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field upExpandBitmap_0:Landroid/graphics/Bitmap;

.field upExpandBitmap_180:Landroid/graphics/Bitmap;

.field upExpandBitmap_270:Landroid/graphics/Bitmap;

.field upExpandBitmap_90:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "debug.screenshot_rounded_corners"

    .line 56
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/ScreenDecor;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandView:Landroid/widget/ImageView;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    .line 85
    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/policy/ScreenDecor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 87
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    new-instance v2, Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    invoke-direct {v2, p0}, Lcom/android/server/policy/ScreenDecor$ScreenHandler;-><init>(Lcom/android/server/policy/ScreenDecor;)V

    iput-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    .line 89
    iput v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->loadBitmap()V

    .line 91
    invoke-direct {p0}, Lcom/android/server/policy/ScreenDecor;->setupDecorations()V

    .line 93
    new-instance v1, Lcom/android/server/policy/ScreenDecor$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ScreenDecor$1;-><init>(Lcom/android/server/policy/ScreenDecor;)V

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 108
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/ScreenDecor;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ScreenDecor;

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    return-object v0
.end method

.method private isLandscape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .line 202
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSupportRoundScreen()Z
    .locals 1

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method private setupDecorations()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x5090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    const v1, 0x5070021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandView:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 128
    invoke-direct {p0}, Lcom/android/server/policy/ScreenDecor;->updateExpandViews()V

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->getExpandLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/server/policy/ScreenDecor$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ScreenDecor$2;-><init>(Lcom/android/server/policy/ScreenDecor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 143
    return-void
.end method

.method private updateExpandLayoutParams()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->getExpandLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    return-void
.end method

.method private updateExpandViews()V
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_90:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_180:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 211
    :cond_1
    iget v0, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_270:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-eqz v1, :cond_3

    .line 218
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 217
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method


# virtual methods
.method createExpandBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    .line 261
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 262
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 263
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x506003c

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    .local v1, "smallAngle":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    .line 266
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 265
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 267
    .local v2, "expandBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 268
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 269
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 270
    .local v4, "mPaint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 272
    iget v6, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v7, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    return-object v2
.end method

.method doExpandScreenDecor()V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    iget-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    if-ne v0, v1, :cond_0

    .line 248
    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    if-nez v0, :cond_1

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    if-eqz v0, :cond_2

    .line 253
    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_2
    :goto_0
    return-void
.end method

.method public expandScreenDecor(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->sendEmptyMessage(I)Z

    .line 230
    return-void

    .line 227
    :cond_1
    :goto_0
    return-void
.end method

.method getExpandLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 167
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7f6

    const v4, 0x20800138

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 178
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 181
    sget-boolean v1, Lcom/android/server/policy/ScreenDecor;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    .line 182
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 185
    :cond_0
    const-string v1, "ScreenDecorOverlayExpand"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 189
    :cond_2
    :goto_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 194
    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/ScreenDecor;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 196
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 198
    :cond_3
    return-object v0
.end method

.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .line 285
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 286
    .local v0, "tint":I
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 287
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    const v3, 0x5070021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 288
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 289
    return-void
.end method

.method loadBitmap()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->createExpandBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    .line 115
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_90:Landroid/graphics/Bitmap;

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_180:Landroid/graphics/Bitmap;

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_270:Landroid/graphics/Bitmap;

    .line 118
    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->sendEmptyMessage(I)Z

    .line 159
    :cond_0
    return-void
.end method

.method refreshScreenDecor()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/server/policy/ScreenDecor;->updateExpandLayoutParams()V

    .line 163
    invoke-direct {p0}, Lcom/android/server/policy/ScreenDecor;->updateExpandViews()V

    .line 164
    return-void
.end method

.method public rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F

    .line 277
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    .local v0, "matrix":Landroid/graphics/Matrix;
    neg-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected updateOrientation()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 147
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 148
    iput v0, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    .line 149
    iget-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOverlay:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->refreshScreenDecor()V

    .line 153
    :cond_0
    return-void
.end method
