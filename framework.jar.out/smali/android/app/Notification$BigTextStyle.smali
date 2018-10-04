.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method static applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p0, p2}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x10201cd

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0, p1, v1}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V

    nop

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v0, "setHasImage"

    invoke-static {p0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    const-string v0, "android.bigText"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getBigText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.text"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v1, v3}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3900(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/app/Notification$BigTextStyle;->getStandardView(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    const-string/jumbo v3, "setImageEndMargin"

    invoke-virtual {v1}, Landroid/app/Notification$TemplateBindResult;->getIconMarginEnd()I

    move-result v4

    const v5, 0x10201cd

    invoke-virtual {v2, v5, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$3000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.text"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v0}, Landroid/app/Notification$Builder;->access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v2, v3}, Landroid/app/Notification$BigTextStyle;->applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$3602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$3702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3600(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$3702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$3602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
