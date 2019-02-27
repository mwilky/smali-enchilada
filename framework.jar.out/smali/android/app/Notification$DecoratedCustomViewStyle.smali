.class public Landroid/app/Notification$DecoratedCustomViewStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8271
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8272
    return-void
.end method

.method private buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$TemplateBindResult;)V
    .locals 4
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "customContent"    # Landroid/widget/RemoteViews;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 8343
    const v0, 0x102033e

    if-eqz p2, :cond_0

    .line 8346
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 8347
    const v1, 0x102000d

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    .line 8348
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 8349
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setReapplyDisallowed()V

    .line 8352
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8353
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8354
    invoke-virtual {p3}, Landroid/app/Notification$TemplateBindResult;->getIconMarginEnd()I

    move-result v3

    add-int/2addr v2, v3

    .line 8355
    .local v2, "endMargin":I
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 8356
    return-void
.end method

.method private makeDecoratedBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    .line 8328
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 8329
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 8330
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 8331
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8332
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 8334
    :cond_1
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 8335
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8336
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$5000(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 8335
    invoke-static {v2, v3, v1}, Landroid/app/Notification$Builder;->access$3100(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8337
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$TemplateBindResult;)V

    .line 8338
    return-object v2
.end method

.method private makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 4

    .line 8306
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 8307
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 8308
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 8309
    .local v0, "headsUpContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8310
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 8312
    :cond_1
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 8313
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8314
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$5000(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 8313
    invoke-static {v2, v3, v1}, Landroid/app/Notification$Builder;->access$3100(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8315
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$TemplateBindResult;)V

    .line 8316
    return-object v2
.end method

.method private makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 8320
    new-instance v0, Landroid/app/Notification$TemplateBindResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 8321
    .local v0, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8322
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$5100(Landroid/app/Notification$Builder;)I

    move-result v2

    .line 8321
    invoke-static {v1, v2, v0}, Landroid/app/Notification$Builder;->access$5200(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 8323
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, p1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$TemplateBindResult;)V

    .line 8324
    return-object v1
.end method


# virtual methods
.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 2
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 8363
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8367
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 8364
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public displayCustomViewInline()Z
    .locals 1

    .line 8278
    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 8294
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 8286
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 8302
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
