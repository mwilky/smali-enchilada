.class public Landroid/text/style/ImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ImageSpan.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 6

    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v0, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-lez v1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ImageSpan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to loaded content "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ImageSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-object v0
.end method
