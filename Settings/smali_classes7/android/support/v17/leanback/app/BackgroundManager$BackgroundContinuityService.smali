.class Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundContinuityService"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackgroundContinuity"

.field private static sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;


# instance fields
.field private mColor:I

.field private mCount:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastThemeDrawableId:I

.field private mLastThemeDrawableState:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->reset()V

    return-void
.end method

.method public static getInstance()Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;
    .locals 3

    sget-object v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    iget v1, v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    move v0, v1

    sget-object v1, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    return-object v1
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableId:I

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableId:I

    :cond_1
    return-object v0
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public unref()V
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->reset()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unref, count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
