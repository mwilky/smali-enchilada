.class public Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.BitmapCache"


# instance fields
.field private mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    if-lez p2, :cond_0

    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_0
    if-lez p3, :cond_1

    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    if-eqz p2, :cond_0

    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_0
    if-eqz p3, :cond_1

    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v1, p0, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_1
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private initMain(Landroid/graphics/Bitmap;II)V
    .locals 2

    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottom()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTop()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    :cond_2
    return-void
.end method

.method public removeBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    return-object v0
.end method

.method public removeBottom()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    return-object v0
.end method

.method public removeTop()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    return-object v0
.end method
