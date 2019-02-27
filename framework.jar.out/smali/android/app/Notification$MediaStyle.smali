.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;
    .locals 6

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const v4, 0x109008f

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const v4, 0x1020175

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4800(Landroid/app/Notification$Builder;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4600(Landroid/app/Notification$Builder;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_2

    :cond_2
    :goto_1
    nop

    move v3, p2

    :goto_2
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    if-nez v0, :cond_3

    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-object v2
.end method

.method private getActionColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$4600(Landroid/app/Notification$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method private handleImage(Landroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10202e3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    const v0, 0x102043e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    :cond_0
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .locals 7

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    nop

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v1, v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-gt v0, v1, :cond_1

    return-object v4

    :cond_1
    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v5, 0x1090096

    invoke-static {v3, v5, v2, v4}, Landroid/app/Notification$Builder;->access$4900(Landroid/app/Notification$Builder;IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-lez v0, :cond_2

    const v4, 0x10202fc

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    nop

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$Action;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->getActionColor()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v3}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    return-object v3
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .locals 8

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    const v2, 0x109009a

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/Notification$Builder;->access$4900(Landroid/app/Notification$Builder;IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v3, :cond_0

    nop

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v3, v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-lez v3, :cond_2

    const v4, 0x10202fc

    invoke-virtual {v0, v4}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_2

    if-ge v5, v2, :cond_1

    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->getActionColor()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v2, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const-string/jumbo v1, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-direct {p0, v0}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    const v1, 0x105012f

    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v1, 0x1050147

    :cond_3
    const v4, 0x102033e

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    const-string v0, "android.mediaSession"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1

    const-string v0, "android.compactActions"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method protected hasProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_0
    const-string v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    return-object p0
.end method
