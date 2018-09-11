.class final Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DrawableWrapper"
.end annotation


# instance fields
.field mAlpha:I

.field final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    .line 230
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    .line 233
    iput-object p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    iget v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    .line 235
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 243
    return-void
.end method
