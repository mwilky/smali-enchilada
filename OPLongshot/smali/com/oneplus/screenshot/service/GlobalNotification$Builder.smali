.class abstract Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
.super Ljava/lang/Object;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/service/GlobalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Builder"
.end annotation


# instance fields
.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mPreview:Landroid/graphics/Bitmap;

.field protected mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/oneplus/screenshot/service/GlobalNotification;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mResources:Landroid/content/res/Resources;

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {p1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getTicker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getSmallIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getContentViews()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getBigContentViews()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->onBuild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    if-eqz v2, :cond_1

    iput-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_1
    return-object v0
.end method

.method protected abstract getBigContentViews()Landroid/widget/RemoteViews;
.end method

.method protected abstract getContentViews()Landroid/widget/RemoteViews;
.end method

.method protected getSmallIcon()I
    .locals 1

    const v0, 0x7f020027

    return v0
.end method

.method protected getTicker()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBuild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0

    return-void
.end method

.method protected setBigIcon(Landroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    const v1, 0x7f0b001f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f020027

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    return-void
.end method

.method protected setIcon(Landroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    const v1, 0x7f0b0015

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f020027

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    return-void
.end method
