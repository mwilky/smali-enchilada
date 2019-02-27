.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# static fields
.field public static final MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method private static areBitmapsObviouslyDifferent(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_0

    const-string v0, "android.largeIcon.big"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "android.picture"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {p0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification$BigPictureStyle;->areBitmapsObviouslyDifferent(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v1

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    return-object v0
.end method

.method public bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBigPicture()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v4}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iput-object v3, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x102043e

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v2, v4}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iput-object v1, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_2
    const v3, 0x10201cc

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public purgeResources()V
    .locals 2

    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_1
    return-void
.end method

.method public reduceImageSizes(Landroid/content/Context;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    const v2, 0x105012a

    goto :goto_0

    :cond_0
    const v2, 0x1050129

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_1

    const v3, 0x105012c

    goto :goto_1

    :cond_1
    const v3, 0x105012b

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const v2, 0x1050153

    goto :goto_2

    :cond_3
    const v2, 0x1050152

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_4
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_0
    const-string v0, "android.picture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
