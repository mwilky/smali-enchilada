.class public Lcom/android/systemui/plugin/RippleView;
.super Landroid/view/View;
.source "RippleView.java"


# static fields
.field public static MESSAGE_DELAY:I


# instance fields
.field private COLOR:I

.field private DURATION:F

.field private END_RADIUS_FISRT:F

.field private END_RADIUS_SECOND:F

.field private START_RADIUS_FIRST:F

.field private START_RADIUS_SECOND:F

.field private STROKE_WIDTH_FIRST:I

.field private STROKE_WIDTH_SECOUND:I

.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isStartRipple:Z

.field private mClickCount:I

.field private mOffsetFirst:F

.field private mOffsetSecond:F

.field private mPositionX:I

.field private mPositionY:I

.field private mRipplePaintFirst:Landroid/graphics/Paint;

.field private mRipplePaintSecond:Landroid/graphics/Paint;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private rippleFirstRadius:I

.field private rippleSecendRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    sput v0, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "RippleView"

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    const-string v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    new-instance v0, Lcom/android/systemui/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/RippleView$1;-><init>(Lcom/android/systemui/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "RippleView"

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    const-string v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    new-instance v0, Lcom/android/systemui/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/RippleView$1;-><init>(Lcom/android/systemui/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "RippleView"

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    const-string v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    new-instance v0, Lcom/android/systemui/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/RippleView$1;-><init>(Lcom/android/systemui/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/plugin/RippleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/plugin/RippleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/plugin/RippleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/systemui/plugin/RippleView;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/RippleView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/plugin/RippleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/plugin/RippleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/systemui/plugin/RippleView;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public generatePosition()V
    .locals 8

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v6, 0x2

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v1, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v2, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v3, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v4, v5

    sub-int v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    sub-int v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    goto/16 :goto_0

    :cond_0
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v1, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v3, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v4, v5

    sub-int v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    sub-int v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    goto/16 :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v1, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v3, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v7

    float-to-int v4, v5

    sub-int v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    sub-int v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v1, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v2, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v7

    float-to-int v3, v5

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v7

    float-to-int v4, v5

    sub-int v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    sub-int v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    :goto_0
    const-string v5, "RippleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generatePosition : click = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " < x < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " < y < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "RippleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generatePosition: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isValidPosition(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const-string v3, "RippleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPosition: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const-string v1, "RippleView"

    const-string v3, "isValidPosition: true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    const-wide v1, 0x406fe00000000000L    # 255.0

    const-wide v3, 0x400921ff2e48e8a7L    # 3.1416

    if-ltz v0, :cond_0

    sget v0, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-double v5, v0

    mul-double/2addr v5, v3

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    float-to-double v7, v0

    div-double/2addr v5, v7

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    int-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    iget v8, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetFirst:F

    iget v9, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    if-ltz v0, :cond_1

    sget v0, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    float-to-double v5, v0

    div-double/2addr v3, v5

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    int-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    iget-object v1, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetSecond:F

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/plugin/RippleView;->isValidPosition(Landroid/view/MotionEvent;)Z

    move-result v0

    const-string v1, "RippleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent: isValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->stopRipple()V

    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->startRipple()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public prepare()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->generatePosition()V

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetFirst:F

    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetSecond:F

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public startRipple()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->generatePosition()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/RippleView;->startRipple(I)V

    return-void
.end method

.method public startRipple(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopRipple()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    iget-object v1, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
